
CC_1E_01: ;$C14A03
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	LDA #$0001
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1E_01)
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	TAX
	BEQ @UNKNOWN3
	TXA
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR GET_ARGUMENT_MEMORY
	LDA @VIRTUAL06
@UNKNOWN4:
	LDY #$0000
	LDX @VIRTUAL02
	JSR REDUCE_HP_AMTPERCENT
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS
