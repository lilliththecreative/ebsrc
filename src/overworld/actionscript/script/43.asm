
MOVEMENT_CODE_43: ;$C09931
	LDX $88
	LDA [$80],Y
	AND #$00FF
	INY
	STA ENTITY_DRAW_PRIORITY,X
	RTS
