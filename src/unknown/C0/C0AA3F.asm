
UNKNOWN_C0AA3F:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDX #$0033
	DEC
	BNE @UNKNOWN0
	LDX #$00B3
@UNKNOWN0:
	PHX
	JSL MOVEMENT_DATA_READ8
	STY $94
	STA ACTIONSCRIPT_COLDATA_BLUE
	JSL MOVEMENT_DATA_READ8
	STY $94
	STA ACTIONSCRIPT_COLDATA_GREEN
	JSL MOVEMENT_DATA_READ8
	STY $94
	STA ACTIONSCRIPT_COLDATA_RED
	PLA
	JSL UNKNOWN_C42439
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
