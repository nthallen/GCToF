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

Commands:

	* Start pump: !C802 1
	* Stop pump: !C802 0
	* Full Speed: !C803 0
	* Standby Speed: !C803 1
	* Set Standby Speed: !C805 ##

Readbacks:

	* Pump and controller temp: ?V808
	* Link voltage, motor current /power: ?V809
	* Motor Frequency: ?V802  (includes system status)
	* Identification
	* Service Status (just at startup)

