
UNKNOWN_C0F3B2:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	END_STACK_VARS
	LOADPTR GAS_STATION_PALETTE_2, @LOCAL00
	PROMOTENEARPTR PALETTES, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	LDA #$18
	JSL UNKNOWN_C0856B
	END_C_FUNCTION
