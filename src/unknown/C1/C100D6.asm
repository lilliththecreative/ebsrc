
UNKNOWN_C100D6:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL00
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C12E42
@UNKNOWN1:
	LDX @LOCAL00
	TXA
	DEX
	STX @LOCAL00
	CMP #0
	BNE @UNKNOWN0
	END_C_FUNCTION
