
UNKNOWN_EF0EE8: ;$EF0EE8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #$0000
	STA $02
	BRA @UNKNOWN3
@UNKNOWN0:
	LOADPTR TIMED_DELIVERY_TABLE, $06
	LDA $02
	STA $04
	ASL
	ASL
	ADC $04
	ASL
	ASL
	TAX
	STX $12
	TXA
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN2
	LDA $02
	STA .LOWORD(UNKNOWN_7E0A38)
	LDX $12
	TXA
	CLC
	ADC $06
	STA $06
	LDA [$06]
	BNE @UNKNOWN1
	JSL RAND
	AND #$0003
	ASL
	TAX
	LDA UNUSED_FORSALE_SIGN_SPRITE_TABLE,X
@UNKNOWN1:
	STZ $0E
	STZ $10
	LDY #$FFFF
	LDX #MOVEMENT_CODES::MOVEMENT_500
	JSL PARSE_C3FC49_DATA
@UNKNOWN2:
	INC $02
@UNKNOWN3:
	LDA $02
	CMP #$000A
	BCC @UNKNOWN0
	PLD
	RTL