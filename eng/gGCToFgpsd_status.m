function fig = gGCToFgpsd_status(varargin);
% gGCToFgpsd_status(...)
% gpsd status
ffig = ne_group(varargin,'gpsd status','pGCToFgpsd_statusdata','pGCToFgpsd_statuserror');
if nargout > 0 fig = ffig; end
