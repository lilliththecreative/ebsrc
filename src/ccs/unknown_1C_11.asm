
CC_1C_11: ;$C140CF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF2
	TCD
	PLA
	CPX #$0000
	BEQ @UNKNOWN0
	TXA
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN1:
	JSL UNKNOWN_EF01D2
	LDA #NULL
	PLD
	RTS
