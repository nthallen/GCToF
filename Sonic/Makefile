SONICOBJ=sonic.o sonicoui.o
SONIC3BOBJ=sonic_csat3b.o sonicoui.o
OBJECT=$(SONICOBJ) sonicoui.c
CXXFLAGS=-Wall -g
CFLAGS=-Wall -g

TARGET=sonic sonic_csat3b

all : $(TARGET)

sonic : $(SONICOBJ)
	$(LINK.normCXX) $(SONICOBJ) -ltmpp -ltm -lnort
	usemsg sonic sonicoui.c
sonic_csat3b : $(SONIC3BOBJ)
	$(LINK.normCXX) $(SONIC3BOBJ) -ltmpp -ltm -lnort
	usemsg sonic_csat3b sonicoui.c
sonicoui.c : sonic.oui
	oui -o sonicoui.c sonic.oui

clean :
	rm $(OBJECT) $(TARGET)

include /usr/local/share/huarp/appgen.mk
