
UNKNOWN_C0C7AC: ;$C0C7AC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $02
	JSL UNKNOWN_C09EFF
	CMP #$0000
	BEQ @UNKNOWN0
	LDY $02
	LDX .LOWORD(UNKNOWN_7E284A)
	LDA .LOWORD(UNKNOWN_7E2848)
	JSL UNKNOWN_C05F33
	STA $0E
	LDA $02
	ASL
	TAX
	LDA $0E
	STA .LOWORD(UNKNOWN_30X2_TABLE_37),X
@UNKNOWN0:
	PLD
	RTL