/* Agilent.cc
 * Driver for Agilent TwisTorr Turbo Pump
 */
#include "Agilent.h"
#include "oui.h"
#include "nortlib.h"

char *agilent_path;

/** Maps command drive numbers in the range 0 to N_TWISTORR_DRIVES-1
 *  to RS485 device numbers which should match the device's configuration.
 */
const unsigned TwisTorr::TT_DevNo[N_TWISTORR_DRIVES] = {1};

void enqueue_polls(TwisTorr *TT, TwisTorr_t *TT_TM) {
  for (unsigned drv = 0; drv < N_TWISTORR_DRIVES; ++drv) {
    unsigned devno = TwisTorr::TT_DevNo[drv];
    TT->enqueue_poll_float(devno, 200, &(TT_TM->drive[drv].pump_current));
    TT->enqueue_poll_float(devno, 201, &(TT_TM->drive[drv].pump_voltage));
    TT->enqueue_poll_float(devno, 202, &(TT_TM->drive[drv].pump_power));
    TT->enqueue_poll_float(devno, 203, &(TT_TM->drive[drv].driving_freq));
    TT->enqueue_poll_float(devno, 204, &(TT_TM->drive[drv].pump_temperature));
    TT->enqueue_poll_float(devno, 205, &(TT_TM->drive[drv].pump_status));
    TT->enqueue_poll_float(devno, 210, &(TT_TM->drive[drv].rotation_speed));
    TT->enqueue_poll_bit(devno, 0, &(TT_TM->drive[drv].flags), 0x01);
    TT->enqueue_poll_bit(devno, 1, &(TT_TM->drive[drv].flags), 0x02);
    TT->enqueue_poll_bit(devno, 106, &(TT_TM->drive[drv].flags), 0x04);
    TT->enqueue_poll_bit(devno, 107, &(TT_TM->drive[drv].flags), 0x08);
    TT->enqueue_poll_bit(devno, 122, &(TT_TM->drive[drv].flags), 0x10);
    TT->enqueue_poll_bit(devno, 123, &(TT_TM->drive[drv].flags), 0x20);
  }
}

int main(int argc, char **argv) {
  oui_init_options(argc, argv);
  nl_error( 0, "Starting V0.1" );
  { Selector Loop;
    TwisTorr_t TT_TM;
    TwisTorr TT(agilent_path);
    enqueue_polls(&TT, &TT_TM);
    TM_Selectee TM("TwisTorr", &TT_TM, sizeof(TT_TM));
    TwisTorr_cmd Cmd(&TT);
    Loop.add_child(&TT);
    Loop.add_child(&TM);
    Loop.add_child(&Cmd);
    nl_error(DBG_MSG(1), "Entering event_loop()");
    Loop.event_loop();
  }
  nl_error( 0, "Terminating" );
}
