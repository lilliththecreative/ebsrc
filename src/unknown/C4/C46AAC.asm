
UNKNOWN_C46AAC: ;$C46AAC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA CURRENT_ENTITY_SLOT
	ASL
	STA $12
	TAX
	LDA ENTITY_SCRIPT_VAR7_TABLE,X
	STA $0E
	LDA $12
	TAX
	LDY ENTITY_SCRIPT_VAR6_TABLE,X
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	TAX
	STX $10
	LDA $12
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	LDX $10
	JSL GET_DIRECTION_TO
	PLD
	RTL
