
UNKNOWN_C46594: ;$C46594
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	CMP #$00FF
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	.A16
	CMP #$FFFF
	BEQ @UNKNOWN3
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX #$10DA
	LDA __BSS_START__,X
	ORA #$C000
	STA __BSS_START__,X
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
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
