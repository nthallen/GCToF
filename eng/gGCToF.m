function fig = gGCToF(varargin);
% gGCToF(...)
% gpsd
ffig = ne_group(varargin,'gpsd','pGCToFmode','pGCToFtime','pGCToFlat','pGCToFlon','pGCToFalt','pGCToFtrack','pGCToFspeed','pGCToFclimb','pGCToFsats','pGCToFstale');
if nargout > 0 fig = ffig; end
