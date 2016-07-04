# Invoking: appgen_module TMbase X 
# Invoking: appgen_module Sonic X Suffix=1 mode=csat3
# Invoking: appgen_module Sonic X Suffix=2 mode=csat3b
# Invoking: appgen_module DSDaq X 
# Invoking: appgen_module Zeno X mode=default ZTBL=Zeno_yes_bare
# Invoking: appgen_module gpsd X TBLNAME=
# Invoking: appgen_module Horiba X src=GBHoriba.txt name=GBHoriba mode=driver
# Invoking: appgen_module Horiba X src=GCHoriba.txt name=GCHoriba
# Invoking: appgen_module Watlow X src=GCWatlow.txt name=GCWatlow mode=driver
# Invoking: appgen_module Watlow X src=GBWatlow.txt name=GBWatlow
# Invoking: appgen_module UPS X 
# Makefile Generated Mon Jul 04 12:44:30 PDT 2016
MNC=GCToF
SPECFILE=GCToF.spec
PCMFILE=GCToF.pcm
SRC=GBHoriba.txt GCHoriba.txt GCWatlow.txt GBWatlow.txt types.tmc
SRC+=base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc
SRC+=SWData.h /usr/local/share/huarp/tdrift.tmc
SRC+=/usr/local/share/huarp/cpu_usage.tmc
SRC+=/usr/local/share/huarp/tmdf.tmc freemem.tmc
SRC+=/usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc
SRC+=sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc
SRC+=../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc
SRC+=../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc
SRC+=GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc
SRC+=../DSDaq/TM/Hercules_conv.tmc ../DSDaq/TM/Athena_conv.tmc
SRC+=DSDaq.tbl Athena.tbl TwisTorr_conv.tmc nXDS_conv.tmc
SRC+=GBHoriba_conv.tmc GCHoriba_conv.tmc GCToF.tbl nXDS.tbl sonic.tbl
SRC+=../GPS/TM/gpsd_conv.tmc gpsd.tbl GCToF.tma GCToF.sws flows.tma
SRC+=GCToF.doit /usr/local/share/huarp/root.cmd TwisTorr.cmd nXDS.cmd
SRC+=zaber.cmd address.h SWData.cmd /usr/local/share/huarp/getcon.cmd
SRC+=../DSDaq/TM/Hercules.cmd ../DSDaq/TM/Athena1.cmd
SRC+=../DSDaq/TM/Athena2.cmd ../Zeno/TM/Zeno.cmd GBHoriba.cmd
SRC+=GCHoriba.cmd GCWatlow.cmd GBWatlow.cmd ../UPS/TM/UPS.cmd
SRC+=TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc
SRC+=/usr/local/share/huarp/tdrift_col.tmc
SRC+=/usr/local/share/huarp/cpu_usage_col.tmc
SRC+=/usr/local/share/huarp/tmdf_col.tmc
SRC+=/usr/local/share/huarp/freemem_col.tmc sonic1_col.tmc
SRC+=sonic2_col.tmc ../DSDaq/TM/Hercules_col.tmc
SRC+=../DSDaq/TM/Athena1_col.tmc ../DSDaq/TM/Athena2_col.tmc
SRC+=../DSDaq/TM/../dsdaq.cc ../Zeno/TM/Zeno_col.tmc
SRC+=../GPS/TM/gpsd_col.tmc GBHoriba_col.tmc GCHoriba_col.tmc
SRC+=GCWatlow_col.tmc GBWatlow_col.tmc ../UPS/TM/UPS_col.tmc
SRC+=GCToF.genui ../Zaber/TM/zaber.genui TMbase.genui sonic1.genui
SRC+=sonic2.genui ../DSDaq/TM/DSDaq.genui Zeno.genui
SRC+=../GPS/TM/gpsd.genui GBHoriba.genui GCHoriba.genui
SRC+=GCWatlow.genui GBWatlow.genui ../UPS/TM/UPS.genui GCToF.pcm
TOOL=GCToF.spec Makefile
SCRIPT=interact runfile.A1 runfile.A2
OBJ=SWData.cmd SWData.h SWData.tmc SWData_col.tmc DSDaqtbl.tmc
OBJ+=Athenatbl.tmc DSDaqdisp.cc DSDaqdispoui.c DSDaqdispoui.o
OBJ+=DSDaqdisp.o DSDaqtblnc.tmc Athenatblnc.tmc DSDaqdispnc.cc
OBJ+=DSDaqdispncoui.c DSDaqdispncoui.o DSDaqdispnc.o GCToFtbl.tmc
OBJ+=nXDStbl.tmc sonictbl.tmc GCToFdisp.cc GCToFdispoui.c
OBJ+=GCToFdispoui.o GCToFdisp.o GCToFtblnc.tmc nXDStblnc.tmc
OBJ+=sonictblnc.tmc GCToFdispnc.cc GCToFdispncoui.c GCToFdispncoui.o
OBJ+=GCToFdispnc.o gpsdtbl.tmc gpsddisp.cc gpsddispoui.c
OBJ+=gpsddispoui.o gpsddisp.o gpsdtblnc.tmc gpsddispnc.cc
OBJ+=gpsddispncoui.c gpsddispncoui.o gpsddispnc.o GCToFsws.tma
OBJ+=GCToFalgoa.tmc GCToFalgo.cc GCToFalgooui.c GCToFalgooui.o
OBJ+=GCToFalgo.o doit.dep GCToFcmd.cc GCToFcmd.dat GCToFclt.o
OBJ+=GCToFcltoui.c GCToFcltoui.o GCToFcltnc.o GCToFcltncoui.c
OBJ+=GCToFcltncoui.o GCToFsrvr.o GCToFsrvroui.c GCToFsrvroui.o
OBJ+=GCToFcol.cc tm.dac GCToFcoloui.c GCToFcoloui.o GCToFcol.o
OBJ+=dsdaq.o GCToFengext.cdf GCToFengextcdf.oui GCToFengextcdf.tmc
OBJ+=GCToFengext.cc GCToFengextoui.c GCToFengextoui.o GCToFengext.o
OBJ+=DSDaqtbl.tmc.dep Athenatbl.tmc.dep DSDaqtblnc.tmc.dep
OBJ+=Athenatblnc.tmc.dep GCToFtbl.tmc.dep nXDStbl.tmc.dep
OBJ+=sonictbl.tmc.dep GCToFtblnc.tmc.dep nXDStblnc.tmc.dep
OBJ+=sonictblnc.tmc.dep gpsdtbl.tmc.dep gpsdtblnc.tmc.dep
TGT=DSDaqdisp DSDaqdispnc GCToFdisp GCToFdispnc gpsddisp gpsddispnc
TGT+=GCToFalgo doit GCToFclt GCToFcltnc GCToFsrvr GCToFcol
TGT+=GCToFengext
DISTRIB=../Sonic/TM/../sonic ../Sonic/TM/../sonic_csat3b
DISTRIB+=../DSDaq/TM/../Hercules ../DSDaq/TM/../AthenaII
DISTRIB+=../Zeno/TM/../Zeno_Ser ../GPS/TM/../gpsd_client
DISTRIB+=../Agilent/TwisTorr ../Edwards/nXDS ../IonGauge/IonGauge
DISTRIB+=../Zaber/zaber ../Horiba/TM/../horiba ../Modbus/TM/../modbus
DISTRIB+=../UPS/TM/../ups GCToF.pcm tm.dac
IDISTRIB=Experiment.config VERSION doit
SRCDIST=flows.tma DSDaq.tbl Athena.tbl GCToF.tbl nXDS.tbl sonic.tbl
SRCDIST+=gpsd.tbl GCToF.tma types.tmc base.tmc TwisTorr.tmc nXDS.tmc
SRCDIST+=zaber.tmc IG.tmc SWData.tmc SWData.h
SRCDIST+=/usr/local/share/huarp/tdrift.tmc
SRCDIST+=/usr/local/share/huarp/cpu_usage.tmc
SRCDIST+=/usr/local/share/huarp/tmdf.tmc freemem.tmc
SRCDIST+=/usr/local/share/huarp/flttime.tmc
SRCDIST+=../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc
SRCDIST+=../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc
SRCDIST+=../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc
SRCDIST+=../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc
SRCDIST+=GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc
TMCBASE=types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc
TMCBASE+=SWData.tmc SWData.h /usr/local/share/huarp/tdrift.tmc
TMCBASE+=/usr/local/share/huarp/cpu_usage.tmc
TMCBASE+=/usr/local/share/huarp/tmdf.tmc freemem.tmc
TMCBASE+=/usr/local/share/huarp/flttime.tmc
TMCBASE+=../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc
TMCBASE+=../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc
TMCBASE+=../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc
TMCBASE+=../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc
TMCBASE+=GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc
CMDBASE=/usr/local/share/huarp/root.cmd TwisTorr.cmd nXDS.cmd
CMDBASE+=zaber.cmd address.h SWData.cmd SWData.h
CMDBASE+=/usr/local/share/huarp/getcon.cmd ../DSDaq/TM/Hercules.cmd
CMDBASE+=../DSDaq/TM/Athena1.cmd ../DSDaq/TM/Athena2.cmd
CMDBASE+=../Zeno/TM/Zeno.cmd GBHoriba.cmd GCHoriba.cmd GCWatlow.cmd
CMDBASE+=GBWatlow.cmd ../UPS/TM/UPS.cmd
COLBASE=TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc
COLBASE+=/usr/local/share/huarp/tdrift_col.tmc
COLBASE+=/usr/local/share/huarp/cpu_usage_col.tmc
COLBASE+=/usr/local/share/huarp/tmdf_col.tmc
COLBASE+=/usr/local/share/huarp/freemem_col.tmc sonic1_col.tmc
COLBASE+=sonic2_col.tmc ../DSDaq/TM/Hercules_col.tmc
COLBASE+=../DSDaq/TM/Athena1_col.tmc ../DSDaq/TM/Athena2_col.tmc
COLBASE+=../DSDaq/TM/../dsdaq.cc ../Zeno/TM/Zeno_col.tmc
COLBASE+=../GPS/TM/gpsd_col.tmc GBHoriba_col.tmc GCHoriba_col.tmc
COLBASE+=GCWatlow_col.tmc GBWatlow_col.tmc ../UPS/TM/UPS_col.tmc
SWSBASE=GCToF.sws
QCLIBASE=
GENUIBASE=GCToF.genui ../Zaber/TM/zaber.genui TMbase.genui
GENUIBASE+=sonic1.genui sonic2.genui ../DSDaq/TM/DSDaq.genui
GENUIBASE+=Zeno.genui ../GPS/TM/gpsd.genui GBHoriba.genui
GENUIBASE+=GCHoriba.genui GCWatlow.genui GBWatlow.genui
GENUIBASE+=../UPS/TM/UPS.genui
EXTBASE=GBHoriba_conv.tmc GCHoriba_conv.tmc
SPECDEPBASE=/usr/local/share/huarp/TMbase.agm
SPECDEPBASE+=/usr/local/share/huarp/freemem_def.tmc.in
SPECDEPBASE+=/usr/local/share/huarp/TMbase.genui.in
SPECDEPBASE+=/usr/local/share/huarp/TMbase.tbl.in
SPECDEPBASE+=../Sonic/TM/Sonic.agm ../Sonic/TM/sonic.tmc.in
SPECDEPBASE+=../Sonic/TM/sonic_col.tmc.in ../Sonic/TM/sonic.genui.in
SPECDEPBASE+=../Sonic/TM/sonic.tbl.in ../Sonic/TM/sonic3B.tmc.in
SPECDEPBASE+=../DSDaq/TM/DSDaq.agm ../DSDaq/TM/Hercules.tbl.in
SPECDEPBASE+=../DSDaq/TM/Athena.tbl.in ../Zeno/TM/Zeno.agm
SPECDEPBASE+=../Zeno/TM/Zeno.genui.in ../Zeno/TM/Zeno.tbl.in
SPECDEPBASE+=../GPS/TM/gpsd.agm ../GPS/TM/gpsd.tbl.in
SPECDEPBASE+=../Horiba/TM/Horiba.agm ../Modbus/TM/Watlow.agm
SPECDEPBASE+=../UPS/TM/UPS.agm ../UPS/TM/UPS.tmc.in
SPECDEPBASE+=../UPS/TM/UPS.tbl.in
AG_CPPFLAGS=-I ../Sonic/TM/.. -I ../Sonic/TM/.. -I ../DSDaq/TM/.. -I
AG_CPPFLAGS+=../Zeno/TM/.. -I ../GPS/TM/.. -I ../Horiba/TM/.. -I
AG_CPPFLAGS+=../Modbus/TM/.. -I ../UPS/TM/..
PHTGT=DSDaqtbl.tmc Athenatbl.tmc GCToFtbl.tmc nXDStbl.tmc
PHTGT+=sonictbl.tmc gpsdtbl.tmc
SOURCE=$(SRC) $(TOOL) $(SCRIPT)
OBJECT=$(OBJ) *.err
TARGET=$(TGT)
DSTRB=$(TGT) $(DISTRIB) $(SCRIPT)
TGTDIR= $(TGTNODE)/home/GCToF
include /usr/local/share/huarp/appgen.mk

.PHONY : all all-dist extdistribution distribution clean clean-dist check_photon

IGNOREFILE=.gitignore
all : Makefile check_photon $(TGT) $(IGNOREFILE)
all-dist : $(DSTRB) $(SRCDIST) VERSION
Makefile : GCToF.spec $(SPECDEPBASE)
	appgen GCToF.spec
VERSION=`cat VERSION`
extdistribution : $(DSTRB) $(SRCDIST) VERSION
	@[ -d $(TGTDIR)/bin ] || mkdir $(TGTDIR)/bin
	@[ -d $(TGTDIR)/bin/$(VERSION) ] || mkdir $(TGTDIR)/bin/$(VERSION)
	@[ -d $(TGTDIR)/bin/$(VERSION)/Base ] || mkdir $(TGTDIR)/bin/$(VERSION)/Base
	@[ ! -f $(TGTDIR)/bin/$(VERSION)/$(PCMFILE) ] || \
	  cmp -s $(TGTDIR)/bin/$(VERSION)/$(PCMFILE) $(PCMFILE) || \
	  ( echo "$(PCMFILE) changed without VERSION update"; false )
	@distribute $(FORCE) $(TGTDIR)/bin/$(VERSION) $(DSTRB)
	@distribute $(FORCE) $(TGTDIR)/bin/$(VERSION)/Base $(SRCDIST)
distribution : extdistribution
	@distribute $(FORCE) $(TGTDIR) $(IDISTRIB)
check_photon :
ifeq ($(WPHOTON),YES)
	@for tgt in $(PHTGT); do \
	  cmp -s $$tgt /usr/local/share/huarp/nulltbl.tmc && echo Remaking $$tgt && rm -f $$tgt; \
	done; true
endif
DSDaqdisp : DSDaqdisp.o DSDaqdispoui.o
	$(LINK.normCXX) DSDaqdisp.o DSDaqdispoui.o -ldisp -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) DSDaqdispoui.c
DSDaqdispnc : DSDaqdispnc.o DSDaqdispncoui.o
	$(LINK.normCXX) DSDaqdispnc.o DSDaqdispncoui.o -ldispnc -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) DSDaqdispncoui.c
GCToFdisp : GCToFdisp.o GCToFdispoui.o
	$(LINK.normCXX) GCToFdisp.o GCToFdispoui.o -ldisp -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) GCToFdispoui.c
GCToFdispnc : GCToFdispnc.o GCToFdispncoui.o
	$(LINK.normCXX) GCToFdispnc.o GCToFdispncoui.o -ldispnc -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) GCToFdispncoui.c
gpsddisp : gpsddisp.o gpsddispoui.o
	$(LINK.normCXX) gpsddisp.o gpsddispoui.o -ldisp -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) gpsddispoui.c
gpsddispnc : gpsddispnc.o gpsddispncoui.o
	$(LINK.normCXX) gpsddispnc.o gpsddispncoui.o -ldispnc -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) gpsddispncoui.c
GCToFalgo : GCToFalgo.o GCToFalgooui.o
	$(LINK.normCXX) GCToFalgo.o GCToFalgooui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFalgooui.c
doit : GCToF.doit
	mkdoit3 -o doit  GCToF.doit
GCToFclt : GCToFclt.o GCToFcltoui.o
	$(LINK.normCXX) GCToFclt.o GCToFcltoui.o -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) GCToFcltoui.c
GCToFcltnc : GCToFcltnc.o GCToFcltncoui.o
	$(LINK.normCXX) GCToFcltnc.o GCToFcltncoui.o -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) GCToFcltncoui.c
GCToFsrvr : GCToFsrvr.o GCToFsrvroui.o
	$(LINK.privCXX) GCToFsrvr.o GCToFsrvroui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFsrvroui.c
	$(PROMOTE) GCToFsrvr
GCToFcol : GCToFcol.o dsdaq.o GCToFcoloui.o
	$(LINK.privCXX) GCToFcol.o dsdaq.o GCToFcoloui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFcoloui.c
	$(PROMOTE) GCToFcol
GCToFengext : GCToFengext.o GCToFengextoui.o
	$(LINK.normCXX) GCToFengext.o GCToFengextoui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFengextoui.c
DSDaqtbl.tmc : DSDaq.tbl
-include DSDaqtbl.tmc.dep
Athenatbl.tmc : Athena.tbl
-include Athenatbl.tmc.dep
DSDaqdisp.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../DSDaq/TM/Hercules_conv.tmc ../DSDaq/TM/Athena_conv.tmc DSDaqtbl.tmc Athenatbl.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../DSDaq/TM/Hercules_conv.tmc ../DSDaq/TM/Athena_conv.tmc DSDaqtbl.tmc Athenatbl.tmc
DSDaqdispoui.c : $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
DSDaqdispoui.o : DSDaqdispoui.c SWData.h
DSDaqdisp.o : DSDaqdisp.cc SWData.h
DSDaqtblnc.tmc : DSDaq.tbl
-include DSDaqtblnc.tmc.dep
Athenatblnc.tmc : Athena.tbl
-include Athenatblnc.tmc.dep
DSDaqdispnc.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../DSDaq/TM/Hercules_conv.tmc ../DSDaq/TM/Athena_conv.tmc DSDaqtblnc.tmc Athenatblnc.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../DSDaq/TM/Hercules_conv.tmc ../DSDaq/TM/Athena_conv.tmc DSDaqtblnc.tmc Athenatblnc.tmc
DSDaqdispncoui.c : $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
DSDaqdispncoui.o : DSDaqdispncoui.c SWData.h
DSDaqdispnc.o : DSDaqdispnc.cc SWData.h
GCToFtbl.tmc : GCToF.tbl
-include GCToFtbl.tmc.dep
nXDStbl.tmc : nXDS.tbl
-include nXDStbl.tmc.dep
sonictbl.tmc : sonic.tbl
-include sonictbl.tmc.dep
GCToFdisp.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtbl.tmc nXDStbl.tmc sonictbl.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtbl.tmc nXDStbl.tmc sonictbl.tmc
GCToFdispoui.c : $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFdispoui.o : GCToFdispoui.c SWData.h
GCToFdisp.o : GCToFdisp.cc SWData.h
GCToFtblnc.tmc : GCToF.tbl
-include GCToFtblnc.tmc.dep
nXDStblnc.tmc : nXDS.tbl
-include nXDStblnc.tmc.dep
sonictblnc.tmc : sonic.tbl
-include sonictblnc.tmc.dep
GCToFdispnc.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtblnc.tmc nXDStblnc.tmc sonictblnc.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtblnc.tmc nXDStblnc.tmc sonictblnc.tmc
GCToFdispncoui.c : $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFdispncoui.o : GCToFdispncoui.c SWData.h
GCToFdispnc.o : GCToFdispnc.cc SWData.h
gpsdtbl.tmc : gpsd.tbl
-include gpsdtbl.tmc.dep
gpsddisp.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../GPS/TM/gpsd_conv.tmc gpsdtbl.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../GPS/TM/gpsd_conv.tmc gpsdtbl.tmc
gpsddispoui.c : $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
gpsddispoui.o : gpsddispoui.c SWData.h
gpsddisp.o : gpsddisp.cc SWData.h
gpsdtblnc.tmc : gpsd.tbl
-include gpsdtblnc.tmc.dep
gpsddispnc.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../GPS/TM/gpsd_conv.tmc gpsdtblnc.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc ../GPS/TM/gpsd_conv.tmc gpsdtblnc.tmc
gpsddispncoui.c : $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
gpsddispncoui.o : gpsddispncoui.c SWData.h
gpsddispnc.o : gpsddispnc.cc SWData.h
GCToFsws.tma : GCToF.sws
	$(COMPILE.sws) GCToF.sws
GCToFalgoa.tmc : GCToF.tma GCToFsws.tma flows.tma GCToFsrvr
	$(SERVER) ./GCToFsrvr
	$(TMCALGO) -V "`./GCToFsrvr -R`" GCToF.tma GCToFsws.tma flows.tma
GCToFalgo.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc GCToFalgoa.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc GCToFalgoa.tmc
GCToFalgooui.c : $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFalgooui.o : GCToFalgooui.c SWData.h
GCToFalgo.o : GCToFalgo.cc SWData.h
doit.dep : GCToF.doit
	mkdoit3 -M -o doit  GCToF.doit
-include doit.dep
GCToFcmd.cc : /usr/local/share/huarp/root.cmd TwisTorr.cmd nXDS.cmd zaber.cmd SWData.cmd /usr/local/share/huarp/getcon.cmd ../DSDaq/TM/Hercules.cmd ../DSDaq/TM/Athena1.cmd ../DSDaq/TM/Athena2.cmd ../Zeno/TM/Zeno.cmd GBHoriba.cmd GCHoriba.cmd GCWatlow.cmd GBWatlow.cmd ../UPS/TM/UPS.cmd
	$(CMDGEN) -d GCToFcmd.dat /usr/local/share/huarp/root.cmd TwisTorr.cmd nXDS.cmd zaber.cmd SWData.cmd /usr/local/share/huarp/getcon.cmd ../DSDaq/TM/Hercules.cmd ../DSDaq/TM/Athena1.cmd ../DSDaq/TM/Athena2.cmd ../Zeno/TM/Zeno.cmd GBHoriba.cmd GCHoriba.cmd GCWatlow.cmd GBWatlow.cmd ../UPS/TM/UPS.cmd
GCToFclt.o : GCToFcmd.cc address.h SWData.h
	$(COMPILE.clt) GCToFcmd.cc
GCToFcltoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
GCToFcltoui.o : GCToFcltoui.c address.h SWData.h
GCToFcltnc.o : GCToFcmd.cc address.h SWData.h
	$(COMPILE.cltnc) GCToFcmd.cc
GCToFcltncoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
GCToFcltncoui.o : GCToFcltncoui.c address.h SWData.h
GCToFsrvr.o : GCToFcmd.cc address.h SWData.h
	$(COMPILE.srvr) GCToFcmd.cc
GCToFsrvroui.c : $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
GCToFsrvroui.o : GCToFsrvroui.c address.h SWData.h
GCToFcol.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc /usr/local/share/huarp/tdrift_col.tmc /usr/local/share/huarp/cpu_usage_col.tmc /usr/local/share/huarp/tmdf_col.tmc /usr/local/share/huarp/freemem_col.tmc sonic1_col.tmc sonic2_col.tmc ../DSDaq/TM/Hercules_col.tmc ../DSDaq/TM/Athena1_col.tmc ../DSDaq/TM/Athena2_col.tmc ../Zeno/TM/Zeno_col.tmc ../GPS/TM/gpsd_col.tmc GBHoriba_col.tmc GCHoriba_col.tmc GCWatlow_col.tmc GBWatlow_col.tmc ../UPS/TM/UPS_col.tmc VERSION
	$(TMC.col) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc /usr/local/share/huarp/tdrift_col.tmc /usr/local/share/huarp/cpu_usage_col.tmc /usr/local/share/huarp/tmdf_col.tmc /usr/local/share/huarp/freemem_col.tmc sonic1_col.tmc sonic2_col.tmc ../DSDaq/TM/Hercules_col.tmc ../DSDaq/TM/Athena1_col.tmc ../DSDaq/TM/Athena2_col.tmc ../Zeno/TM/Zeno_col.tmc ../GPS/TM/gpsd_col.tmc GBHoriba_col.tmc GCHoriba_col.tmc GCWatlow_col.tmc GBWatlow_col.tmc ../UPS/TM/UPS_col.tmc
GCToFcoloui.c : $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
GCToFcoloui.o : GCToFcoloui.c SWData.h
GCToFcol.o : GCToFcol.cc SWData.h
dsdaq.o : ../DSDaq/TM/../dsdaq.cc SWData.h
	$(COMPILE.cc) ../DSDaq/TM/../dsdaq.cc
GCToFengext.cdf : GCToF.genui ../Zaber/TM/zaber.genui TMbase.genui sonic1.genui sonic2.genui ../DSDaq/TM/DSDaq.genui Zeno.genui ../GPS/TM/gpsd.genui GBHoriba.genui GCHoriba.genui GCWatlow.genui GBWatlow.genui ../UPS/TM/UPS.genui
	$(GENUI2ENG) GCToF.genui ../Zaber/TM/zaber.genui TMbase.genui sonic1.genui sonic2.genui ../DSDaq/TM/DSDaq.genui Zeno.genui ../GPS/TM/gpsd.genui GBHoriba.genui GCHoriba.genui GCWatlow.genui GBWatlow.genui ../UPS/TM/UPS.genui
GCToFengextcdf.oui : GCToFengext.cdf
	$(EDF2OUI) GCToFengext.cdf
GCToFengextcdf.tmc : GCToFengext.cdf
	$(EDF2EXT) GCToFengext.cdf
GCToFengext.cc : types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFengextcdf.tmc VERSION
	$(TMC) types.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc SWData.tmc /usr/local/share/huarp/tdrift.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/tmdf.tmc freemem.tmc /usr/local/share/huarp/flttime.tmc ../Sonic/TM/sonic_types.tmc sonic1.tmc sonic2.tmc ../DSDaq/TM/DS_types.tmc ../DSDaq/TM/Hercules.tmc ../DSDaq/TM/Athena1.tmc ../DSDaq/TM/Athena2.tmc ../Zeno/TM/Zeno.tmc ../GPS/TM/gpsd.tmc GBHoriba.tmc GCHoriba.tmc GCWatlow.tmc GBWatlow.tmc UPS.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFengextcdf.tmc
GCToFengextoui.c : GCToFengextcdf.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) GCToFengextcdf.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFengextoui.o : GCToFengextoui.c SWData.h
GCToFengext.o : GCToFengext.cc SWData.h
SWData.h SWData.tmc SWData_col.tmc SWData.cmd :  GCToF.sws
	swscomp -o SWData  GCToF.sws

tidy :
	rm -f $(OBJECT)
clean : tidy
	rm -f $(TARGET)
clean-dist : clean
$(IGNOREFILE) : Makefile
	@for i in $(OBJECT) $(TARGET); do echo "$$i"; done >$(IGNOREFILE)
../Sonic/TM/../sonic :
	cd ../Sonic/TM/.. && make sonic
.PHONY : clean-sonic
clean-dist : clean-sonic
clean-sonic :
	cd ../Sonic/TM/.. && make clean
../Sonic/TM/../sonic_csat3b :
	cd ../Sonic/TM/.. && make sonic_csat3b
.PHONY : clean-sonic3b
clean-dist : clean-sonic3b
clean-sonic3b :
	cd ../Sonic/TM/.. && make clean
../DSDaq/TM/../Hercules :
	cd ../DSDaq/TM/.. && make Hercules
../DSDaq/TM/../AthenaII :
	cd ../DSDaq/TM/.. && make AthenaII
.PHONY : clean-DSDaq
clean-dist : clean-DSDaq
clean-DSDaq :
	cd ../DSDaq/TM/.. && make clean
../Zeno/TM/../Zeno_Ser :
	cd ../Zeno/TM/.. && make
.PHONY : clean-Zeno
clean-dist : clean-Zeno
clean-Zeno :
	cd ../Zeno/TM/.. && make clean
../GPS/TM/../gpsd_client :
	cd ../GPS/TM/.. && make
.PHONY : clean-gpsd
clean-dist : clean-gpsd
clean-gpsd :
	cd ../GPS/TM/.. && make clean
GBHoriba.tmc GBHoriba_col.tmc GBHoriba.cmd GBHoriba_conv.tmc GBHoriba.genui GBHoriba.tbl : GBHoriba.txt ../Horiba/TM/Horiba_gen
	../Horiba/TM/Horiba_gen GBHoriba.txt name=GBHoriba
.PHONY : clean-Horiba
../Horiba/TM/../horiba :
	cd ../Horiba/TM/.. && make
clean-dist : clean-Horiba
clean-Horiba :
	cd ../Horiba/TM/.. && make clean
GCHoriba.tmc GCHoriba_col.tmc GCHoriba.cmd GCHoriba_conv.tmc GCHoriba.genui GCHoriba.tbl : GCHoriba.txt ../Horiba/TM/Horiba_gen
	../Horiba/TM/Horiba_gen GCHoriba.txt name=GCHoriba
GCWatlow.tmc GCWatlow_col.tmc GCWatlow.cmd GCWatlow.genui GCWatlow.tbl : GCWatlow.txt ../Modbus/TM/Watlow_gen
	../Modbus/TM/Watlow_gen GCWatlow.txt name=GCWatlow
.PHONY : clean-Watlow
../Modbus/TM/../modbus :
	cd ../Modbus/TM/.. && make
clean-dist : clean-Watlow
clean-Watlow :
	cd ../Modbus/TM/.. && make clean
GBWatlow.tmc GBWatlow_col.tmc GBWatlow.cmd GBWatlow.genui GBWatlow.tbl : GBWatlow.txt ../Modbus/TM/Watlow_gen
	../Modbus/TM/Watlow_gen GBWatlow.txt name=GBWatlow
../UPS/TM/../ups :
	cd ../UPS/TM/.. && make
.PHONY : clean-UPS
clean-dist : clean-UPS
clean-UPS :
	cd ../UPS/TM/.. && make clean
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
