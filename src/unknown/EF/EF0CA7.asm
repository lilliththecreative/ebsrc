
UNKNOWN_EF0CA7: ;$EF0CA7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LOADPTR TIMED_DELIVERY_TABLE, $06
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA $0E
	OPTIMIZED_MULT $04, 20
	INC
	INC
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	CMP #$00FF
	BNE @UNKNOWN0
	LDA #$0001
	BRA @RETURN
@UNKNOWN0:
	LDY #$0000
	LDA $0E
	ASL
	CLC
	ADC #.LOWORD(DELIVERY_ATTEMPTS)
	TAX
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	STA $02
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	OPTIMIZED_MULT $04, 20
	INC
	INC
	INC
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	CMP $02
	BLTEQ @UNKNOWN1
	LDY #$0001
@UNKNOWN1:
	TYA
@RETURN:
	PLD
	RTL
