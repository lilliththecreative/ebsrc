
<<<<<<< HEAD
UNKNOWN_C08CBB:
	LDX PRIORITY_3_SPRITE_OFFSET
	STA PRIORITY_3_SPRITEMAPS,X
=======
UNKNOWN_C08CBB: ;$C08CBB
	LDX UNKNOWN_7E280A
	STA UNKNOWN_7E270A,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	PLA
	STA PRIORITY_3_SPRITE_X,X
	TYA
	STA PRIORITY_3_SPRITE_Y,X
	LDA SPRITEMAP_BANK
	STA PRIORITY_3_SPRITEMAP_BANKS,X
	INX
	INX
	STX PRIORITY_3_SPRITE_OFFSET
	RTS
