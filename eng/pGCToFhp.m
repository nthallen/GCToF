function pGCToFhp(varargin);
% pGCToFhp( [...] );
% Horiba Pressure
h = timeplot({'HoribaP','HoribaPSP'}, ...
      'Horiba Pressure', ...
      'Pressure', ...
      {'HoribaP','HoribaPSP'}, ...
      varargin{:} );
