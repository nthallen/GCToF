function pGCToFupsf(varargin);
% pGCToFupsf( [...] );
% UPS F
h = timeplot({'UPS_F_in','UPS_F_out'}, ...
      'UPS F', ...
      'F', ...
      {'UPS\_F\_in','UPS\_F\_out'}, ...
      varargin{:} );
