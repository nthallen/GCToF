function pGCToFlat(varargin);
% pGCToFlat( [...] );
% gpsd lat
h = timeplot({'gpsd_lat'}, ...
      'gpsd lat', ...
      'lat', ...
      {'gpsd\_lat'}, ...
      varargin{:} );
