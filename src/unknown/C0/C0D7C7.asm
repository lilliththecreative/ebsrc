
UNKNOWN_C0D7C7:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA UNKNOWN_7E4DBE
	STA ENTITY_ABS_X_TABLE,X
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA UNKNOWN_7E4DC0
	STA ENTITY_ABS_Y_TABLE,X
	RTL
