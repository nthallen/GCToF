function pGCToFzenows(varargin);
% pGCToFzenows( [...] );
% Zeno Wind Speed
h = timeplot({'Zeno_WindSpeed'}, ...
      'Zeno Wind Speed', ...
      'Wind Speed', ...
      {[.25 .95 0 1], 'Zeno\_WindSpeed'}, ...
      varargin{:} );
