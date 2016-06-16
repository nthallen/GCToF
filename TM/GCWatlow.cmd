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
  : GCWatlow F4 &GCWatlow_F4_PC Profile * {
      if_GCWatlow.Turf("F%d:1\n", $3);
    }
  ;

&GCWatlow_PM <int>
  : GC Spare PM6 Temperature  { $0 = 1; }
  ;

&GCWatlow_F4 <int>
  : GC Column Temperature  { $0 = 1; }
  : GC Spare F4 Temperature 1  { $0 = 2; }
  ;
&GCWatlow_F4_PC <int>
  : Start { $0 = 5; }
  : Suspend { $0 = 6; }
  : Resume { $0 = 3; }
  : Terminate { $0 = 4; }
  ;
