
UNKNOWN_C1C32A: ;$C1C32A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STY $10
	STX $0E
	STA $02
	LDA #$0000
	STA $04
	LDA $02
	CMP #$0003
	BEQ @UNKNOWN0
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C1C165)
	CMP #$0000
	BEQ @UNKNOWN0
	LDY $10
	LDX $0E
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C1C1BA)
	CMP #$0000
	BEQ @UNKNOWN0
	LDA #$0001
	STA $04
@UNKNOWN0:
	LDA $04
	PLD
	RTS