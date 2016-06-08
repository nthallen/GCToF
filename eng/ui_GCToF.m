function ui_GCToF
f = ne_dialg('Wennberg GC ToF',1);
f = ne_dialg(f, 'add', 0, 1, 'gGCToFhk', 'HK' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFhkcpu', 'CPU' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFhkd', 'Disk' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFhkfreemem', 'freemem' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFhksws', 'SW Stat' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFtt', 'Twis Torr' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtti', 'I' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFttt', 'T' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFttv', 'V' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFttw', 'W' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtts', 'Speed' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFttstatus', 'Status' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFttstale', 'Stale' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFttflags', 'flags' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFtte', 'TT1 Errors' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtteerrors', 'errors' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFtt2_errors', 'TT2 Errors' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtt2_errorserrors', 'errors' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFtt3_errors', 'TT3 Errors' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtt3_errorserrors', 'errors' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFxds', 'nXDS' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFxdsv', 'V' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFxdsi', 'I' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFxdsw', 'W' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFxdst', 'T' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFxdsf', 'Freq' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFxdss', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFnxds0', 'nXDS0' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFnxds0s', 'Stat' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFnxds1', 'nXDS1' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFnxds1s', 'Stat' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFig', 'Ion Gauge' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFigp', 'P' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFigs', 'Stale' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFigstat', 'Stat' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFs', 'Sonic 1' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsw', 'Winds' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFss', 'Sound' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsn', 'N' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsstatus', 'Status' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsstale', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFsonic2', 'Sonic 2' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsonic2w', 'Winds' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsonic2s', 'Sound' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsonic2n', 'N' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsonic2status', 'Status' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsonic2t', 'Temp' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFsonic2stale', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFups', 'UPS' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsm', 'Mode' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsv', 'V' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsf', 'F' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsi', 'I' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsl', 'Load' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupst', 'T' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupstime', 'Time' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFupsstat', 'UP Sstat' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsstatp', 'Pc' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsstatg', 'Grp' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsstats', 'Status' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsstatw', 'Warn' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsstatr', 'Response' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFupsstatstale', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFz', 'Zaber' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzv', 'Volts' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzp', 'Pos' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzs', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFtm', 'T Mbase' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtmtd', 'T Drift' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtmcpu', 'CPU' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtmram', 'RAM' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtmd', 'Disk' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFo', 'Octopole' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFoa', 'Amp' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFob', 'Bias' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFod', 'Drive' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFfv', 'Fly Valve' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFfvp', 'Pos' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFfv_p', 'P' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFfvs', 'Status' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFm', 'Misc' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFms', 'Status' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFgc', 'Gas Cmds' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgcs', 'Status' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFt', 'Turbo' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtbt', 'BT' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFts', 'Speed' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtc', 'Cmon' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtok', 'OK' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFt_tv', 'TV' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFtstatus', 'Status' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFdsd', 'DS Daq' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFdsds', 'Status' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToF_gc', 'GC' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToF_gcs', 'Status' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFgb', 'GB' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbz', 'Zero' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbs', 'Spare' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbp', 'P' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbdp', 'DP' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbrp', 'Reg P' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbt', 'T' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFzeno', 'Zeno' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzenop', 'Press' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzenorh', 'RH' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzenor', 'Radiance' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzenot', 'Temp' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzenows', 'Wind Speed' );
f = ne_dialg(f, 'add', 0, 1, 'gGCToFw', 'Wind' );
f = ne_dialg(f, 'add', 1, 0, 'cust_pGCToFwind', 'Polar' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFzhk', 'Zeno HK' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzhkvb', 'V Batt' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzhkr', 'Rain' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzhklw', 'Leaf Wet' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzhkbit', 'BIT' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzhktd', 'T Drift' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFzhks', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFgbh', 'GB Horiba' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbhf', 'Fluorine' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbhis', 'Ion Src' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbhdft', 'Dil FT' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbhcp', 'Cal P' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbhs', 'Status' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgbhstale', 'Stale' );
f = ne_dialg(f, 'newcol');
f = ne_dialg(f, 'add', 0, 1, 'gGCToFgch', 'GC Horiba' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgchcn', 'Column N2' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgchgci', 'GC Intake' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgchpf', 'Pickup Flow' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgchgcd', 'GC Dilution' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgchs', 'Status' );
f = ne_dialg(f, 'add', 1, 0, 'pGCToFgchstale', 'Stale' );
f = ne_listdirs(f, 'GCTof_Data_Dir', 6);
f = ne_dialg(f, 'newcol');
ne_dialg(f, 'resize');
