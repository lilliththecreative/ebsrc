
MOVEMENT_CODE_40_4A: ;$C09731
	LDX $88
	LDA [$80],Y
	INY
	INY
	STA $90
	AND #$00FF
	XBA
	STA ENTITY_DELTA_Y_FRACTION_TABLE,X
	LDA $90
	AND #$FF00
	BPL @UNKNOWN0
	ORA #$00FF
@UNKNOWN0:
	XBA
	STA ENTITY_DELTA_Y_TABLE,X
	RTS
