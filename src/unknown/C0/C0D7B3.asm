
UNKNOWN_C0D7B3: ;$C0D7B3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	STA ACTIONSCRIPT_BACKUP_X
	LDA ENTITY_ABS_Y_TABLE,X
	STA ACTIONSCRIPT_BACKUP_Y
	RTL
