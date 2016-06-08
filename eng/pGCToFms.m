function pGCToFms(varargin);
% pGCToFms( [...] );
% Misc Status
h = ne_dstat({
  'HV_Pwr_S', 'Herc_DS_D', 6; ...
	'Oct_Pwr_S', 'Herc_DS_D', 7; ...
	'Relay_28_RB', 'Herc_DS_E', 1; ...
	'TPSP_RB', 'Herc_DS_E', 0; ...
	'FTSP_RB', 'Herc_DS_E', 3 }, 'Status', varargin{:} );