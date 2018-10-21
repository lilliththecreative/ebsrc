
CC_1D_0F: ;$C156DB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STX $12
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1D_0F)
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAY
	BEQ @UNKNOWN3
	TYA
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@UNKNOWN4:
	STA $02
	LDX $12
	BEQ @UNKNOWN5
	TXA
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN6:
	TAY
	STY $12
	TYX
	LDA $02
	JSL UNKNOWN_C3E977
	STA $06
	STZ $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	LDY $12
	TYX
	LDA $02
	JSR a:.LOWORD(REMOVE_ITEM_FROM_INVENTORY)
	STA $06
	STZ $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
