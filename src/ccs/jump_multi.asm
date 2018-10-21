
CC_09: ;$C141D0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TXY
	STY $10
	TAX
	STX $0E
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN0
	LDA $06
	CMP $0A
@UNKNOWN0:
	BEQ @UNKNOWN1
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDY $10
	TYA
	STA $0A
	STZ $0C
	CLC
	LDA $06
	SBC $0A
	LDA $08
	SBC $0C
	BCS @UNKNOWN1
	LDX $0E
	TXY
	STY $0E
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
	DEC
	ASL
	ASL
	PHA
	LDY $0E
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	PLA
	CLC
	ADC $06
	STA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	STZ .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_0A)
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX $0E
	TXY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDY $10
	TYA
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	TXY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	LDA #NULL
@UNKNOWN2:
	PLD
	RTS
