function pGCToFfvs(varargin);
% pGCToFfvs( [...] );
% Fly Valve Status
h = ne_dstat({
  'Fly_Op_RB', 'Herc_DS_E', 2; ...
	'Fly_Cl_RB', 'Herc_DS_E', 4; ...
	'Fly_Rdy_RB', 'Herc_DS_E', 5; ...
	'Fly_Alrm_RB', 'Herc_DS_E', 7; ...
	'Bfly_Mode', 'Herc_DS_D', 4; ...
	'Fly_Hold', 'Herc_DS_D', 2; ...
	'Fly_Close', 'Herc_DS_D', 3; ...
	'Fly_Open', 'Herc_DS_D', 5 }, 'Status', varargin{:} );
