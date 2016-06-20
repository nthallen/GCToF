function fig = gGCToFgpsd_err(varargin);
% gGCToFgpsd_err(...)
% gpsd err
ffig = ne_group(varargin,'gpsd err','pGCToFgpsd_errtime','pGCToFgpsd_errdist','pGCToFgpsd_errtrack','pGCToFgpsd_errspeed','pGCToFgpsd_errclimb');
if nargout > 0 fig = ffig; end
