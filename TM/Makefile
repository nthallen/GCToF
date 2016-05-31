# Invoking: appgen_module Horiba X src=GBHoriba.txt name=GBHoriba mode=driver
# Invoking: appgen_module Horiba X src=GCHoriba.txt name=GCHoriba
# Makefile Generated Mon May 30 20:37:45 EDT 2016
MNC=GCToF
SPECFILE=GCToF.spec
PCMFILE=GCToF.pcm
SRC=GBHoriba.txt GCHoriba.txt types.tmc base.tmc TwisTorr.tmc
SRC+=nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc SWData.h
SRC+=GBHoriba.tmc GCHoriba.tmc TwisTorr_conv.tmc nXDS_conv.tmc
SRC+=GBHoriba_conv.tmc GCHoriba_conv.tmc GCToF.tbl nXDS.tbl sonic.tbl
SRC+=UPS.tbl GCToF.tma GCToF.sws GCToF.doit TwisTorr.cmd nXDS.cmd
SRC+=zaber.cmd SWData.cmd GBHoriba.cmd GCHoriba.cmd TwisTorr_col.tmc
SRC+=nXDS_col.tmc sonic_col.tmc UPS_col.tmc SWData_col.tmc
SRC+=GBHoriba_col.tmc GCHoriba_col.tmc GCToF.genui GBHoriba.genui
SRC+=GCHoriba.genui
TOOL=GCToF.spec Makefile
SCRIPT=interact
OBJ=SWData.cmd SWData.h SWData.tmc SWData_col.tmc GCToFtbl.tmc
OBJ+=nXDStbl.tmc sonictbl.tmc UPStbl.tmc GCToFdisp.cc GCToFdispoui.c
OBJ+=GCToFdispoui.o GCToFdisp.o GCToFtblnc.tmc nXDStblnc.tmc
OBJ+=sonictblnc.tmc UPStblnc.tmc GCToFdispnc.cc GCToFdispncoui.c
OBJ+=GCToFdispncoui.o GCToFdispnc.o GCToFsws.tma GCToFalgoa.tmc
OBJ+=GCToFalgo.cc GCToFalgooui.c GCToFalgooui.o GCToFalgo.o doit.dep
OBJ+=GCToFcmd.cc GCToFcmd.dat GCToFclt.o GCToFcltoui.c GCToFcltoui.o
OBJ+=GCToFcltnc.o GCToFcltncoui.c GCToFcltncoui.o GCToFsrvr.o
OBJ+=GCToFsrvroui.c GCToFsrvroui.o GCToFcol.cc GCToF.pcm tm.dac
OBJ+=GCToFcoloui.c GCToFcoloui.o GCToFcol.o GCToFengext.cdf
OBJ+=GCToFengextcdf.oui GCToFengextcdf.tmc GCToFengext.cc
OBJ+=GCToFengextoui.c GCToFengextoui.o GCToFengext.o GCToFtbl.tmc.dep
OBJ+=nXDStbl.tmc.dep sonictbl.tmc.dep UPStbl.tmc.dep
OBJ+=GCToFtblnc.tmc.dep nXDStblnc.tmc.dep sonictblnc.tmc.dep
OBJ+=UPStblnc.tmc.dep
TGT=GCToFdisp GCToFdispnc GCToFalgo doit GCToFclt GCToFcltnc
TGT+=GCToFsrvr GCToFcol GCToFengext
DISTRIB=../Agilent/TwisTorr ../Edwards/nXDS ../IonGauge/IonGauge
DISTRIB+=../Zaber/zaber ../Sonic/sonic ../UPS/ups
DISTRIB+=../Horiba/TM/../horiba ../Zeno/Zeno_Ser GCToF.pcm tm.dac
IDISTRIB=Experiment.config VERSION doit
SRCDIST=GCToF.tbl nXDS.tbl sonic.tbl UPS.tbl GCToF.tma types.tmc
SRCDIST+=/usr/local/share/huarp/tmdf.tmc
SRCDIST+=/usr/local/share/huarp/cpu_usage.tmc
SRCDIST+=/usr/local/share/huarp/freemem.tmc
SRCDIST+=/usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc
SRCDIST+=nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc
SRCDIST+=SWData.h GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc
TMCBASE=types.tmc /usr/local/share/huarp/tmdf.tmc
TMCBASE+=/usr/local/share/huarp/cpu_usage.tmc
TMCBASE+=/usr/local/share/huarp/freemem.tmc
TMCBASE+=/usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc
TMCBASE+=nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc
TMCBASE+=SWData.h GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc
CMDBASE=/usr/local/share/huarp/root.cmd
CMDBASE+=/usr/local/share/huarp/getcon.cmd TwisTorr.cmd nXDS.cmd
CMDBASE+=zaber.cmd ../UPS/TM/UPS.cmd SWData.cmd SWData.h GBHoriba.cmd
CMDBASE+=GCHoriba.cmd ../Zeno/TM/Zeno.cmd
COLBASE=/usr/local/share/huarp/tmdf_col.tmc
COLBASE+=/usr/local/share/huarp/cpu_usage_col.tmc
COLBASE+=/usr/local/share/huarp/freemem_col.tmc TwisTorr_col.tmc
COLBASE+=nXDS_col.tmc sonic_col.tmc UPS_col.tmc SWData_col.tmc
COLBASE+=GBHoriba_col.tmc GCHoriba_col.tmc ../Zeno/TM/Zeno_col.tmc
SWSBASE=GCToF.sws
QCLIBASE=
SPECDEPBASE=../Horiba/TM/Horiba.agm
AG_CPPFLAGS=-I ../Horiba/TM/..
PHTGT=GCToFtbl.tmc nXDStbl.tmc sonictbl.tmc UPStbl.tmc
RCS=$(SRC) $(TOOL) $(SCRIPT)
SOURCE=$(RCS) $(NONRCS)
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
GCToFdisp : GCToFdisp.o GCToFdispoui.o
	$(LINK.normCXX) GCToFdisp.o GCToFdispoui.o -ldisp -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) GCToFdispoui.c
GCToFdispnc : GCToFdispnc.o GCToFdispncoui.o
	$(LINK.normCXX) GCToFdispnc.o GCToFdispncoui.o -ldispnc -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) GCToFdispncoui.c
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
GCToFcol : GCToFcol.o GCToFcoloui.o
	$(LINK.privCXX) GCToFcol.o GCToFcoloui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFcoloui.c
	$(PROMOTE) GCToFcol
GCToFengext : GCToFengext.o GCToFengextoui.o
	$(LINK.normCXX) GCToFengext.o GCToFengextoui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFengextoui.c
GCToFtbl.tmc : GCToF.tbl
-include GCToFtbl.tmc.dep
nXDStbl.tmc : nXDS.tbl
-include nXDStbl.tmc.dep
sonictbl.tmc : sonic.tbl
-include sonictbl.tmc.dep
UPStbl.tmc : UPS.tbl
-include UPStbl.tmc.dep
GCToFdisp.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtbl.tmc nXDStbl.tmc sonictbl.tmc UPStbl.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtbl.tmc nXDStbl.tmc sonictbl.tmc UPStbl.tmc
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
UPStblnc.tmc : UPS.tbl
-include UPStblnc.tmc.dep
GCToFdispnc.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtblnc.tmc nXDStblnc.tmc sonictblnc.tmc UPStblnc.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc TwisTorr_conv.tmc nXDS_conv.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFtblnc.tmc nXDStblnc.tmc sonictblnc.tmc UPStblnc.tmc
GCToFdispncoui.c : $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFdispncoui.o : GCToFdispncoui.c SWData.h
GCToFdispnc.o : GCToFdispnc.cc SWData.h
GCToFsws.tma : GCToF.sws
	$(COMPILE.sws) GCToF.sws
GCToFalgoa.tmc : GCToF.tma GCToFsws.tma GCToFsrvr
	$(SERVER) ./GCToFsrvr
	$(TMCALGO) -V "`./GCToFsrvr -R`" GCToF.tma GCToFsws.tma
GCToFalgo.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc GCToFalgoa.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc GCToFalgoa.tmc
GCToFalgooui.c : $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFalgooui.o : GCToFalgooui.c SWData.h
GCToFalgo.o : GCToFalgo.cc SWData.h
doit.dep : GCToF.doit
	mkdoit3 -M -o doit  GCToF.doit
-include doit.dep
GCToFcmd.cc : /usr/local/share/huarp/root.cmd /usr/local/share/huarp/getcon.cmd TwisTorr.cmd nXDS.cmd zaber.cmd ../UPS/TM/UPS.cmd SWData.cmd GBHoriba.cmd GCHoriba.cmd ../Zeno/TM/Zeno.cmd
	$(CMDGEN) -d GCToFcmd.dat /usr/local/share/huarp/root.cmd /usr/local/share/huarp/getcon.cmd TwisTorr.cmd nXDS.cmd zaber.cmd ../UPS/TM/UPS.cmd SWData.cmd GBHoriba.cmd GCHoriba.cmd ../Zeno/TM/Zeno.cmd
GCToFclt.o : GCToFcmd.cc SWData.h
	$(COMPILE.clt) GCToFcmd.cc
GCToFcltoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
GCToFcltoui.o : GCToFcltoui.c SWData.h
GCToFcltnc.o : GCToFcmd.cc SWData.h
	$(COMPILE.cltnc) GCToFcmd.cc
GCToFcltncoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
GCToFcltncoui.o : GCToFcltncoui.c SWData.h
GCToFsrvr.o : GCToFcmd.cc SWData.h
	$(COMPILE.srvr) GCToFcmd.cc
GCToFsrvroui.c : $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
GCToFsrvroui.o : GCToFsrvroui.c SWData.h
GCToFcol.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc /usr/local/share/huarp/tmdf_col.tmc /usr/local/share/huarp/cpu_usage_col.tmc /usr/local/share/huarp/freemem_col.tmc TwisTorr_col.tmc nXDS_col.tmc sonic_col.tmc UPS_col.tmc SWData_col.tmc GBHoriba_col.tmc GCHoriba_col.tmc ../Zeno/TM/Zeno_col.tmc VERSION
	$(TMC.col) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc /usr/local/share/huarp/tmdf_col.tmc /usr/local/share/huarp/cpu_usage_col.tmc /usr/local/share/huarp/freemem_col.tmc TwisTorr_col.tmc nXDS_col.tmc sonic_col.tmc UPS_col.tmc SWData_col.tmc GBHoriba_col.tmc GCHoriba_col.tmc ../Zeno/TM/Zeno_col.tmc
GCToFcoloui.c : $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
GCToFcoloui.o : GCToFcoloui.c SWData.h
GCToFcol.o : GCToFcol.cc SWData.h
GCToFengext.cdf : GCToF.genui ../UPS/TM/UPS.genui ../Zaber/TM/zaber.genui GBHoriba.genui GCHoriba.genui ../Zeno/TM/Zeno.genui
	$(GENUI2ENG) GCToF.genui ../UPS/TM/UPS.genui ../Zaber/TM/zaber.genui GBHoriba.genui GCHoriba.genui ../Zeno/TM/Zeno.genui
GCToFengextcdf.oui : GCToFengext.cdf
	$(EDF2OUI) GCToFengext.cdf
GCToFengextcdf.tmc : GCToFengext.cdf
	$(EDF2EXT) GCToFengext.cdf
GCToFengext.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFengextcdf.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc zaber.tmc IG.tmc sonic.tmc UPS.tmc SWData.tmc GBHoriba.tmc GCHoriba.tmc ../Zeno/TM/Zeno.tmc GBHoriba_conv.tmc GCHoriba_conv.tmc GCToFengextcdf.tmc
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
GBHoriba.tmc GBHoriba_col.tmc GBHoriba.cmd GBHoriba_conv.tmc GBHoriba.genui GBHoriba.tbl : GBHoriba.txt ../Horiba/TM/Horiba_gen
	../Horiba/TM/Horiba_gen GBHoriba.txt name=GBHoriba
.PHONY : clean-Horiba
../Horiba/TM/../horiba :
	cd ../Horiba/TM/.. && make
clean-dist : clean-Horiba
clean-Horiba :
	cd @MODDIR/.. && make clean
GCHoriba.tmc GCHoriba_col.tmc GCHoriba.cmd GCHoriba_conv.tmc GCHoriba.genui GCHoriba.tbl : GCHoriba.txt ../Horiba/TM/Horiba_gen
	../Horiba/TM/Horiba_gen GCHoriba.txt name=GCHoriba
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
