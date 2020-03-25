
GIVE_ITEM_TO_SPECIFIC_CHARACTER: ;$C18B2C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXY
	STY $0E
	TAX
	DEC
	STA $04
	LDA #$0000
	STA $02
	BRA @UNKNOWN4
@UNKNOWN0:
	LDA $04
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BNE @UNKNOWN3
	LDY $0E
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	CMP #ITEM_TYPE::TEDDY_BEAR
	BNE @UNKNOWN1
	JSL UNKNOWN_C216DB
@UNKNOWN1:
	LDY $0E
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::flags
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #ITEM_FLAGS::TRANSFORM
	BEQ @UNKNOWN2
	LDY $0E
	TYA
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C3EAD0
@UNKNOWN2:
	LDA $04
	INC
	BRA @UNKNOWN7
@UNKNOWN3:
	INC $02
@UNKNOWN4:
	.A16
	LDA #$000E
	CLC
	SBC $02
	BVS @UNKNOWN5
	BMI @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN5:
	BPL @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN6:
	LDA #$0000
@UNKNOWN7:
	PLD
	RTS