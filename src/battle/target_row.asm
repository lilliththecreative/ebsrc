
TARGET_ROW: ;$C26D04
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
	MOVE_INT_CONSTANT 0, .LOWORD(BATTLER_TARGET_FLAGS)
	LDX #.LOWORD(BATTLERS_TABLE)
	LDA #$0000
	STA $0E
	JMP @UNKNOWN6
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	BNE @UNKNOWN1
	JMP @UNKNOWN5
@UNKNOWN1:
	LDY $10
	TYA
	BEQ @UNKNOWN2
	CMP #$0001
	BEQ @UNKNOWN4
	CMP #$0002
	BEQ @UNKNOWN4
	JMP @UNKNOWN5
@UNKNOWN2:
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BEQ @UNKNOWN3
	JMP @UNKNOWN5
@UNKNOWN3:
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
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN5
	TYA
	DEC
	STA $02
	LDA a:battler::row,X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN5
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
@UNKNOWN5:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	LDA $0E
	INC
	STA $0E
@UNKNOWN6:
	CMP #$0020
	BCS @UNKNOWN7
	BEQ @UNKNOWN7
	JMP @UNKNOWN0
@UNKNOWN7:
	PLD
	RTL
