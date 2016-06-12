%{
  typedef struct {
    int channel;
    float value;
  } GCHoriba_Cmd;
%}
%INTERFACE <GCHoriba>

&command
  : Set &GCHoriba_Chan * {
      if_GCHoriba.Turf( "W%d:%.2f\n", $2.channel, $2.value );
    }
  ;
&GCHoriba_Chan <GCHoriba_Cmd>
  : GC Column N2 Flow %f (Enter value in sccm) sccm
    { $0.channel = 1; $0.value = $5; }
  : GC Intake Flow %f (Enter value in sccm) sccm
    { $0.channel = 2; $0.value = $4; }
  : GC Pickup Flow %f (Enter value in sccm) sccm
    { $0.channel = 3; $0.value = $4; }
  : GC Dilution Flow %f (Enter value in sccm) sccm
    { $0.channel = 4; $0.value = $4; }
  : GC Bypass Flow %f (Enter value in sccm) sccm
    { $0.channel = 5; $0.value = $4; }
;
