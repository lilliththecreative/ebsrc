
RECALC_CHARACTER_POSTMATH_SPEED: ;$C21AEB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 19
	TAX
	DEC
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_speed,X
	AND #$00FF
	TAY
	STY $11
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	BEQ @UNKNOWN0
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC #item::ep
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	TYA
	CLC
	ADC $04
	TAY
	STY $11
@UNKNOWN0:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::boosted_speed,X
	AND #$00FF
	STA $04
	LDY $11
	TYA
	CLC
	ADC $04
	STA $0F
	STA $04
	LDA #$0000
	CLC
	SBC $04
	BVC @UNKNOWN1
	BPL @UNKNOWN3
	BRA @UNKNOWN2
@UNKNOWN1:
	BMI @UNKNOWN3
@UNKNOWN2:
	LDX #$0000
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA $0F
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN4:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA .LOWORD(CHAR_STRUCT)+char_struct::speed,X
	PLD
	RTL
