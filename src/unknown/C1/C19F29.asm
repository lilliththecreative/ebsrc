
UNKNOWN_C19F29: ;$C19F29
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	TAX
	DEC
	STA $1C
	CREATE_WINDOW_NEAR #WINDOW::EQUIP_MENU
	JSL CALL_C12DD5_WITH_ZERO_9622
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	LDA #$0006
	STA .LOWORD(UNKNOWN_7E5E7A)
@UNKNOWN0:
	LDA $1C
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0006
	JSL READ_NAME
	LDA #$0000
	STA $02
	STA $1A
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN1:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	LDA $02
	BEQ @UNKNOWN4
	CMP #$0001
	BEQ @UNKNOWN5
	CMP #$0002
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN2:
	CMP #$0003
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN3:
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN4:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_10, $06
	LDA $02
	OPTIMIZED_MULT $04, 11
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	LDX $02
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA $1C
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	STA $04
	STA $18
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN5:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_10, $06
	LDA $02
	OPTIMIZED_MULT $04, 11
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	LDX $02
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA $1C
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	STA $04
	STA $18
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN6:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_10, $06
	LDA $02
	OPTIMIZED_MULT $04, 11
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	LDX $02
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA $1C
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	STA $04
	STA $18
	BRA @UNKNOWN8
@UNKNOWN7:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_10, $06
	LDA $02
	OPTIMIZED_MULT $04, 11
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	LDX $02
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA $1C
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	STA $04
	STA $18
@UNKNOWN8:
	LDA $18
	STA $04
	BNE @UNKNOWN9
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN9:
	LDA $04
	DEC
	STA $02
	LDA $1C
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	TAY
	STY $16
	LDX $04
	LDA $1C
	INC
	JSL CHECK_ITEM_EQUIPPED
	CMP #$0000
	BEQ @UNKNOWN10
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0022
	STA .LOWORD(UNKNOWN_7E9C9F)
	REP #PROC_FLAGS::ACCUM8
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDY $16
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)+1
	JSL MEMCPY16
	BRA @UNKNOWN11
@UNKNOWN10:
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDY $16
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
@UNKNOWN11:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9C9F)+.SIZEOF(item::name)
	BRA @UNKNOWN13
@UNKNOWN12:
	.A16
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_12, $0E
	LDX #$000A
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9C9F)+10
@UNKNOWN13:
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	STA $02
	LDX $02
	LDA #$0006
	JSL UNKNOWN_C438A5
	LDA #$006A
	JSR a:.LOWORD(PRINT_LETTER)
	LDA #$0050
	JSR a:.LOWORD(PRINT_LETTER)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$0031
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	INC $02
	LDA $02
	STA $1A
@UNKNOWN14:
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
	BVS @UNKNOWN15
	BMI @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN15:
	BPL @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN16:
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	STZ .LOWORD(UNKNOWN_7E5E71)
	JSL CLEAR_9622
	PLD
	RTS
