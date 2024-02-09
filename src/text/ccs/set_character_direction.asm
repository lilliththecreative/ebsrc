
CC_1F_13: ;$C163FD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXA
	STA $0E
	LDA #$0001
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1F_13)
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	BEQ @ARG_1_IS_ZERO
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE, $06
	BRA @ARG_1_IS_NONZERO
@ARG_1_IS_ZERO:
	JSR GET_WORKING_MEMORY
@ARG_1_IS_NONZERO:
	SEP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	BEQ @ARG_2_IS_ZERO
	STORE_INT1632 $06
	BRA @ARG_2_IS_NONZERO
@ARG_2_IS_ZERO:
	JSR GET_ARGUMENT_MEMORY
@ARG_2_IS_NONZERO:
	LDA $06
	TAX
	DEX
	LDA $00
	AND #$00FF
	JSL UNKNOWN_C46363
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
