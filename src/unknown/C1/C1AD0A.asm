
UNKNOWN_C1AD0A: ;$C1AD0A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL06
<<<<<<< HEAD
	MOVE_INT @VIRTUAL06, CNUM
	END_C_FUNCTION
=======
	MOVE_INT @VIRTUAL06, UNKNOWN_7E9D12
	PLD
	RTS
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
