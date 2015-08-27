%INTERFACE <TwisTorr>
&command
  : TwisTorr &TTdev Start * { if_TwisTorr.Turf("W:%d:%d:1\n", 0, $2); }
  : TwisTorr &TTdev Stop  * { if_TwisTorr.Turf("W:%d:%d:0\n", 0, $2); }
  ;
&TTdev <int>
  : Pump { $0 = 0; }
  ;
