%{
  typedef struct {
    int channel;
    float value;
  } GBHoriba_Cmd;
%}
%INTERFACE <GBHoriba>

&command
  : Set &GBHoriba_Chan * {
      if_GBHoriba.Turf( "W%d:%.2f\n", $2.channel, $2.value );
    }
  ;
&GBHoriba_Chan <GBHoriba_Cmd>
  : FT Reagent Flow %f (Enter value in sccm) sccm
    { $0.channel = 1; $0.value = $4; }
  : FT Ion Source Dilution Flow %f (Enter value in sccm) sccm
    { $0.channel = 2; $0.value = $6; }
  : FT Dilution Flow %f (Enter value in sccm) sccm
    { $0.channel = 3; $0.value = $4; }
;
