
TARGET_ALL: ;$C26E00
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	MOVE_INT_CONSTANT 0, .LOWORD(BATTLER_TARGET_FLAGS)
	LDX #.LOWORD(BATTLERS_TABLE)
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LOADPTR POWERS_OF_TWO_32BIT, $06
	LDA $0E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT .LOWORD(BATTLER_TARGET_FLAGS), $06
	OR_INT_ASSIGN $06, $0A
	MOVE_INT $06, .LOWORD(BATTLER_TARGET_FLAGS)
@UNKNOWN1:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	CMP #$0020
	BCC @UNKNOWN0
	PLD
	RTL
