function pGCToFupstime(varargin);
% pGCToFupstime( [...] );
% UPS Time
h = timeplot({'UPS_Remain_Time'}, ...
      'UPS Time', ...
      'Time', ...
      {'UPS\_Remain\_Time'}, ...
      varargin{:} );
