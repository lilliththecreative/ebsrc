
CC_10: ;$C14EAB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TXA
	JSR UNKNOWN_C100D6
	LDA #NULL
	RTS
