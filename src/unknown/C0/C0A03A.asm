
UNKNOWN_C0A03A: ;$C0A03A
	LDX $88
	LDA ENTITY_ABS_X_TABLE,X
	SEC
	SBC BG1_X_POS
	STA ENTITY_SCREEN_X_TABLE,X
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC BG1_Y_POS
	SEC
	SBC ENTITY_ABS_Z_TABLE,X
	STA ENTITY_SCREEN_Y_TABLE,X
	RTS
