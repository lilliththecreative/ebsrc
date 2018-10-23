
CC_1D_0C: ;$C17058
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	TXY
	STY $14
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1D_0C)
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAX
	BEQ @UNKNOWN3
	TXA
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@UNKNOWN4:
	STA $02
	LDY $14
	BEQ @UNKNOWN5
	TYA
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN6:
	TAY
	STY $12
	JSR a:.LOWORD(UNKNOWN_C190F1)
	CMP #$0000
	BEQ @UNKNOWN7
	LDX #$0002
	STX $14
	BRA @UNKNOWN8
@UNKNOWN7:
	LDX #$0000
	STX $14
@UNKNOWN8:
	LDY $12
	TYA
	DEC
	PHA
	LDA $02
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::flags
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #ITEM_FLAGS::UNKNOWN
	BEQ @UNKNOWN9
	LDA #$0001
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #$0000
@UNKNOWN10:
	LDX $14
	STX $02
	ORA $02
	STA $06
	STZ $08
	BPL @UNKNOWN11
	DEC $08
@UNKNOWN11:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN12:
	PLD
	RTS
