
CC_19_26: ;$C17037
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF2
	TCD
	PLA
	TXA
	BEQ @UNKNOWN0
	STA $06
	STZ $08
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@UNKNOWN1:
	LDA $06
	JSL SET_TELEPORT_BOX_DESTINATION
	LDA #NULL
	PLD
	RTS
