%{
  #ifdef SERVER
    #include "address.h"

    static unsigned short MFC_Scale( double val, double scale ) {
      val = 5*val/scale;
      if ( val > 5 ) val = 5;
      else if ( val < -1 ) val = -1;
      // return (unsigned short)(4096*(val+10)/20);
      return (unsigned short)(4096*val/10);
    }
  #endif
%}
%INTERFACE <Athena1:/net/GCAthena1/dev/huarp/GCToF/AthenaII>

&command
  : Set Spare 2 Flow %f (Enter SCCM) sccm *
      { if_Athena1.Turf( "W%X:%X\n", MFC_Sp2_SP_Address, MFC_Scale($5, 500) ); }
  : Set Spare 1 Flow %f (Enter SLM) slm *
      { if_Athena1.Turf( "W%X:%X\n", MFC_Sp1_SP_Address, MFC_Scale($5,5) ); }
  : Set Spare 3 Flow %f (Enter SLM) slm *
      { if_Athena1.Turf( "W%X:%X\n", MFC_Sp3_SP_Address, MFC_Scale($5,5) ); }
  : Set Ambient Zero Flow %f (Enter SCCM) sccm *
      { if_Athena1.Turf( "W%X:%X\n", MFC_AMBZ_SP_Address, MFC_Scale($5, 1000) ); }
  : &AII_Cmd &on_off * { if_Athena1.Turf( "W%X:%X\n", $1, $2 ); }
  ;
&AII_Cmd <unsigned short>
  : Ambient zero valve { $0 = 0x4000; }
  : Cold Cal 1 { $0 = 0x4006; }
  : Cold Cal 2 { $0 = 0x4001; }
  : Hot Cal valve 1 { $0 = 0x4002; }
  : Hot Cal valve 2 { $0 = 0x4004; }
  : Spare valve A1_3 { $0 = 0x4003; }
  : Spare valve A1_5 { $0 = 0x4005; }
  : Spare valve A1_7 { $0 = 0x4007; }
  ;

&on_off <unsigned short>
  : On { $0 = 1; }
  : Off { $0 = 0; }
  ;
