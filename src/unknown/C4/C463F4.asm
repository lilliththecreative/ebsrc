
UNKNOWN_C463F4: ;$C463F4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	JSL UNKNOWN_C07C5B
<<<<<<< HEAD
	STZ PLAYER_INTANGIBILITY_FRAMES
	LDA @LOCAL00
=======
	STZ UNKNOWN_7E5D58
	LDA $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CMP #$00FF
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	.A16
	CMP #$FFFF
	BEQ @UNKNOWN3
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	ASL
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN1
@UNKNOWN3:
	PLD
	RTL
