function fig = gGCToFhk(varargin);
% gGCToFhk(...)
% HK
ffig = ne_group(varargin,'HK','pGCToFhkcpu','pGCToFhkd','pGCToFhkfreemem','pGCToFhksws');
if nargout > 0 fig = ffig; end
