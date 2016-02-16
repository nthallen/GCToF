/* gpsd_client.h */
#ifndef GPSD_CLIENT_H_INCLUDED
#define GPSD_CLIENT_H_INCLUDED

#include "gpsd_tm.h"

  #ifdef __cplusplus
    extern "C" {
  #endif
      extern void gpsd_init_options( int argc, char **argv);
  #ifdef __cplusplus
    };
  #endif

  #ifdef __cplusplus
    #include "SerSelector.h"

    class gpsd_TM : public TM_Selectee {
      public:
        gpsd_TM();
        ~gpsd_TM();
        void init(const char *name, void *data, unsigned short size); // hook to save TM_data
        int ProcessData(int flag); // hook to clear status
      private:
        struct gpsd_data_t *TM_data;
    };
    
    class gpsd_client : public Ser_Sel {
      public:
        gpsd_client(gpsd_data_t *data);
        ~gpsd_client();
        int ProcessData(int flag);
        Timeout *GetTimeout();
      private:
        static const unsigned tm_gflag = 0;
        static const unsigned cmd_gflag = 1;
        gpsd_data_t *TM_data;
        Timeout TO;
    };
    
    class gpsd_cmd : public Cmd_Selectee {
      public:
        gpsd_cmd();
        ~gpsd_cmd();
        int ProcessData(int flag); // set cmd_gflag instead of quitting immediately and clear read flags
    };
  #endif // __cplusplus
#endif
