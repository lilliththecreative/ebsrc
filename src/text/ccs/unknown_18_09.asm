
CC_18_09:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	LDX #1
	JSR UNKNOWN_C19A11
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
	END_C_FUNCTION
