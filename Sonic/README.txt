Campbell Scientific
CSAT3 Three Dimensional Sonic Anemometer and
CSAT3B

Refer to the CSAT3 Instruction Manual Rev 2/07
http://s.campbellsci.com/documents/us/manuals/csat3.pdf

The CSAT3 has several selectable sample rates. Unfortunately, the
highest fully compatible sample rate is 2 Hz, which is well below the
CIMS data rate of 8 Hz.

After considering our options, we will configure the CSAT3 for
unprompted output at 60 Hz. This driver will read samples and average
them, reporting the average and the number of samples averaged to
telemetry at 8 Hz (or whatever rate TM specifies).

QNX6 Implementation
  TM_Selectee
    Finalize average and send data
  Cmd_Selectee
    Just for Quit
  Ser_Sel
    Don't add in data until an entire row is ready
    19200,8,n,1
    
sonic_csat3b is very similar to the sonic for the CSAT3, but the data is encoded differently. The manual is here:

  https://s.campbellsci.com/documents/us/manuals/csat3b.pdf
  
The data records look like:

  0.08945,0.06552,0.05726,19.69336,0,5,c3a6
  0.10103,0.06517,0.05312,19.70499,0,6,3927

With the fields being Ux,Uy,Uz,Ts,Diag,Record,Signature
  Ui: wind speed in m/sec
  Ts: temperature in Celsius
  Diag: Diagnostic word
  Record: Record counter
  Signature: hex CRC, calculated as the code below:

According to section 8.4.2 of the manual, the Diagnostic word
is reported as a decimal integer, but it is bit-mapped. All of
the values seem to be reasonably serious problems, but I suspect
they are also relatively rare. I'm not sure there is much point
in decoding. However, I will add a bit to indicate that a
record has been skipped based on the record counter. I will
use the high-order bit (0x8000) to be as far as possible from
the defined bits for future compatability.

// signature(), signature algorithm.
// Standard signature is initialized with a seed of 0xaaaa.
// Returns signature.
unsigned short signature(unsigned char* buf, int swath,
      unsigned short seed) {
  unsigned char msb, lsb;
  unsigned char b;
  int i;
  msb = seed >> 8;
  lsb = seed;
  for( i = 0; i < swath; i++ ) {
    b = (lsb << 1) + msb + *buf++;
    if( lsb & 0x80 ) b++;
    msb = lsb;
    lsb = b;
  }
  return (unsigned short)((msb << 8) + lsb);
}
