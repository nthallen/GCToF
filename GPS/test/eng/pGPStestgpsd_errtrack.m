function pGPStestgpsd_errtrack(varargin);
% pGPStestgpsd_errtrack( [...] );
% gpsd err track
h = timeplot({'gpsd_epd'}, ...
      'gpsd err track', ...
      'track', ...
      {'gpsd\_epd'}, ...
      varargin{:} );
