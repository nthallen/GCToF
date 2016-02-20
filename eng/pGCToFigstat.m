function pGCToFigstat(varargin);
% pGCToFigstat( [...] );
% Ion Gauge Stat
h = ne_dstat({
  'IG_PRESENT', 'IG_stat', 0; ...
	'IG_HEX_P_FRESH', 'IG_stat', 1; ...
	'IG_TOF_P_FRESH', 'IG_stat', 2 }, 'Stat', varargin{:} );
