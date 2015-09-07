function pGCToFtt3_errorserrors(varargin);
% pGCToFtt3_errorserrors( [...] );
% TT3 Errors errors
h = ne_dstat({
  'TT3_NoConn', 'TT3_ErrStat', 0; ...
	'TT3_PumpOT', 'TT3_ErrStat', 1; ...
	'TT3_CtrlOT', 'TT3_ErrStat', 2; ...
	'TT3_PwrFail', 'TT3_ErrStat', 3; ...
	'TT3_AuxFail', 'TT3_ErrStat', 4; ...
	'TT3_Short', 'TT3_ErrStat', 6; ...
	'TT3_OverLoad', 'TT3_ErrStat', 7; ...
	'TT3_LowBatt', 'TT3_ErrStat', 9; ...
	'TT3_BadTime', 'TT3_ErrStat', 10 }, 'errors', varargin{:} );
