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

colbase = TwisTorr_col.tmc
colbase = nXDS_col.tmc
colbase = Horiba_col.tmc
colbase = UPS_col.tmc

swsbase = GCToF.sws

Module TMbase
Module Sonic Suffix=1 mode=csat3
Module Sonic Suffix=2 mode=csat3b

SCRIPT = interact
TGTDIR = $(TGTNODE)/home/GCToF
OBJ = SWData.cmd SWData.h SWData.tmc SWData_col.tmc
DISTRIB = ../Agilent/TwisTorr ../Edwards/nXDS ../Horiba/horiba
DISTRIB = ../IonGauge/IonGauge ../Zaber/zaber
DISTRIB = ../UPS/ups

# Zeno Module
tmcbase = ../Zeno/TM/Zeno.tmc
cmdbase = ../Zeno/TM/Zeno.cmd
colbase = ../Zeno/TM/Zeno_col.tmc
DISTRIB = ../Zeno/Zeno_Ser

GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc Horiba_conv.tmc GCToF.tbl \
    nXDS.tbl sonic.tbl UPS.tbl
GCToFalgo : GCToF.tma GCToF.sws
GCToFengext : GCToFeng.cdf
doit : GCToF.doit
%%
CPPFLAGS += -I ../Agilent -I ../Edwards -I ../Horiba -I ../IonGauge -I ../Zaber
CPPFLAGS += -I ../Sonic -I ../UPS
CPPFLAGS += -I ../Zeno

GENUISRCS = genui.txt
GENUISRCS += ../UPS/TM/UPS.genui
GENUISRCS += ../Zaber/TM/zaber.genui
GENUISRCS += ../Zeno/TM/Zeno.genui


GCToFeng.cdf : $(GENUISRCS)
	genui -d ../eng -c $(GENUISRCS)
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
