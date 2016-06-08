function pGCToFgcs(varargin);
% pGCToFgcs( [...] );
% Gas Cmds Status
h = ne_dstat({
  'Bypass_cal', 'Herc_DS_A', 0; ...
	'Scrub_cal', 'Herc_DS_A', 1; ...
	'H2O2_cal', 'Herc_DS_A', 2; ...
	'Oacid_cal', 'Herc_DS_A', 3; ...
	'MHP_cal', 'Herc_DS_A', 4; ...
	'Spare1_cal', 'Herc_DS_A', 5; ...
	'Spare2_cal', 'Herc_DS_A', 6; ...
	'Spare2_cal', 'Herc_DS_A', 7; ...
	'AmbZero', 'A1_DS_A', 0; ...
	'HotCal1', 'A1_DS_A', 2; ...
	'HotCal2', 'A1_DS_A', 4; ...
	'ColdCal1', 'A1_DS_A', 6; ...
	'ColdCal2', 'A1_DS_A', 1 }, 'Status', varargin{:} );
