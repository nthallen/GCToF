Diamond Systems Data Acquisition Driver Library

The basic idea here is to create a library for use by the driver itself and clients.
There is no reason these couldn't be two libraries, but since we need both client
and server on the system, they can be combined.

dsdaq.h will define the client api

dsdaqdrv.h will define the driver api

dsdaqmsg.h will define the message structure

Two drivers will be built here:
  Hercules: for the Hercules board I/O
  AthenaII: for the AthenaIII boards I/O in the Gas Box and GC Control Box
  
The Hercules driver needs to be customized to support strobed commands.
The AthenaII driver does not.

See the implementation in the ToF instrument for example usage.
