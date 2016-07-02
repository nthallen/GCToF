tmcbase = types.tmc
tmcbase = base.tmc
tmcbase = TwisTorr.tmc
tmcbase = nXDS.tmc
tmcbase = zaber.tmc
tmcbase = IG.tmc

cmdbase = TwisTorr.cmd
cmdbase = nXDS.cmd
cmdbase = zaber.cmd
cmdbase = address.h

colbase = TwisTorr_col.tmc
colbase = nXDS_col.tmc

swsbase = GCToF.sws

genuibase = GCToF.genui
genuibase = ../Zaber/TM/zaber.genui

Module TMbase
Module Sonic Suffix=1 mode=csat3
Module Sonic Suffix=2 mode=csat3b
Module DSDaq mode=bipolar
Module Zeno mode=default ZTBL=Zeno_yes_bare
Module gpsd TBLNAME=

SCRIPT = interact runfile.A1 runfile.A2
TGTDIR = $(TGTNODE)/home/GCToF
OBJ = SWData.cmd SWData.h SWData.tmc SWData_col.tmc
DISTRIB = ../Agilent/TwisTorr ../Edwards/nXDS
DISTRIB = ../IonGauge/IonGauge ../Zaber/zaber

Module Horiba src=GBHoriba.txt name=GBHoriba mode=driver
Module Horiba src=GCHoriba.txt name=GCHoriba
Module Watlow src=GCWatlow.txt name=GCWatlow mode=driver
Module Watlow src=GBWatlow.txt name=GBWatlow
Module UPS

#GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc Horiba_conv.tmc GCToF.tbl \
#    nXDS.tbl sonic.tbl
GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc \
    GCHoriba_conv.tmc GCToF.tbl nXDS.tbl sonic.tbl
gpsddisp : ../GPS/TM/gpsd_conv.tmc gpsd.tbl
GCToFalgo : GCToF.tma GCToF.sws
doit : GCToF.doit
%%
COLFLAGS = -Haddress.h
address.h : GCToFcol.cc
CPPFLAGS += -I ../Agilent -I ../Edwards -I ../IonGauge -I ../Zaber


../Agilent/TwisTorr :
	cd ../Agilent && make
../Edwards/nXDS :
	cd ../Edwards && make
../IonGauge/IonGauge :
	cd ../IonGauge && make
../Zaber/zaber :
	cd ../Zaber && make
