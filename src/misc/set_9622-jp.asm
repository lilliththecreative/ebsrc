
SET_9622_ONE: ;$C3E4D4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9622)
	REP #PROC_FLAGS::ACCUM8
	RTS
