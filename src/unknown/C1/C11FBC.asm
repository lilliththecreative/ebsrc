
UNKNOWN_C11FBC:
	BEGIN_C_FUNCTION
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXY
	TAX
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7EAD5A,Y
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7EAD6A,Y
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	END_C_FUNCTION
