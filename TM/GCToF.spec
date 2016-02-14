tmcbase = types.tmc
tmcbase = /usr/local/share/huarp/tmdf.tmc
tmcbase = /usr/local/share/huarp/cpu_usage.tmc
tmcbase = /usr/local/share/huarp/freemem.tmc
tmcbase = /usr/local/share/huarp/flttime.tmc
tmcbase = base.tmc
tmcbase = TwisTorr.tmc
tmcbase = nXDS.tmc
tmcbase = zaber.tmc
tmcbase = Horiba.tmc
tmcbase = IG.tmc
tmcbase = sonic.tmc
tmcbase = UPS.tmc

cmdbase = /usr/local/share/huarp/root.cmd
cmdbase = /usr/local/share/huarp/getcon.cmd
cmdbase = TwisTorr.cmd
cmdbase = nXDS.cmd
cmdbase = zaber.cmd
cmdbase = Horiba.cmd
cmdbase = ../UPS/TM/UPS.cmd

colbase = /usr/local/share/huarp/tmdf_col.tmc
colbase = /usr/local/share/huarp/cpu_usage_col.tmc
colbase = /usr/local/share/huarp/freemem_col.tmc
colbase = TwisTorr_col.tmc
colbase = nXDS_col.tmc
colbase = Horiba_col.tmc
colbase = sonic_col.tmc
colbase = UPS_col.tmc

swsbase = GCToF.sws

GENUISRCS = genui.txt
GENUISRCS = ../UPS/TM/UPS.genui
GENUISRCS = ../Zaber/TM/Zaber.genui

SCRIPT = interact
TGTDIR = $(TGTNODE)/home/GCToF
OBJ = SWData.cmd SWData.h SWData.tmc SWData_col.tmc
DISTRIB = ../Agilent/TwisTorr ../Edwards/nXDS ../Horiba/horiba
DISTRIB = ../IonGauge/IonGauge ../Zaber/zaber ../Sonic/sonic
DISTRIB = ../UPS/ups

# Zeno Module
tmcbase = ../Zeno/TM/Zeno.tmc
cmdbase = ../Zeno/TM/Zeno.cmd
colbase = ../Zeno/TM/Zeno_col.tmc
GENUISRCS = ../Zeno/TM/Zeno.genui
DISTRIB = ../Zeno/zeno

GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc Horiba_conv.tmc GCToF.tbl \
    nXDS.tbl sonic.tbl UPS.tbl
GCToFalgo : GCToF.tma GCToF.sws
GCToFengext : GCToFeng.cdf
doit : GCToF.doit
%%
CPPFLAGS += -I ../Agilent -I ../Edwards -I ../Horiba -I ../IonGauge -I ../Zaber
CPPFLAGS += -I ../Sonic -I ../UPS

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
../Sonic/sonic :
	cd ../Sonic && make
../UPS/ups :
	cd ../UPS && make
