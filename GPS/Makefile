GPSOBJ=gpsd_client.o gpsdoui.o
OBJECT=$(GPSOBJ) gpsdoui.c
CXXFLAGS=-Wall -g
CFLAGS=-Wall -g
GPSD_LDFLAGS=-L gpsd -l gpsd

TARGET=gpsd_client

all : $(TARGET)

# Fix up the GPSD library stuff
gpsd_client : $(GPSOBJ)
	$(LINK.normCXX) $(GPSOBJ) $(GPSD_LDFLAGS) -ltmpp -ltm -lnort
	usemsg gpsd_client gpsdoui.c
gpsdoui.c : gpsd.oui
	oui -o gpsdoui.c gpsd.oui

clean :
	rm -f $(OBJECT) $(TARGET)

include /usr/local/share/huarp/appgen.mk
