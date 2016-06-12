%{
  #include <math.h>
%}

%INTERFACE <GCWatlow>

&command
  : GCWatlow PM Set &GCWatlow_PM %f (Enter Temperature in Celcius) * {
      if_GCWatlow.Turf("S%d:%.1f\n", $4, $5);
    }
  : GCWatlow F4 Set &GCWatlow_F4 %f (Enter Temperature in Celcius) * {
      if_GCWatlow.Turf("F%d:%d\n", $4, (int)floor($5*10 + 0.5));
    }
  : GCWatlow F4 Resume Profile * {
      if_GCWatlow.Turf("F3:1\n");
    }
  : GCWatlow F4 Terminate Profile * {
      if_GCWatlow.Turf("F4:1\n");
    }
  ;

&GCWatlow_PM <int>
  : GC Spare PM6 Temperature 1  { $0 = 1; }
  : GC Spare PM6 Temperature 2  { $0 = 2; }
  ;

&GCWatlow_F4 <int>
  : GC Column Temperature  { $0 = 1; }
  : GC Spare F4 Temperature 1  { $0 = 2; }
  ;
