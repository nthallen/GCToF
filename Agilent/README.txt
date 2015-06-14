Agilent README

This directory holds a driver for Agilent's TwisTorr Pump Controller.
It probably sbould have been named TwisTorr.

Command Format
  W:<drive>:<window>:<value>

  <drive> is the drive index less than N_TWISTORR_DRIVES. This is
    mapped to an RS485 address via the TwisTorr::TT_DevNo array.
  <window> is the register number for the command
  <value> is a value of the appropriate format for the specified
    window.
