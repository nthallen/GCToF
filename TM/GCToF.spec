tmcbase = types.tmc
tmcbase = /usr/local/share/huarp/tmdf.tmc
tmcbase = /usr/local/share/huarp/cpu_usage.tmc
tmcbase = /usr/local/share/huarp/freemem.tmc
tmcbase = /usr/local/share/huarp/flttime.tmc
tmcbase = base.tmc
tmcbase = TwisTorr.tmc
tmcbase = nXDS.tmc

cmdbase = /usr/local/share/huarp/root.cmd
cmdbase = /usr/local/share/huarp/getcon.cmd
cmdbase = TwisTorr.cmd
cmdbase = nXDS.cmd

colbase = /usr/local/share/huarp/tmdf_col.tmc
colbase = /usr/local/share/huarp/cpu_usage_col.tmc
colbase = /usr/local/share/huarp/freemem_col.tmc
colbase = TwisTorr_col.tmc
colbase = nXDS_col.tmc

swsbase = GCToF.sws

SCRIPT = interact
TGTDIR = $(TGTNODE)/home/GCToF
OBJ = SWData.cmd SWData.h SWData.tmc SWData_col.tmc
DISTRIB = ../Agilent/TwisTorr ../Edwards/nXDS

GCToFdisp : TwisTorr_conv.tmc nXDS_conv.tmc GCToF.tbl
GCToFalgo : GCToF.tma GCToF.sws
GCToFengext : GCToFeng.cdf
doit : GCToF.doit
%%
CPPFLAGS += -I ../Agilent
GCToFeng.cdf : genui.txt
	genui -d ../eng -c genui.txt
../Agilent/TwisTorr :
	cd ../Agilent && make
../Edwards/nXDS :
	cd ../Edwards && make
