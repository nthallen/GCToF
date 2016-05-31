function fig = gGCToFgch(varargin);
% gGCToFgch(...)
% GC Horiba
ffig = ne_group(varargin,'GC Horiba','pGCToFgchcn','pGCToFgchgci','pGCToFgchpf','pGCToFgchgcd','pGCToFgchs','pGCToFgchstale');
if nargout > 0 fig = ffig; end
