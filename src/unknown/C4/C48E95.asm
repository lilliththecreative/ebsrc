
UNKNOWN_C48E95:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA UNKNOWN_7E9F18
	INC
	STA UNKNOWN_7E9F18
	OPTIMIZED_MULT @VIRTUAL04, 3
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E9E58,X
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR UNKNOWN_7E9E58, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL UNKNOWN_C0402B
	END_C_FUNCTION
