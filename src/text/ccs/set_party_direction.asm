
CC_1F_14: ;$C1646E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	BEQ @ARG_IS_ZERO
	STORE_INT1632 @VIRTUAL06
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR GET_ARGUMENT_MEMORY
@ARG_IS_NONZERO:
	LDA @VIRTUAL06
	DEC
	JSL UNKNOWN_C46397
	LDA #NULL
	PLD
	RTS
