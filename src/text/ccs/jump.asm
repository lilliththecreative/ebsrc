
CC_0A:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TAY
	STY @LOCAL00
	LDA #3
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_0A)
	JMP @UNKNOWN3
@UNKNOWN2:
	TXA
	STORE_INT1632 @VIRTUAL06
	SEP #PROC_FLAGS::INDEX8
	LDY #24
	JSL ASL32_ENTRY2
	PUSH32 @VIRTUAL06
	LDY #16
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+2, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	PUSH32 @VIRTUAL06
	LDY #8
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE+1, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CC_ARGUMENT_STORAGE, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	OR_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	PULL32 @VIRTUAL0A
	OR_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	PULL32 @VIRTUAL0A
	OR_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	REP #PROC_FLAGS::INDEX8
	LDY @LOCAL00
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA #NULL
@UNKNOWN3:
	END_C_FUNCTION
