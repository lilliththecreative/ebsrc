
UNKNOWN_C1C367: ;$C1C367
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDY #$000F
	LDX #$0001
	JSR a:.LOWORD(UNKNOWN_C1C32A)
	RTL