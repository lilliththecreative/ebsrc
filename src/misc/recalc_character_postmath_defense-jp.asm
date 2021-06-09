
RECALC_CHARACTER_POSTMATH_DEFENSE: ;$C2192B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 21
	TAX
	DEC
	STA $02
	STA $13
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	TAY
	STY $11
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	TAX
	BEQ @UNKNOWN1
	LDA #$0000
	STA $0F
	LDA $02
	CMP #$0003
	BNE @UNKNOWN0
	LDA #$0001
	STA $0F
@UNKNOWN0:
	LDA $0F
	PHA
	TXA
	DEC
	STA $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	PLY
	STY $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	TAY
	STY $11
@UNKNOWN1:
	LDA $13
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	TAX
	BEQ @UNKNOWN3
	LDA #$0000
	STA $0F
	LDA $02
	CMP #$0003
	BNE @UNKNOWN2
	LDA #$0001
	STA $0F
@UNKNOWN2:
	LDA $0F
	PHA
	TXA
	DEC
	STA $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	PLY
	STY $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	TAY
	STY $11
@UNKNOWN3:
	LDA $13
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	TAX
	BEQ @UNKNOWN5
	LDA #$0000
	STA $0F
	LDA $02
	CMP #$0003
	BNE @UNKNOWN4
	LDA #$0001
	STA $0F
@UNKNOWN4:
	LDA $0F
	PHA
	TXA
	DEC
	STA $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	PLY
	STY $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	TAY
	STY $11
@UNKNOWN5:
	LDY $11
	STY $04
	LDA #$0000
	CLC
	SBC $04
	BVC @UNKNOWN6
	BPL @UNKNOWN8
	BRA @UNKNOWN7
@UNKNOWN6:
	BMI @UNKNOWN8
@UNKNOWN7:
	LDA #$0000
	BRA @UNKNOWN12
@UNKNOWN8:
	TYA
	CLC
	SBC #$00FF
	BVC @UNKNOWN9
	BPL @UNKNOWN11
	BRA @UNKNOWN10
@UNKNOWN9:
	BMI @UNKNOWN11
@UNKNOWN10:
	LDA #$00FF
	BRA @UNKNOWN12
@UNKNOWN11:
	TYA
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
@UNKNOWN12:
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	LDA $13
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA .LOWORD(CHAR_STRUCT)+char_struct::defense,X
	PLD
	RTL