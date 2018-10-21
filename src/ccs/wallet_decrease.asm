
CC_1D_09: ;$C1494A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	TXA
	STA $12
	LDA .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BNE @UNKNOWN0
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1D_09)
	BRA @UNKNOWN4
@UNKNOWN0:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA $12
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	BEQ @UNKNOWN1
	STA $06
	STZ $08
	BRA @UNKNOWN2
@UNKNOWN1:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@UNKNOWN2:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DECREASE_WALLET_BALANCE
	CMP #$0000
	STA $06
	STZ $08
	BPL @UNKNOWN3
	DEC $08
@UNKNOWN3:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN4:
	PLD
	RTS