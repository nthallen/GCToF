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
  : GCWatlow F4 Profile &GCWatlow_F4_PC * {
      if_GCWatlow.Turf("F%d:1\n", $4);
    }
  : GCWatlow F4 Profile Start &GCWatlow_F4_FN * {
      if_GCWatlow.Turf("F5:%d\n", $5);
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
  : Suspend { $0 = 6; }
  : Resume { $0 = 3; }
  : Terminate { $0 = 4; }
  ;
&GCWatlow_F4_FN <int>
  : File Number 1 { $0 = 1; }
  : File Number 2 { $0 = 2; }
  : File Number 3 { $0 = 3; }
  ;
