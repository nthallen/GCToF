function pGCToFtteerrors(varargin);
% pGCToFtteerrors( [...] );
% TT1 Errors errors
h = ne_dstat({
  'TT1_NoConn', 'TT1_ErrStat', 0; ...
	'TT1_PumpOT', 'TT1_ErrStat', 1; ...
	'TT1_CtrlOT', 'TT1_ErrStat', 2; ...
	'TT1_PwrFail', 'TT1_ErrStat', 3; ...
	'TT1_AuxFail', 'TT1_ErrStat', 4; ...
	'TT1_OverV', 'TT1_ErrStat', 5; ...
	'TT1_Short', 'TT1_ErrStat', 6; ...
	'TT1_OverLoad', 'TT1_ErrStat', 7; ...
	'TT1_LowBatt', 'TT1_ErrStat', 9; ...
	'TT1_BadTime', 'TT1_ErrStat', 10 }, 'errors', varargin{:} );
