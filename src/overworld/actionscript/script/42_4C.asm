
MOVEMENT_CODE_42_4C:
	LDA [$80],Y
	STA CURRENT_ENTITY_TICK_CALLBACK
	INY
	INY
	LDA [$80],Y
	INY
	STA CURRENT_ENTITY_TICK_CALLBACK+2
	STY $94
	LDX $8A
	LDA ENTITY_SCRIPT_TEMPVARS,X
	JSL JUMP_TO_LOADED_MOVEMENT_PTR
	LDX $8A
	STA ENTITY_SCRIPT_TEMPVARS,X
	LDY $94
	RTS
