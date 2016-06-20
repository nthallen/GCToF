function pGCToFgpsd_statusdata(varargin);
% pGCToFgpsd_statusdata( [...] );
% gpsd status data
h = ne_dstat({
  'gpsd_packet_set', 'gpsd_data_status', 0; ...
	'gpsd_status_set', 'gpsd_data_status', 1; ...
	'gpsd_time_set', 'gpsd_data_status', 2; ...
	'gpsd_latlon_set', 'gpsd_data_status', 3; ...
	'gpsd_alt_set', 'gpsd_data_status', 4; ...
	'gpsd_speed_set', 'gpsd_data_status', 5; ...
	'gpsd_track_set', 'gpsd_data_status', 6; ...
	'gpsd_climb_set', 'gpsd_data_status', 7; ...
	'gpsd_mode_set', 'gpsd_data_status', 8; ...
	'gpsd_dop_set', 'gpsd_data_status', 9; ...
	'gpsd_sats_set', 'gpsd_data_status', 10; ...
	'gpsd_toff_set', 'gpsd_data_status', 11; ...
	'gpsd_pps_set', 'gpsd_data_status', 12 }, 'data', varargin{:} );
