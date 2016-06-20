function fig = gGCToFgpsd_toff(varargin);
% gGCToFgpsd_toff(...)
% gpsd toff
ffig = ne_group(varargin,'gpsd toff','pGCToFgpsd_toffsec','pGCToFgpsd_toffnsec');
if nargout > 0 fig = ffig; end
