
SET_INSTANT_PRINTING: ;$C3E4D4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	STA INSTANT_PRINTING
=======
	LDA #$0001
	STA UNKNOWN_7E9622
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
.IF .DEFINED(JPN)
	RTS
.ELSE
	RTL
.ENDIF
