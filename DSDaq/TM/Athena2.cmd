%{
  #ifdef SERVER
    #include "address.h"

    static unsigned short MFC_Scale2( double val, double scale ) {
      val = 5*val/scale;
      if ( val > 5 ) val = 5;
      else if ( val < -1 ) val = -1;
      // return (unsigned short)(4096*(val+10)/20);
      return (unsigned short)(4096*val/10);
    }
  #endif
%}
%INTERFACE <Athena2:/net/GCAthena2/dev/huarp/GCToF/AthenaII>

&command
  : Set Spare 4 Flow %f (Enter SCCM) sccm *
      { if_Athena2.Turf( "W%X:%X\n", MFC_Sp4_SP_Address, MFC_Scale2($5, 500) ); }
  : Set Spare 5 Flow %f (Enter SLM) slm *
      { if_Athena2.Turf( "W%X:%X\n", MFC_Sp5_SP_Address, MFC_Scale2($5,5) ); }
  : &A2_Cmd &on_off * { if_Athena2.Turf( "W%X:%X\n", $1, $2 ); }
  ;
&A2_Cmd <unsigned short>
  : GC Sample Dilution { $0 = 0x4000; }
  : High Sensitivity Mode { $0 = 0x4001; }
  : Normal GC Mode { $0 = 0x4002; }
  : Column N2 Pickup Flow Valve { $0 = 0x4003; }
  : GC Tracer Flow to GC { $0 = 0x4004; }
  : Bypass Pump { $0 = 0x4007; }
  : CO2 Valve { $0 = 0x4008; }
  : GC Tracer Flow to FT { $0 = 0x4009; }
  : Spare valve A2_1 { $0 = 0x400A; }
  : Spare valve A2_2 { $0 = 0x400B; }
  : Spare valve A2_3 { $0 = 0x400C; }
  ;
