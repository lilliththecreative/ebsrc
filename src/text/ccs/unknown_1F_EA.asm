
CC_1F_EA:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	STA @LOCAL00
	LDA CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BNE @UNKNOWN0
	LDA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1F_EA)
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::INDEX8
	LDY #8
	LDA @LOCAL00
	JSL ASL16_ENTRY2
	STA @VIRTUAL02
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	ORA @VIRTUAL02
	JSL UNKNOWN_C46616
	LDA #NULL
@UNKNOWN1:
	END_C_FUNCTION
