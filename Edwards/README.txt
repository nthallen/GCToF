Edwards README

This directory holds a driver for Edwards nXDS Scroll Pump.

  9600/8/1/N
  Max message size is 80 chars, include start and end chars
  All alpha must be sent in upper case. Response may contain lower case

  Commands start with '!'
  Query starts with '?'

  'S' indicates statis non-volatile memory
  'C' and 'V' refer to non-persistent data

  Command structure:

    * #
    * [to address]:[from address]
    * Start character ('!' or '?')
    * Command (upper case alpha, followed by)
    * 
      * an object number ([0-9]{3}), followed by
      * for some commands only, [space][additional characters]

    * terminating carriage return

  Must assign multidrop address before introducing pump into multidrop setup. Manual provides a detailed procedure.
  Apparently the identify query ?S801 has the longest reply, something like 292 chars including the echo.

  Command confirmation come as " #" after repeating the command number. Details listed on page 15. 0 is no error

  Commands: (In the examples I assume I am addressing device 01. I am using device #55 for the master)

    * Start pump: "#01:55!C802 1\r" Reply: "#55:01*C802 r\r" where r is return code
    * Stop pump: "#01:55!C802 0\r" Reply: "#55:01*C802 r\r"
    * Full Speed: "#01:55!C803 0\r" Reply: "#55:01*C803 r\r"
    * Standby Speed: "#01:55!C803 1\r" Reply: "#55:01*C803 r\r"
    * Set Standby Speed: "#01:55!C805 ##\r" "#55:01*C805 r\r"
    
  Return Codes (r):
    0: No error
    1: Invalid command for object ID
    2: Invalid query/command
    3: Missing parameter
    4: Parameter out of range
    5: Invalid command in current state

  Readbacks:

    * Pump and controller temp: ?V808
    * Link voltage, motor current /power: ?V809
    * Motor Frequency: ?V802  (includes system status)
    * Identification
    * Service Status (just at startup)

Command Server Interface
  Command Syntax: \d+:\d+:\d+
    drive number: 0 to N_NXDS_DRIVES-1
    address: One of 802, 803 or 805
    value: As appropriate
    examples:
      0:802:1  # start pump on drive 0
      0:802:0  # stop pump on drive 0
      0:803:1  # drive 0 to standby speed
      0:803:0  # drive 0 to full speed
      1:805:70 # Set drive 1 standby speed to 70% of full speed