function pGCToFxdst(varargin);
% pGCToFxdst( [...] );
% nXDS T
h = timeplot({'nX0PumpT','nX0CtrlrT'}, ...
      'nXDS T', ...
      'T', ...
      {'nX0PumpT','nX0CtrlrT'}, ...
      varargin{:} );
