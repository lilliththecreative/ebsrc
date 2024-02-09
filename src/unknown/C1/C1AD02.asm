
UNKNOWN_C1AD02: ;$C1AD02
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA CITEM
	END_C_FUNCTION
=======
	LDA UNKNOWN_7E9D11
	RTS
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
