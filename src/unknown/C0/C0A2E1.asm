
UNKNOWN_C0A2E1:
	LDX $88
	LDA ENTITY_SCREEN_Y_TABLE,Y
	EOR ENTITY_SCREEN_Y_TABLE,X
	BNE @UNKNOWN2
	LDA ENTITY_ABS_X_TABLE,Y
	SEC
	SBC ENTITY_ABS_X_TABLE,X
	BPL @UNKNOWN0
	EOR #$FFFF
	INC
@UNKNOWN0:
	LDY ENTITY_SCRIPT_VAR5_TABLE,X
	TYX
	SEC
	SBC f:UNKNOWN_C0A2AB,X
	BPL @UNKNOWN1
	EOR #$FFFF
	INC
@UNKNOWN1:
	BEQ @UNKNOWN2
	DEC
@UNKNOWN2:
	RTS
