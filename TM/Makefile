# Makefile Generated Sun Sep 20 16:46:44 EDT 2015
MNC=GCToF
SPECFILE=GCToF.spec
PCMFILE=GCToF.pcm
SRC=types.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc SWData.h
SRC+=TwisTorr_conv.tmc nXDS_conv.tmc GCToF.tbl GCToF.tma GCToF.sws
SRC+=GCToFeng.cdf GCToF.doit TwisTorr.cmd nXDS.cmd SWData.cmd
SRC+=TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc
TOOL=GCToF.spec Makefile
SCRIPT=interact
OBJ=SWData.cmd SWData.h SWData.tmc SWData_col.tmc GCToFtbl.tmc
OBJ+=GCToFdisp.cc GCToFdispoui.c GCToFdispoui.o GCToFdisp.o
OBJ+=GCToFtblnc.tmc GCToFdispnc.cc GCToFdispncoui.c GCToFdispncoui.o
OBJ+=GCToFdispnc.o GCToFsws.tma GCToFalgoa.tmc GCToFalgo.cc
OBJ+=GCToFalgooui.c GCToFalgooui.o GCToFalgo.o GCToFengextcdf.oui
OBJ+=GCToFengext.tmc GCToFengext.cc GCToFengextoui.c GCToFengextoui.o
OBJ+=GCToFengext.o doit.dep GCToFcmd.cc GCToFcmd.dat GCToFclt.o
OBJ+=GCToFcltoui.c GCToFcltoui.o GCToFcltnc.o GCToFcltncoui.c
OBJ+=GCToFcltncoui.o GCToFsrvr.o GCToFsrvroui.c GCToFsrvroui.o
OBJ+=GCToFcol.cc GCToF.pcm tm.dac GCToFcoloui.c GCToFcoloui.o
OBJ+=GCToFcol.o
TGT=GCToFdisp GCToFdispnc GCToFalgo GCToFengext doit GCToFclt
TGT+=GCToFcltnc GCToFsrvr GCToFcol
DISTRIB=../Agilent/TwisTorr ../Edwards/nXDS GCToF.pcm tm.dac
IDISTRIB=Experiment.config VERSION doit
SRCDIST=GCToF.tbl GCToF.tma types.tmc
SRCDIST+=/usr/local/share/huarp/tmdf.tmc
SRCDIST+=/usr/local/share/huarp/cpu_usage.tmc
SRCDIST+=/usr/local/share/huarp/freemem.tmc
SRCDIST+=/usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc
SRCDIST+=nXDS.tmc SWData.tmc SWData.h
TMCBASE=types.tmc /usr/local/share/huarp/tmdf.tmc
TMCBASE+=/usr/local/share/huarp/cpu_usage.tmc
TMCBASE+=/usr/local/share/huarp/freemem.tmc
TMCBASE+=/usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc
TMCBASE+=nXDS.tmc SWData.tmc SWData.h
CMDBASE=/usr/local/share/huarp/root.cmd
CMDBASE+=/usr/local/share/huarp/getcon.cmd TwisTorr.cmd nXDS.cmd
CMDBASE+=SWData.cmd
COLBASE=/usr/local/share/huarp/tmdf_col.tmc
COLBASE+=/usr/local/share/huarp/cpu_usage_col.tmc
COLBASE+=/usr/local/share/huarp/freemem_col.tmc TwisTorr_col.tmc
COLBASE+=nXDS_col.tmc SWData_col.tmc
SWSBASE=GCToF.sws
QCLIBASE=
PHTGT=GCToFtbl.tmc
RCS=$(SRC) $(TOOL) $(SCRIPT)
SOURCE=$(RCS) $(NONRCS)
OBJECT=$(OBJ) *.err
TARGET=$(TGT)
DSTRB=$(TGT) $(DISTRIB) $(SCRIPT)
TGTDIR= $(TGTNODE)/home/GCToF
include /usr/local/share/huarp/appgen.mk

.PHONY : all extdistribution distribution clean check_photon

all : Makefile check_photon $(TGT) .cvsignore
Makefile : GCToF.spec
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
GCToFengext : GCToFengext.o GCToFengextoui.o
	$(LINK.normCXX) GCToFengext.o GCToFengextoui.o -ltmpp -ltm -lnort
	$(OUIUSE) GCToFengextoui.c
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
GCToFtbl.tmc : GCToF.tbl
GCToFdisp.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc TwisTorr_conv.tmc nXDS_conv.tmc GCToFtbl.tmc
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc TwisTorr_conv.tmc nXDS_conv.tmc GCToFtbl.tmc
GCToFdispoui.c : $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFdispoui.o : GCToFdispoui.c SWData.h
GCToFdisp.o : GCToFdisp.cc SWData.h
GCToFtblnc.tmc : GCToF.tbl
GCToFdispnc.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc TwisTorr_conv.tmc nXDS_conv.tmc GCToFtblnc.tmc
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc TwisTorr_conv.tmc nXDS_conv.tmc GCToFtblnc.tmc
GCToFdispncoui.c : $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFdispncoui.o : GCToFdispncoui.c SWData.h
GCToFdispnc.o : GCToFdispnc.cc SWData.h
GCToFsws.tma : GCToF.sws
	$(COMPILE.sws) GCToF.sws
GCToFalgoa.tmc : GCToF.tma GCToFsws.tma GCToFsrvr
	$(SERVER) ./GCToFsrvr
	$(TMCALGO) -V "`./GCToFsrvr -R`" GCToF.tma GCToFsws.tma
GCToFalgo.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc GCToFalgoa.tmc
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc GCToFalgoa.tmc
GCToFalgooui.c : $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFalgooui.o : GCToFalgooui.c SWData.h
GCToFalgo.o : GCToFalgo.cc SWData.h
GCToFengextcdf.oui : GCToFeng.cdf
	$(EDF2OUI) GCToFeng.cdf
GCToFengext.tmc : GCToFeng.cdf
	$(EDF2EXT) GCToFeng.cdf
GCToFengext.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc GCToFengext.tmc
	$(TMC) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc GCToFengext.tmc
GCToFengextoui.c : GCToFengextcdf.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) GCToFengextcdf.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
GCToFengextoui.o : GCToFengextoui.c SWData.h
GCToFengext.o : GCToFengext.cc SWData.h
doit.dep : GCToF.doit
	mkdoit3 -M -o doit  GCToF.doit
-include doit.dep
GCToFcmd.cc : /usr/local/share/huarp/root.cmd /usr/local/share/huarp/getcon.cmd TwisTorr.cmd nXDS.cmd SWData.cmd
	$(CMDGEN) -d GCToFcmd.dat /usr/local/share/huarp/root.cmd /usr/local/share/huarp/getcon.cmd TwisTorr.cmd nXDS.cmd SWData.cmd
GCToFclt.o : GCToFcmd.cc
	$(COMPILE.clt) GCToFcmd.cc
GCToFcltoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
GCToFcltoui.o : GCToFcltoui.c
GCToFcltnc.o : GCToFcmd.cc
	$(COMPILE.cltnc) GCToFcmd.cc
GCToFcltncoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
GCToFcltncoui.o : GCToFcltncoui.c
GCToFsrvr.o : GCToFcmd.cc
	$(COMPILE.srvr) GCToFcmd.cc
GCToFsrvroui.c : $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
GCToFsrvroui.o : GCToFsrvroui.c
GCToFcol.cc : types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc /usr/local/share/huarp/tmdf_col.tmc /usr/local/share/huarp/cpu_usage_col.tmc /usr/local/share/huarp/freemem_col.tmc TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc
	$(TMC.col) types.tmc /usr/local/share/huarp/tmdf.tmc /usr/local/share/huarp/cpu_usage.tmc /usr/local/share/huarp/freemem.tmc /usr/local/share/huarp/flttime.tmc base.tmc TwisTorr.tmc nXDS.tmc SWData.tmc /usr/local/share/huarp/tmdf_col.tmc /usr/local/share/huarp/cpu_usage_col.tmc /usr/local/share/huarp/freemem_col.tmc TwisTorr_col.tmc nXDS_col.tmc SWData_col.tmc
GCToFcoloui.c : $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/msg.oui
GCToFcoloui.o : GCToFcoloui.c SWData.h
GCToFcol.o : GCToFcol.cc SWData.h
SWData.h SWData.tmc SWData_col.tmc SWData.cmd :  GCToF.sws
	swscomp -o SWData  GCToF.sws

tidy :
	rm -f $(OBJECT)
clean : tidy
	rm -f $(TARGET)
.cvsignore : Makefile
	@for i in $(OBJECT) $(TARGET); do echo "$$i"; done >.cvsignore
CPPFLAGS += -I ../Agilent -I ../Edwards
GCToFeng.cdf : genui.txt
	genui -d ../eng -c genui.txt
../Agilent/TwisTorr :
	cd ../Agilent && make
../Edwards/nXDS :
	cd ../Edwards && make
