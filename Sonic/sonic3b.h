#ifndef SONIC3B_H_INCLUDED
#define SONIC3B_H_INCLUDED

typedef struct {
  float U;
  float V;
  float W;
  float C;
  unsigned short Status;
  unsigned char N;
} Sonic3BData_t;

/* Status word bit definitions are defined in section 8.4.2: Diagnostic Word
 * We have added the MISSED_REC bit.
 */
#define CSAT3B_MISSED_REC 0x8000
#define CSAT3B_STATUS 0x01FF

#ifdef __cplusplus
extern "C" {
#endif
  extern void sonic_init_options( int argc, char **argv );
#ifdef __cplusplus
};
#endif

#ifdef __cplusplus

#include <termios.h>
#include "SerSelector.h"

class Sonic3B_TM : public TM_Selectee {
  public:
    Sonic3B_TM(Sonic3BData_t *data);
    ~Sonic3B_TM();
    int ProcessData(int flag);
  private:
    Sonic3BData_t *SonicData;
    void clear_TM();
    void finalize_avg();
};

class Sonic3B : public Ser_Sel {
  public:
    Sonic3B(Sonic3BData_t *data);
    ~Sonic3B();
    void Sonic_init(const char *port);
    int ProcessData(int flag);
  private:
    static const unsigned int nb_rec = 50;
    static const char fwd = '\n';
    void clear_TM();
    void finalize_avg();
    unsigned short signature(unsigned char* buf, int swath);
    Sonic3BData_t *SonicData;
    termios termios_m;
    unsigned short RecCtr;
};

#endif

#endif
