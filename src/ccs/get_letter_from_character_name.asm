
CC_19_11: ;$C147CC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
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
	JSL UNKNOWN_C222D3
	JSR a:.LOWORD(GET_SECONDARY_MEMORY)
	STA $02
	LDA #$0001
	SEC
	SBC $02
	EOR #$FFFF
	INC
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
	PLD
	RTS
