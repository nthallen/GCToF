%INTERFACE <UPS>

&command
  : UPS Test for %d (Enter time in minutes) minutes *
      { if_UPS.Turf("T%d\n", $4); }
  : UPS &shutdown * { if_UPS.Turf("S%d\n", $2); }
  : UPS &shutdown and Restore after %d (Enter time in minutes) minutes *
      { if_UPS.Turf("%S%dR%d\n", $2, $6); }
  : UPS Cancel Shutdown * { if_UPS.Turf("CS\n"); }
  : UPS Cancel Test * { if_UPS.Turf("CT\n"); }
  : UPS Socket 1 On * { if_UPS.Turf("KN\n"); }
  : UPS Socket 1 Off * { if_UPS.Turf("KF\n"); }
  : UPS Query Protocol ID * { if_UPS.Turf("Q0\n"); }
  : UPS Query Model * { if_UPS.Turf("Q1\n"); }
  : UPS Query UPS ID * { if_UPS.Turf("Q2\n"); }
  : UPS Query Main CPU Firmware Version * { if_UPS.Turf("Q3\n"); }
  : UPS Query Bypass Voltage Range * { if_UPS.Turf("Q4\n"); }
  : UPS Query Bypass Frequency Range * { if_UPS.Turf("Q5\n"); }
  : UPS Query Rating Information * { if_UPS.Turf("Q6\n"); }
  : UPS Query Setting Flag Status * { if_UPS.Turf("Q7\n"); }
  : UPS Query High Efficiency Mode Voltage Range * { if_UPS.Turf("Q8\n"); }
  : UPS Query Fault status * { if_UPS.Turf("Q9\n"); }
  : UPS Quit * { if_UPS.Turf("X\n"); }
  ;

&shutdown <int>
  : Shutdown in %d (Enter time in minutes) minutes { $0 = $3; }
  ;

