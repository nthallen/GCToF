/* sonic.cc
   Driver for CSAT3 Three Dimensional Sonic Anemometer
*/
#include <errno.h>
#include <string.h>
#include <ctype.h>
#include "sonic.h"
#include "nortlib.h"
#include "oui.h"

static const char *device_name = "/dev/ser2";
static const char *tm_recv_name = "Sonic3BData";

void sonic_init_options( int argc, char **argv) {
  int c;

  optind = OPTIND_RESET; /* start from the beginning */
  opterr = 0; /* disable default error message */
  while ((c = getopt(argc, argv, opt_string)) != -1) {
    switch (c) {
      case 'p':
        device_name = optarg;
        break;
      case 't':
        tm_recv_name = optarg;
        break;
      case '?':
        nl_error(3, "Unrecognized Option -%c", optopt);
    }
  }
}

Sonic3B_TM::Sonic3B_TM(Sonic3BData_t *data)
    : TM_Selectee(tm_recv_name, data, sizeof(Sonic3BData_t)) {
  SonicData = data;
  clear_TM();
}

Sonic3B_TM::~Sonic3B_TM() {}

void Sonic3B_TM::clear_TM() {
  SonicData.U = 0.;
  SonicData.V = 0.;
  SonicData.W = 0.;
  SonicData.C = 0.;
  SonicData.N = 0;
  SonicData.Status = 0;
}

void Sonic3B_TM::finalize_avg( void ) {
  if ( SonicData.N ) {
    SonicData.U /= SonicData.N;
    SonicData.V /= SonicData.N;
    SonicData.W /= SonicData.N;
    SonicData.C /= SonicData.N;
  }
}

int Sonic3B_TM::ProcessData(int flag) {
  if (flag & Selector::Sel_Write) {
    finalize_avg();
    Col_send(TMid);
    clear_TM();
  }
  return 0;
}

Sonic3B::Sonic3B(Sonic3BData_t *data) : Ser_Sel() {
  SonicData = data;
}

Sonic3B::~Sonic3B() {}

void Sonic3B::Sonic_init(const char *path) {
  init(path, O_RDONLY | O_NONBLOCK, nb_rec*3);
  setup(115200, 8, 'n', 1, nb_rec, 0);
  if (tcgetattr(fd, &termios_m)) {
    nl_error(2, "Error from tcgetattr: %s", strerror(errno));
  }
  termios_m.c_cc[VMIN] = nb_rec;
  termios_m.c_cc[VTIME] = 0;
  termios_m.c_cc[VFWD] = fwd;
  if (tcsetattr(fd, TCSANOW, &termios_m)) {
    nl_error(2, "Error from tcsetattr: %s", strerror(errno));
  }
  flush_input();
}

// signature(), signature algorithm.
// Standard signature is initialized with a seed of 0xaaaa.
// Returns signature.
unsigned short Sonic3B::signature(unsigned char* buf, int swath) {
  unsigned short seed = 0xaaaa;
  unsigned char msb, lsb;
  unsigned char b;
  int i;
  msb = seed >> 8;
  lsb = seed;
  for( i = 0; i < swath; i++ ) {
    b = (lsb << 1) + msb + *buf++;
    if( lsb & 0x80 ) b++;
    msb = lsb;
    lsb = b;
  }
  return (unsigned short)((msb << 8) + lsb);
}

int Sonic3B::ProcessData(int flag) {
  if (flag & Selector::Sel_Read) {
    if (fillbuf()) return 1;
    cp = 0;
    while (nc > 0) {
      float Ux, Uy, Uz, Ts;
      int DW, RC;
      unsigned short sig;
      while (cp < nc && isspace(buf[cp]))
        ++cp;
      unsigned cp0 = cp;
      if (not_float(Ux) || not_str(",",1) ||
          not_float(Uy) || not_str(",",1) ||
          not_float(Uz) || not_str(",",1) ||
          not_float(Ts) || not_str(",",1) ||
          not_int(DW) || not_str(",",1) ||
          not_int(RC)) {
        if (cp >= nc) {
          return 0; // At end of input, wait for more
        } else {
          // Not at end of input, so see if
          // we can discard the bad frame and process
          // the next one
          cp = cp0;
          if (not_found(fwd)) {
            // The rest of input was already discarded
            return 0;
          } else {
            consume(cp);
          }
        }
        continue;
      }
      unsigned cp1 = cp;
      if (not_str(",",1) || not_hex(sig)) {
        if (cp >= nc) {
          return 0;
        } else {
          cp = 0;
          if (not_found(fwd)) {
            return 0;
          } else {
            consume(cp);
          }
        }
        continue;
      } else {
        // Check the signature
        if (signature(&buf[cp0],cp1-cp0) != sig) {
          report_err("Invalid Signature");
        } else {
          SonicData.U += Ux;
          SonicData.V += Uy;
          SonicData.W += Uz;
          SonicData.C += Ts;
          SonicData.Status |= DW;
          ++SonicData.N;
          if (RecCtr != RC) {
            SonicData.Status |= CSAT3B_MISSED_REC;
          }
          RecCtr = (RC+1) & 63;
        }
        // consume the whole record in either case
        consume(cp);
      }
    }
  }
  return 0;
}

int main( int argc, char **argv ) {
  oui_init_options( argc, argv );
  { Selector Sel;
    Sonic3BData_t data;
    Sonic3B Serial(&data);
    TM_Selectee TM(tm_recv_name, &data, sizeof(data));
    Cmd_Selectee Cmd;
    Sel.add_child(&Serial);
    Sel.add_child(&TM);
    Sel.add_child(&Cmd);
    nl_error(0, "Started");
    Sel.event_loop();
    nl_error(0, "Terminating");
  }
  return 0;
}
