tmcbase = types.tmc
tmcbase = /usr/local/share/huarp/tmdf.tmc
tmcbase = /usr/local/share/huarp/cpu_usage.tmc
tmcbase = /usr/local/share/huarp/freemem.tmc
tmcbase = /usr/local/share/huarp/flttime.tmc
tmcbase = base.tmc
tmcbase = TwisTorr.tmc
tmcbase = nXDS.tmc
tmcbase = zaber.tmc
#tmcbase = Horiba.tmc
tmcbase = IG.tmc
tmcbase = sonic.tmc
tmcbase = UPS.tmc

cmdbase = /usr/local/share/huarp/root.cmd
cmdbase = /usr/local/share/huarp/getcon.cmd
cmdbase = TwisTorr.cmd
cmdbase = nXDS.cmd
cmdbase = zaber.cmd
# cmdbase = Horiba.cmd
cmdbase = ../UPS/TM/UPS.cmd

colbase = /usr/local/share/huarp/tmdf_col.tmc
colbase = /usr/local/share/huarp/cpu_usage_col.tmc
colbase = /usr/local/share/huarp/freemem_col.tmc
colbase = TwisTorr_col.tmc
colbase = nXDS_col.tmc
# colbase = Horiba_col.tmc
colbase = sonic_col.tmc
colbase = UPS_col.tmc

swsbase = GCToF.sws

genuibase = GCToF.genui
genuibase = ../UPS/TM/UPS.genui
genuibase = ../Zaber/TM/zaber.genui

SCRIPT = interact
TGTDIR = $(TGTNODE)/home/GCToF
OBJ = SWData.cmd SWData.h SWData.tmc SWData_col.tmc
DISTRIB = ../Agilent/TwisTorr ../Edwards/nXDS
DISTRIB = ../IonGauge/IonGauge ../Zaber/zaber ../Sonic/sonic
DISTRIB = ../UPS/ups

Module Horiba src=GBHoriba.txt name=GBHoriba mode=driver
Module Horiba src=GCHoriba.txt name=GCHoriba

# Zeno Module
tmcbase = ../Zeno/TM/Zeno.tmc
cmdbase = ../Zeno/TM/Zeno.cmd
colbase = ../Zeno/TM/Zeno_col.tmc
DISTRIB = ../Zeno/Zeno_Ser
genuibase = ../Zeno/TM/Zeno.genui

#GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc Horiba_conv.tmc GCToF.tbl \
#    nXDS.tbl sonic.tbl UPS.tbl
GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc \
    GCHoriba_conv.tmc GCToF.tbl nXDS.tbl sonic.tbl UPS.tbl
GCToFalgo : GCToF.tma GCToF.sws
# GCToFengext : GCToFeng.cdf
doit : GCToF.doit
%%
CPPFLAGS += -I ../Agilent -I ../Edwards -I ../IonGauge -I ../Zaber
CPPFLAGS += -I ../Sonic -I ../UPS
CPPFLAGS += -I ../Zeno



# GCToFeng.cdf : $(GENUISRCS)
#	genui -d ../eng -c $(GENUISRCS)
../Agilent/TwisTorr :
	cd ../Agilent && make
../Edwards/nXDS :
	cd ../Edwards && make
../IonGauge/IonGauge :
	cd ../IonGauge && make
../Zaber/zaber :
	cd ../Zaber && make
../Sonic/sonic :
	cd ../Sonic && make
../UPS/ups :
	cd ../UPS && make
