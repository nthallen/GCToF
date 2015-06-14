%INTERFACE <TwisTorr>
&command
  : TwisTorr &TTdev Start * { if_TwisTorr.Turf("W:%d:%d:1\n", $2, 0); }
  : TwisTorr &TTdev Stop  * { if_TwisTorr.Turf("W:%d:%d:0\n", $2, 0); }
  ;
&TTdev <int>
  : Pump { $0 = 0; }
  ;
