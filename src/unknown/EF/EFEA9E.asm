
<<<<<<< HEAD
UNKNOWN_EFEA9E:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	STZ REPLAY_MODE_ACTIVE
	END_C_FUNCTION
=======
UNKNOWN_EFEA9E: ;$EFEA9E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ UNKNOWN_7EB567
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
