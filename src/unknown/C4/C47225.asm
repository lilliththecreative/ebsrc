
UNKNOWN_C47225: ;$C47225
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	STA @VIRTUAL04
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAY
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	TAX
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL02
	STA ENTITY_SCRIPT_VAR0_TABLE,Y
	LDA __BSS_START__,X
	CLC
	ADC @VIRTUAL02
	STA ENTITY_SCRIPT_VAR1_TABLE,Y
	TYA
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAX
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL04
	STA ENTITY_SCRIPT_VAR2_TABLE,Y
	LDA __BSS_START__,X
	CLC
	ADC @VIRTUAL04
	STA ENTITY_SCRIPT_VAR3_TABLE,Y
	PLD
	RTL
