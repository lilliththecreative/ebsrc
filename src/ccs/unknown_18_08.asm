
CC_18_08: ;$C15529
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TXA
	LDX #$0000
	JSR a:.LOWORD(UNKNOWN_C19A11)
	STA $06
	STZ $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
	PLD
	RTS