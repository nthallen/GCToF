function fig = gGCToFdsd(varargin);
% gGCToFdsd(...)
% DS Daq
ffig = ne_group(varargin,'DS Daq','pGCToFdsds','pGCToFdsdstatus');
if nargout > 0 fig = ffig; end
