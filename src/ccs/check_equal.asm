
CC_0B: ;$C14558
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STX $02
	LDA #$0000
	STA $12
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
	CMP $02
	BNE @UNKNOWN0
	LDA #$0001
	STA $12
@UNKNOWN0:
	LDA $12
	STA $06
	STZ $08
	BPL @UNKNOWN1
	DEC $08
@UNKNOWN1:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
	PLD
	RTS
