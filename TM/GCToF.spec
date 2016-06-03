tmcbase = types.tmc
tmcbase = base.tmc
tmcbase = TwisTorr.tmc
tmcbase = nXDS.tmc
tmcbase = zaber.tmc
tmcbase = Horiba.tmc
tmcbase = IG.tmc
tmcbase = UPS.tmc

cmdbase = TwisTorr.cmd
cmdbase = nXDS.cmd
cmdbase = zaber.cmd
cmdbase = Horiba.cmd
cmdbase = ../UPS/TM/UPS.cmd
cmdbase = address.h

colbase = TwisTorr_col.tmc
colbase = nXDS_col.tmc
colbase = Horiba_col.tmc
colbase = UPS_col.tmc

swsbase = GCToF.sws

genuibase = GCToF.genui
genuibase = ../UPS/TM/UPS.genui
genuibase = ../Zaber/TM/zaber.genui

Module TMbase
Module Sonic Suffix=1 mode=csat3
Module Sonic Suffix=2 mode=csat3b
Module DSDaq
Module Zeno mode=default

SCRIPT = interact runfile.A1 runfile.A2
TGTDIR = $(TGTNODE)/home/GCToF
OBJ = SWData.cmd SWData.h SWData.tmc SWData_col.tmc
DISTRIB = ../Agilent/TwisTorr ../Edwards/nXDS ../Horiba/horiba
DISTRIB = ../IonGauge/IonGauge ../Zaber/zaber
DISTRIB = ../UPS/ups

# Zeno Module
# tmcbase = ../Zeno/TM/Zeno.tmc
# cmdbase = ../Zeno/TM/Zeno.cmd
# colbase = ../Zeno/TM/Zeno_col.tmc
# genuibase = ../Zeno/TM/Zeno.genui
# DISTRIB = ../Zeno/Zeno_Ser

GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc Horiba_conv.tmc GCToF.tbl \
    nXDS.tbl sonic.tbl UPS.tbl
GCToFalgo : GCToF.tma GCToF.sws
doit : GCToF.doit
%%
COLFLAGS = -Haddress.h
address.h : GCToFcol.cc
CPPFLAGS += -I ../Agilent -I ../Edwards -I ../Horiba -I ../IonGauge -I ../Zaber
CPPFLAGS += -I ../Sonic -I ../UPS
# CPPFLAGS += -I ../Zeno



../Agilent/TwisTorr :
	cd ../Agilent && make
../Edwards/nXDS :
	cd ../Edwards && make
../Horiba/horiba :
	cd ../Horiba && make
../IonGauge/IonGauge :
	cd ../IonGauge && make
../Zaber/zaber :
	cd ../Zaber && make
../UPS/ups :
	cd ../UPS && make
