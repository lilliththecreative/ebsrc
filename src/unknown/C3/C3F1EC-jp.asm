
UNKNOWN_C3F1EC: ;$C3F1EC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $14
	LDA #$0003
	JSL UNKNOWN_C2239D
	CMP #$0000
	BNE @UNKNOWN0
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN0:
	LDA #$0000
	STA $02
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN1:
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	TYA
	OPTIMIZED_MULT $04, .SIZEOF(item)
	TAX
	STX $12
	TXA
	CLC
	ADC #item::type
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	CMP #$0008
	BNE @UNKNOWN3
	TXA
	CLC
	ADC #$0011
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	CMP .LOWORD(CHAR_STRUCT)+(.SIZEOF(char_struct) * ITEM_FIXING_CHARACTER) + char_struct::iq
	BEQ @UNKNOWN2
	BCS @UNKNOWN3
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0063
	JSL RAND_MOD
	CMP $14
	BCS @UNKNOWN3
	LDX $12
	TXA
	CLC
	ADC #$0012
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	LDX $0E
	STX $04
	STA a:.LOWORD(RAM),X
	LDY $10
	REP #PROC_FLAGS::ACCUM8
	TYA
	BRA @UNKNOWN6
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	INC $02
@UNKNOWN4:
	LDA $02
	CMP #$000E
	BCS @UNKNOWN5
	LDA $02
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	CLC
	ADC #(.SIZEOF(char_struct) * ITEM_FIXING_CHARACTER)+char_struct::items
	STA $04
	STA $0E
	LDX $04
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	TAY
	STY $10
	BEQ @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN5:
	LDA #$0000
@UNKNOWN6:
	PLD
	RTL
