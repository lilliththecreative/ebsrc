
UNKNOWN_C0A089:
	LDX $88
	LDA ENTITY_ABS_X_TABLE,X
	CLC
	ADC BG3_X_POS
	STA ENTITY_ABS_X_TABLE,X
	LDA ENTITY_ABS_Y_TABLE,X
	CLC
	ADC BG3_Y_POS
	STA ENTITY_ABS_Y_TABLE,X
	RTL
