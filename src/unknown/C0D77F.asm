
UNKNOWN_C0D77F: ;$C0D77F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	CMP .LOWORD(UNKNOWN_7E1A42)
	BEQ @UNKNOWN1
	CMP #$0017
	BEQ @UNKNOWN1
	ASL
	CLC
	ADC #$10B6
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #$C000
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	CMP #$001E
	BCC @UNKNOWN0
	PLD
	RTL