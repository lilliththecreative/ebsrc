
MOVEMENT_CODE_32: ;$C097EF
	LDA [$80],Y
	AND #$00FF
	ASL
	TAX
	INY
	LDA [$80],Y
	STA ENTITY_BG_VERTICAL_OFFSET_LOW,X
	STZ ENTITY_BG_VERTICAL_OFFSET_HIGH,X
	INY
	INY
	RTS
