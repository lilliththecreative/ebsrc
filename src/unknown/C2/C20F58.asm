
UNKNOWN_C20F58:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_RETURN_INT32
	END_STACK_VARS
	LDA UNKNOWN_7E9695
	AND #$00FF
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::INDEX8
	LDY #1
	MOVE_INT UNKNOWN_7E9627, @VIRTUAL06
	JSL ASR32
	MOVE_INT @VIRTUAL06, @RETURNVAL
	BRA @UNKNOWN1
@UNKNOWN0:
	MOVE_INT UNKNOWN_7E9627, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @RETURNVAL
@UNKNOWN1:
	REP #PROC_FLAGS::INDEX8
	END_C_FUNCTION
