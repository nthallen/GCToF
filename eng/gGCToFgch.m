function fig = gGCToFgch(varargin);
% gGCToFgch(...)
% GC Horiba
ffig = ne_group(varargin,'GC Horiba','pGCToFgchcn','pGCToFgchs','pGCToFgchgci','pGCToFgchpf','pGCToFgchgcd','pGCToFgchgcb','pGCToFgchstale');
if nargout > 0 fig = ffig; end
