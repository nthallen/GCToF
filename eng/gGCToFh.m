function fig = gGCToFh(varargin);
% gGCToFh(...)
% Horiba
ffig = ne_group(varargin,'Horiba','pGCToFhd','pGCToFhis','pGCToFhf','pGCToFhp','pGCToFhs','pGCToFhstale');
if nargout > 0 fig = ffig; end
