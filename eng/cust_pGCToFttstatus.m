function cust_pGCToFttstatus(h)
% cust_pGCToFttstatus(h)
% Customize plot created by pGCToFttstatus

% pGCToFttstatus's definition:

% function pGCToFttstatus(varargin);
% % pGCToFttstatus( [...] );
% % Twis Torr Status
% h = timeplot({'TT1_Status'}, ...
%       'Twis Torr Status', ...
%       'Status', ...
%       {'TT1\_Status'}, ...
%       varargin{:} );

% Example customizations include:
set(h,'LineStyle','none','Marker','.');
ax = get(h(1),'parent');
set(ax,'ylim',[-1 7],'ytick',0:6,'yticklabel', ...
  {'Stop','WtIntlck','Starting','AutoTune','Braking','Normal','Fail'});
