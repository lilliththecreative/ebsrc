
UNKNOWN_C48D58: ;$C48D58
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STY $1E
	STX $02
	TAX
	LDY $2E
	STY $1C
	LDA #$0000
	STA $04
	STX $12
	LDA $02
	STA $16
@UNKNOWN0:
	LDA $12
	SEC
	SBC $1E
	STA $1A
	LDA $16
	SEC
	SBC $1C
	STA $02
	STA $18
	LDA $1A
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN1
	BPL @UNKNOWN3
	BRA @UNKNOWN2
@UNKNOWN1:
	BMI @UNKNOWN3
@UNKNOWN2:
	LDA $1A
	EOR #$FFFF
	INC
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA $1A
@UNKNOWN4:
	CLC
	SBC #$0001
	BVS @UNKNOWN5
	BPL @UNKNOWN12
	BRA @UNKNOWN6
@UNKNOWN5:
	BMI @UNKNOWN12
@UNKNOWN6:
	LDA $18
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN7
	BPL @UNKNOWN9
	BRA @UNKNOWN8
@UNKNOWN7:
	BMI @UNKNOWN9
@UNKNOWN8:
	LDA $02
	EOR #$FFFF
	INC
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA $02
@UNKNOWN10:
	CLC
	SBC #$0001
	BVC @UNKNOWN11
	BMI @UNKNOWN12
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN11:
	BPL @UNKNOWN12
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN12:
	LDA $1C
	STA $0E
	LDY $1E
	LDX $16
	LDA $12
	JSL UNKNOWN_C41EFF
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	TAX
	STX $18
	TXA
	ASL
	TAX
	LDA f:UNKNOWN_C48C59,X
	JSL UNKNOWN_C48C97
	LDX $18
	TXA
	ASL
	ASL
	STA $1A
	CLC
	ADC #.LOWORD(UNKNOWN_7E4DD6)
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $0A
	MOVE_INT $10, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $10
	LDA $1A
	CLC
	ADC #.LOWORD(UNKNOWN_7E4F96)
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $0A
	MOVE_INT $14, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $14
	INC $04
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN13:
	LDA $04
	PLD
	RTL
