#ifndef UPS_H_INCLUDED
#define UPS_H_INCLUDED
  #include <termios.h>
  #include <stdint.h>
  extern char *device_path;
  #ifdef __cplusplus
    extern "C" {
  #endif
      extern void ups_init_options( int argc, char **argv);
  #ifdef __cplusplus
    };
  #endif

  typedef struct __attribute__((__packed__)) {
    uint8_t QMOD;
    uint16_t QGS_V_in;
    uint16_t QGS_F_in;
    uint16_t QGS_V_out;
    uint16_t QGS_F_out;
    uint16_t QGS_I_out;
    uint8_t QGS_LoadPct;
    uint16_t QGS_VBusP;
    uint16_t QGS_VBusN;
    uint16_t QGS_VBatP;
    uint16_t QGS_VBatN;
    uint16_t QGS_Tmax; // assume positive for now
    uint16_t QGS_Status;
    uint16_t QWS;
    uint16_t QBV_Vbat;
    uint8_t QBV_Piece;
    uint8_t QBV_Group;
    uint8_t QBV_Capacity;
    uint8_t QBV_Remain_Time;
  } UPS_TM_t;

  #ifdef __cplusplus
    #include "SerSelector.h"
    #include <queue>
    #include <deque>

    class UPS_ser;
    class command_request;
    typedef int (UPS_ser::*UPS_parser)(command_request *cr);

    class command_request {
      public:
        command_request();
        bool init(const char *cmdquery, UPS_parser parser_in,
          unsigned reply_min);
        const char *ascii_escape();
        int write(int fd);
        static const unsigned int max_cmd_bytes = 20;
        uint8_t req_buf[max_cmd_bytes];
        unsigned rep_min;
        bool persistent;
        bool active;
        UPS_parser parser;
      private:
        unsigned req_sz;
    };
    
    class UPS_ser : public Ser_Sel {
      public:
        UPS_ser(const char *path, UPS_TM_t *UPS_TM);
        ~UPS_ser();
        command_request *new_command_req(const char *cmdquery,
              UPS_parser parser_in, unsigned reply_min);
        void enqueue_polls();
        void enqueue_command(command_request *);
        void enqueue_command(const char *cmdquery);
        void enqueue_query(const char *cmdquery, unsigned reply_min);
        void enqueue_poll(command_request *);
        void enqueue_poll(const char *cmdquery, UPS_parser parser_in,
              unsigned reply_min);
        void free_command(command_request *);
        int ProcessData(int flag);
        int parse_QMOD(command_request *cr);
        int parse_QGS(command_request *cr);
        int parse_QWS(command_request *cr);
        int parse_QBV(command_request *cr);
        int parse_QSK1(command_request *cr);
        int parse_cmd(command_request *cr);
        int parse_query(command_request *cr);
        Timeout *GetTimeout();
        bool submit_req(command_request *req);
      private:
        void update_termios();
        int not_bin(uint16_t &word, int nbits);
        int not_fixed_1( unsigned int &val );
        int out_of_range(int val, const char *desc, int low, int high);
        static const unsigned tm_gflag = 0;
        static const unsigned cmd_gflag = 1;
        static const int reply_max = 80;
        UPS_TM_t *UPS_TMp;
        std::deque<command_request *> cmds;
        std::deque<command_request *> cmd_free;
        std::deque<command_request *> polls;
        std::deque<command_request *>::const_iterator cur_poll;
        command_request *pending;
        termios termios_s;
        Timeout TO;
    };
    
    class UPS_cmd : public Ser_Sel {
      public:
        UPS_cmd(UPS_ser *UPS);
        ~UPS_cmd();
        int ProcessData(int flag);
      private:
        UPS_ser *UPS;
    };

  #endif // __cplusplus
#endif // UPS_H_INCLUDED
