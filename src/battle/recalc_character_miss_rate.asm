
RECALC_CHARACTER_MISS_RATE: ;$C21D95
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEF
	TCD
	PLA
	TAY
	DEY
	STY $0F
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	BEQ @UNKNOWN0
	DEC
	STA $02
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::special
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0000
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	LDY $0F
	REP #PROC_FLAGS::ACCUM8
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA .LOWORD(CHAR_STRUCT)+char_struct::miss_rate,X
	PLD
	RTL