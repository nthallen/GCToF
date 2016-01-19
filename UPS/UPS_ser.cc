#include <fcntl.h>
#include <errno.h>
#include <string.h>
#include "UPS.h"
#include "nortlib.h"

UPS_ser::UPS_ser(const char *path, UPSData_t *TMptr) :
    Ser_Sel(path, O_RDWR|O_NONBLOCK, reply_max*2) {
  if (path == 0) {
    nl_error(3, "No path specified for UPS device");
  } else {
    nl_error(MSG_DBG(1), "Opened %s for UPS device", path);
  }
  UPS_TMp = TT_TM;
  pending = 0;
  cur_poll = polls.begin();
  nl_error(MSG_DBG(1), "UPS_ser ready for setup");
  setup(2400, 8, 'n', 1, reply_max, 1);
  nl_error(MSG_DBG(1), "UPS_ser ready for flush");
  flush_input();
  flags = Selector::Sel_Read | Selector::gflag(tm_gflag) |
          Selector::gflag(cmd_gflag) | Selector::Sel_Timeout;
  nl_error(MSG_DBG(1), "UPS_ser done flushing, ready to tcgetattr");
  if (tcgetattr(fd, &termios_s)) {
    nl_error(2, "Error from tcgetattr: %s", strerror(errno));
  }
}


UPS_ser::~UPS_ser() {
  if (pending && !pending->persistent)
    delete(pending);
  while (polls.size() > 0) {
    delete(polls[0]);
    polls.pop_front();
  }
  while (cmd_free.size() > 0) {
    delete(cmd_free.front());
    cmd_free.pop_front();
  }
  while (cmds.size() > 0) {
    delete(cmds[0]);
    cmds.pop_front();
  }
}

/**
 * Adapted from SunTrack. Adjusts the VMIN termios value
 * based on the specific command. This version is incomplete.
 * It adjusts for the request size so we can skip over the RS485 echo,
 * but it does not anticipate any more than the minimal response
 * of 6 characters. We could add command-specific response size
 * as noted in the comments. We could also adjust the VTIME
 * parameter, but it may be redundant, since we have the overriding
 * Selector timeout working for us.
 */
void UPS_ser::update_termios() {
  int cur_min = pending->rep_min - nc;
  if (cur_min < 1) cur_min = 1;
  if (cur_min != termios_s.c_cc[VMIN]) {
    termios_s.c_cc[VMIN] = cur_min;
    if (tcsetattr(fd, TCSANOW, &termios_s)) {
      nl_error(2, "Error from tcsetattr: %s", strerror(errno));
    }
  }
}

/**
 * @return NULL on error.
 */
command_request *UPS_ser::new_command_req(const char *cmdquery,
        UPS_parser parser_in, unsigned reply_min) {
  command_request *cr;
  if (cmd_free.empty()) {
    nl_error(MSG_DBG(2), "new_command_req() via new");
    cr = new command_request;
    if (cr == 0)
      nl_error(3, "Out of memory in new_command_req()");
    return 0;
  } else {
    nl_error(MSG_DBG(2), "new_command_req() via cmd_free");
    cr = cmd_free[0];
    cmd_free.pop_front();
  }
  if (cr->init(cmdquery, parser_in, reply_min)) {
    free_command(cr);
    return 0;
  }
  return cr;
}

void UPS_ser::enqueue_command(command_request *creq) {
  creq->active = true;
  cmds.push_back(creq);
  Stor->set_gflag(cmd_gflag);
}

void UPS_ser::enqueue_command(const char *cmdquery) {
  command_request *cr =
    new_command_request(cmdquery, &parse_cmd, 5);
  if (cr == 0) return;
  enqueue_command(cr);
}

void UPS_ser::enqueue_query(const char *cmdquery, unsigned reply_min) {
  command_request *cr =
    new_command_request(cmdquery, &parse_query, reply_min);
  if (cr == 0) return;
  enqueue_command(cr);
}

/**
 * Could be eliminated.
 */
void UPS_ser::enqueue_poll(command_request *creq) {
  creq->active = true;
  creq->persistent = true;
  polls.push_back(creq);
}

void UPS_ser::enqueue_poll(const char *cmdquery, UPS_parser parser_in,
        unsigned reply_min) {
  command_request *cr =
    new_command_request(cmdquery, parser_in, reply_min);
  if (cr == 0) return;
  enqueue_poll(cr);
}

void UPS_ser::free_command(command_request *creq) {
  creq->active = false;
  if (!creq->persistent) {
    cmd_free.push_back(creq);
  }
}

void UPS_ser::enqueue_polls() {
  enqueue_poll("QMOD", &UPS_ser::parse_QMOD, 3);
  enqueue_poll("QGS", &UPS_ser::parse_QGS, 76);
  enqueue_poll("QWS", &UPS_ser::parse_QWS, 66);
  enqueue_poll("QBV", &UPS_ser::parse_QBV, 21);
  enqueue_poll("QSK1", &UPS_ser::parse_QSK1, 3);
}

Timeout *UPS_ser::GetTimeout() {
  return pending ? &TO : 0;
}

/**
 * Can be triggered due to:
 *   Input data ready from UPS
 *   Timeout waiting for data from UPS
 *   New command ready to be transmitted (gflag(1))
 *   Time to reissue periodic poll commands (gflag(0))
 */
int UPS_ser::ProcessData(int flag) {
  if (flag & Selector::gflag(0)) {
    if (cur_poll == polls.end())
      cur_poll = polls.begin();
    /* else complain? */
  }
  if (flag & (Selector::Sel_Read | Selector::Sel_Timeout)) {
    fillbuf();
    cp = 0;
    if (pending) {
      if ((this->(*pending->parser()))(pending)) { // returns true if not done
        if (TO->Expired()) {
          report_err("Timeout on echo from UPS request: %s",
            pending->ascii_escape());
        } else {
          update_termios();
          return 0;
        }
      }
      free_command(pending);
      pending = 0;
      TO.Clear();
      consume(nc);
    } else {
      report_err("Unexpected data from UPS");
      consume(nc);
    }
  }
  while (!pending && !cmds.empty()) {
    command_request *cr = cmds[0];
    cmds.pop_front();
    if (submit_req(cr)) break;
  }
  while (!pending && cur_poll != polls.end()) {
    if (submit_req(*cur_poll++)) break;
  }
  return 0;
}

/**
 * Issues the specified command to the serial device
 * @return true if command was submitted
 */
bool UPS_ser::submit_req(command_request *req) {
  pending = req;
  if (req->write(fd))
    report_err("Write error");
  TO.Set(0, 250); // May well need to extend this, particularly for longer queries
  update_termios();
  return true;
}
