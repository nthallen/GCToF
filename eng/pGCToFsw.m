function pGCToFsw(varargin);
% pGCToFsw( [...] );
% Sonic 1 Winds
h = timeplot({'Sonic1_U','Sonic1_V','Sonic1_W'}, ...
      'Sonic 1 Winds', ...
      'Winds', ...
      {'Sonic1\_U','Sonic1\_V','Sonic1\_W'}, ...
      varargin{:} );
