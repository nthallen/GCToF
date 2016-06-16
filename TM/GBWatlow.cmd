%{
  #include <math.h>
%}

%INTERFACE <GBWatlow>

&command
  : GBWatlow PM Set &GBWatlow_PM %f (Enter Temperature in Celcius) * {
      if_GBWatlow.Turf("S%d:%.1f\n", $4, $5);
    }
  ;

&GBWatlow_PM <int>
  : GB Hot Cal Temperature  { $0 = 1; }
  ;
