function pGCToFttstatus(varargin);
% pGCToFttstatus( [...] );
% Twis Torr Status
h = timeplot({'TT1_Status','TT2_Status','TT3_Status'}, ...
      'Twis Torr Status', ...
      'Status', ...
      {'TT1\_Status','TT2\_Status','TT3\_Status'}, ...
      varargin{:} );
