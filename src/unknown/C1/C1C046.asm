
UNKNOWN_C1C046: ;$C1C046
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TAY
	STY $16
	JSR a:.LOWORD(GET_TEXT_X)
	CMP #$000E
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	LDY $16
	CPY #$0020
	BCC @UNKNOWN0
	JSL PRINT_NEWLINE
	JSL UNKNOWN_C45E96
	JSR a:.LOWORD(GET_TEXT_X)
	STA $02
	JSR a:.LOWORD(GET_TEXT_Y)
	TAX
	LDA $02
	INC
	JSL UNKNOWN_C438A5
@UNKNOWN0:
	LDY $16
	TYA
	SEC
	SBC #$0010
	TAX
	LDA f:UNKNOWN_C3EF26,X
	AND #$00FF
	TAX
	BNE @UNKNOWN2
	LDA $9E29
	BEQ @UNKNOWN1
	JSL UNKNOWN_C45E96
	JSR a:.LOWORD(GET_TEXT_X)
	STA $02
	JSR a:.LOWORD(GET_TEXT_Y)
	TAX
	LDA $02
	INC
	JSL UNKNOWN_C438A5
@UNKNOWN1:
	LDY $16
	TYA
	JSR a:.LOWORD(UNKNOWN_C10BA1)
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN2:
	LDA #$0001
	STA $9E29
	TXA
	DEC
	STA $14
	TAX
	LDA f:UNKNOWN_C3EF26+240,X
	AND #$00FF
	TAX
	STX $12
	LDY .LOWORD(UNKNOWN_7E9E25)
	STY $16
	LOADPTR MRSATURN_FONT_DATA, $06
	LDA $14
	AND #$0007
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDA $14
	AND #$00F8
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC $06
	STA $06
	CPX #$0008
	BCC @UNKNOWN3
	BEQ @UNKNOWN3
	MOVE_INT $06, $0E
	LDA #$0008
	JSL UNKNOWN_C45C90
	LDX $12
	TXA
	SEC
	SBC #$0008
	TAX
	LDA #$0010
	CLC
	ADC $06
	STA $06
@UNKNOWN3:
	MOVE_INT $06, $0E
	TXA
	JSL UNKNOWN_C45C90
	LDX $9E27
	DEX
	STX $12
	LDY $16
	TYA
	JSL UNKNOWN_C45DDD
@UNKNOWN4:
	LDX $12
	INX
	STX $12
	CPX #$0030
	BCC @UNKNOWN5
	LDX #$0000
	STX $12
@UNKNOWN5:
	TXA
	CLC
	ADC #$0190
	JSR a:.LOWORD(UNKNOWN_C10BA1)
	LDX $12
	CPX $9E27
	BNE @UNKNOWN4
	JSR a:.LOWORD(GET_TEXT_X)
	TAY
	STY $12
	JSR a:.LOWORD(GET_TEXT_Y)
	TAX
	LDY $12
	TYA
	DEC
	JSL UNKNOWN_C438A5
@UNKNOWN6:
	PLD
	RTS