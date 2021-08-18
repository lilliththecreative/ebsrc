
OPEN_MENU_BUTTON: ;$C133B0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 41
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN00
	LDA #$0001
	STA $02
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN1:
	LDA $02
	CMP #$0003
	BNE @UNKNOWN2
	JSR a:.LOWORD(UNKNOWN_C1C373)
	CMP #$0000
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN2:
	LDA $02
	CMP #$0001
	BEQ @UNKNOWN3
	LDA $02
	CMP #$0005
	BEQ @UNKNOWN3
	LDA $02
	CMP #$0002
	BNE @UNKNOWN4
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN4
	LDX #$0001
	LDA .LOWORD(GAME_STATE) + game_state::party_members
	AND #$00FF
	JSL GET_CHARACTER_ITEM
	CMP #$0000
	BNE @UNKNOWN4
@UNKNOWN3:
	LDX #$0001
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #$001B
@UNKNOWN5:
	LDY $02
	DEY
	LOADPTR DEBUG_MENU_ELEMENT_SPACING_DATA, $06
	MOVE_INT $06, $25
	TYA
	ASL
	STA $23
	LOADPTR CMD_WINDOW_TEXT, $06
	TYA
	OPTIMIZED_MULT $04, 10
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA $16
	REP #PROC_FLAGS::ACCUM8
	LDA $23
	INC
	MOVE_INTX $25, $06
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAY
	LDA $23
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	TAX
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C11596)
@UNKNOWN6:
	INC $02
@UNKNOWN7:
	LDA $02
	CMP #$0007
	BCS @UNKNOWN8
	BEQ @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN8:
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
@MAIN_PAUSE_MENU:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSR .LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR .LOWORD(SELECTION_MENU)
	STA $06
	STZ $08
	LDA $06
	CMP #MENU_OPTIONS::TALK_TO
	BEQ @TALK_TO
	CMP #MENU_OPTIONS::GOODS
	BEQ @GOODS
	CMP #MENU_OPTIONS::PSI
	BNE @NOT_PSI
	JMP a:.LOWORD(@PSI)
@NOT_PSI:
	CMP #MENU_OPTIONS::EQUIP
	BNE @NOT_EQUIP
	JMP a:.LOWORD(@EQUIP)
@NOT_EQUIP:
	CMP #MENU_OPTIONS::CHECK
	BNE @NOT_CHECK
	JMP a:.LOWORD(@CHECK)
@NOT_CHECK:
	CMP #MENU_OPTIONS::STATUS
	BNE @NOT_STATUS
	JMP a:.LOWORD(@STATUS)
@NOT_STATUS:
	JMP a:.LOWORD(@UNKNOWN75)
@TALK_TO:
	JSL TALK_TO
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @T011
	LDA $06
	CMP $0A
@T011:
	BNE @T012
	LOADPTR TEXT_WHO_ARE_YOU_TALKING_TO, $06
@T012:
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	JMP a:.LOWORD(@UNKNOWN75)
@GOODS:
	JSR a:.LOWORD(UNKNOWN_C1134B)
@UNKNOWN9:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @GOODS_MANY_PARTY_MEMBERS
	LDY #.LOWORD(GAME_STATE) + game_state::party_members
	STY $21
	LDX #$0001
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	JSL GET_CHARACTER_ITEM
	CMP #$0000
	BNE @UNKNOWN10
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@UNKNOWN10:
	LDX #$0002
	LDY $21
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	JSR a:.LOWORD(INVENTORY_GET_ITEM_NAME)
	LDY $21
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $1D
	LDA #$0000
	JSL UNKNOWN_C43573
	BRA @UNKNOWN12
@GOODS_MANY_PARTY_MEMBERS:
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LOADPTR UNKNOWN_C1339E, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDX #$0001
	LDA #$0000
	JSR a:.LOWORD(CHAR_SELECT_PROMPT)
	STA $06
	STZ $08
	MOVE_INT $06, $1D
@UNKNOWN12:
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN13
	LDA $06
	CMP $0A
@UNKNOWN13:
	BNE @UNKNOWN14
	LDA #$0002
	JSL CLOSE_WINDOW
	JSR a:.LOWORD(UNKNOWN_C19437)
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@UNKNOWN14:
	LDX #$0001
	LDA $06
	JSL GET_CHARACTER_ITEM
	CMP #$0000
	BNE @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN9)
@UNKNOWN15:
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $04
	STA $1B
	JSR a:.LOWORD(UNKNOWN_C19437)
	LDA $04
	BNE @GOODS_ITEM_SELECTED
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @GOODS_ONE_MEMBER_CANCEL
	JMP a:.LOWORD(@UNKNOWN9)
@GOODS_ONE_MEMBER_CANCEL:
	LDX #$0001
	LDA .LOWORD(GAME_STATE) + game_state::party_members
	AND #$00FF
	JSL GET_CHARACTER_ITEM
	CMP #$0000
	BEQ @UNKNOWN17
	LDA #SFX::MENU_OPEN_CLOSE
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
@UNKNOWN17:
	LDA #$0002
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@GOODS_ITEM_SELECTED:
	CREATE_WINDOW_NEAR #WINDOW::INVENTORY_MENU
	MOVE_INT $1D, $06
	LDA $06
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAX
	BEQ @GOODS_ITEM_SELECTED_ALIVE
	STX $02
	LDA #$0004
	CLC
	SBC $02
	BVC @UNKNOWN19
	BPL @GOODS_ITEM_SELECTED_ALIVE
	BRA @UNKNOWN20
@UNKNOWN19:
	BMI @GOODS_ITEM_SELECTED_ALIVE
@UNKNOWN20:
	LDX #$0001
	BRA @UNKNOWN22
@GOODS_ITEM_SELECTED_ALIVE:
	LDX #$0000
@UNKNOWN22:
	TXY
	STY $19
	TYX
	LDA #$0000
	JSL UNKNOWN_C438A5
	BRA @UNKNOWN24
@UNKNOWN23:
	TYX
	INX
	STX $17
	LOADPTR ITEM_USE_MENU_STRINGS, $06
	TYA
	STA $04
	ASL
	ADC $04
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	TXA
	JSR a:.LOWORD(UNKNOWN_C115F4)
	LDX $17
	TXY
	STY $19
@UNKNOWN24:
	LDY $19
	CPY #$0004
	BCC @UNKNOWN23
	LDY #$0000
	TYX
	LDA #$0001
	JSL UNKNOWN_C451FA
	LDA #$0000
	STA $02
@UNKNOWN25:
	LDA $02
	BEQ @UNKNOWN26
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA #$0003
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
@UNKNOWN27:
	LDA #$0003
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $0A
	STZ $0C
	LDA $0A
	BEQ @UNKNOWN30
	CMP #$0001
	BEQ @GOODS_ITEM_USE
	CMP #$0004
	BEQ @GOODS_ITEM_HELP
	CMP #$0002
	BNE @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN34)
@UNKNOWN28:
	CMP #$0003
	BNE @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN29:
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN30:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JMP a:.LOWORD(@UNKNOWN15)
@GOODS_ITEM_USE:
	LDA #$0001
	STA $02
	LDY #$0000
	LDA $1B
	STA $04
	LDX $04
	MOVE_INT $1D, $06
	LDA $06
	JSR a:.LOWORD(OVERWORLD_USE_ITEM)
	CMP #$0000
	BEQ @UNKNOWN25
	JMP a:.LOWORD(@UNKNOWN75)
@GOODS_ITEM_HELP:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LDA $1B
	STA $04
	LDX $04
	MOVE_INT $1D, $06
	LDA $06
	JSL GET_CHARACTER_ITEM
	STA $1B
	LOADPTR ITEM_CONFIGURATION_TABLE, $0A
	LDA $1B
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::help_text
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	LDA #$0001
	JSL CLOSE_WINDOW
	LDA #$0003
	JSL CLOSE_WINDOW
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JMP a:.LOWORD(@UNKNOWN15)
@UNKNOWN34:
	LDA #$0002
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSR a:.LOWORD(UNKNOWN_C10FA3)
	LDA #$0001
	STA $02
	LDA #$0003
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LOADPTR UNKNOWN_C133A7, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDX #$0001
	LDA #$0002
	JSR a:.LOWORD(CHAR_SELECT_PROMPT)
	STA $21
	JSR a:.LOWORD(UNKNOWN_C19437)
	LDA #$002C
	JSL CLOSE_WINDOW
	LDA $21
	BNE @UNKNOWN35
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN35:
	MOVE_INT $1D, $06
	MOVE_INT832 $21, $0A
	LDA $0C
	CMP $08
	BNE @UNKNOWN36
	LDA $0A
	CMP $06
@UNKNOWN36:
	BEQ @UNKNOWN37
	LDA $1B
	STA $04
	LDX $04
	LDA $06
	JSL GET_CHARACTER_ITEM
	LDY #.SIZEOF(item)
	JSL MULT168
	.A16
	CLC
	ADC #item::flags
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #ITEM_FLAGS::CANNOT_GIVE
	BEQ @UNKNOWN37
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	MOVE_INT832 $04, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	DISPLAY_TEXT_PTR TEXT_ONLY_ONE_WHO_SHOULD_CARRY_THIS
	LDA #$0001
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN37:
	LDY #$0000
	STY $17
	LDA $06
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN38
	CPX #$0002
	BNE @UNKNOWN39
@UNKNOWN38:
	LDY #$0005
	STY $17
@UNKNOWN39:
	MOVE_INT832 $21, $0A
	LDA $0C
	CMP $08
	BNE @UNKNOWN40
	LDA $0A
	CMP $06
@UNKNOWN40:
	.A16
	BEQ @UNKNOWN43
	LDY $17
	INY
	STY $17
	LDA $21
	JSL FIND_INVENTORY_SPACE2
	CMP #$0000
	BEQ @UNKNOWN41
	LDY $17
	INY
	INY
	STY $17
@UNKNOWN41:
	LDA $21
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN42
	CPX #$0002
	BNE @UNKNOWN43
@UNKNOWN42:
	LDY $17
	INY
	STY $17
@UNKNOWN43:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $23
	CLC
	ADC #$0017
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	MOVE_INT832 $21, $0A
	LDA $23
	CLC
	ADC #$0021
	TAY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	LDA $1B
	STA $04
	STA $0A
	STZ $0C
	LDA $23
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	LDY $17
	TYA
	BEQ @GOODS_GIVE_SELF_ALIVE_TEXT
	CMP #$0001
	BEQ @GOODS_GIVE_ALIVE_TO_ALIVE_FAIL_TEXT
	CMP #$0002
	BEQ @GOODS_GIVE_ALIVE_TO_DEAD_FAIL_TEXT
	CMP #$0003
	BNE @UNKNOWN44
	JMP a:.LOWORD(@GOODS_GIVE_ALIVE_TO_ALIVE_SUCC_TEXT)
@UNKNOWN44:
	CMP #$0004
	BNE @UNKNOWN45
	JMP a:.LOWORD(@GOODS_GIVE_ALIVE_TO_DEAD_SUCC_TEXT)
@UNKNOWN45:
	CMP #$0005
	BNE @UNKNOWN46
	JMP a:.LOWORD(@GOODS_GIVE_SELF_DEAD_TEXT)
@UNKNOWN46:
	CMP #$0006
	BNE @UNKNOWN47
	JMP a:.LOWORD(@GOODS_GIVE_DEAD_TO_ALIVE_FAIL_TEXT)
@UNKNOWN47:
	CMP #$0007
	BNE @UNKNOWN48
	JMP a:.LOWORD(@GOODS_GIVE_DEAD_TO_DEAD_FAIL_TEXT)
@UNKNOWN48:
	CMP #$0008
	BNE @UNKNOWN49
	JMP a:.LOWORD(@GOODS_GIVE_DEAD_TO_ALIVE_SUCC_TEXT)
@UNKNOWN49:
	CMP #$0009
	BNE @UNKNOWN50
	JMP a:.LOWORD(@GOODS_GIVE_DEAD_TO_DEAD_SUCC_TEXT)
@UNKNOWN50:
	JMP a:.LOWORD(@GOODS_GIVE_INVALID_TEXT)
@GOODS_GIVE_SELF_ALIVE_TEXT:
	DISPLAY_TEXT_PTR TEXT_REARRANGED_OWN_ITEMS
	LDY $04
	MOVE_INT $1D, $06
	LDA $06
	TAX
	LDA $21
	JSL UNKNOWN_C22A3A
	JMP a:.LOWORD(@UNKNOWN62)
@GOODS_GIVE_ALIVE_TO_ALIVE_FAIL_TEXT:
	DISPLAY_TEXT_PTR TEXT_COULDNT_GIVE_ALIVE_INVENTORY_FULL
	JMP a:.LOWORD(@UNKNOWN62)
@GOODS_GIVE_ALIVE_TO_DEAD_FAIL_TEXT:
	DISPLAY_TEXT_PTR TEXT_COULDNT_GIVE_DEAD_INVENTORY_FULL
	JMP a:.LOWORD(@UNKNOWN62)
@GOODS_GIVE_ALIVE_TO_ALIVE_SUCC_TEXT:
	DISPLAY_TEXT_PTR TEXT_GAVE_ITEM_ALIVE
	LDY $04
	MOVE_INT $1D, $06
	LDA $06
	TAX
	LDA $21
	JSL UNKNOWN_C22A3A
	JMP a:.LOWORD(@UNKNOWN62)
@GOODS_GIVE_ALIVE_TO_DEAD_SUCC_TEXT:
	DISPLAY_TEXT_PTR TEXT_GAVE_ITEM_DEAD
	LDY $04
	MOVE_INT $1D, $06
	LDA $06
	TAX
	LDA $21
	JSL UNKNOWN_C22A3A
	JMP a:.LOWORD(@UNKNOWN62)
@GOODS_GIVE_SELF_DEAD_TEXT:
	DISPLAY_TEXT_PTR TEXT_REARRANGED_OWN_ITEMS_DEAD
	LDY $04
	MOVE_INT $1D, $06
	LDA $06
	TAX
	LDA $21
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_ALIVE_FAIL_TEXT:
	DISPLAY_TEXT_PTR TEXT_COULDNT_TAKE_FROM_CHAR_INVENTORY_FULL
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_DEAD_FAIL_TEXT:
	DISPLAY_TEXT_PTR TEXT_COULDNT_GIVE_TO_CHAR_INVENTORY_FULL
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_ALIVE_SUCC_TEXT:
	DISPLAY_TEXT_PTR TEXT_TOOK_ITEM_FROM_DEAD
	LDY $04
	MOVE_INT $1D, $06
	LDA $06
	TAX
	LDA $21
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@GOODS_GIVE_DEAD_TO_DEAD_SUCC_TEXT:
	DISPLAY_TEXT_PTR TEXT_TOOK_ITEM_FROM_DEAD_GAVE_TO_DEAD
	LDY $04
	MOVE_INT $1D, $06
	LDA $06
	TAX
	LDA $21
	JSL UNKNOWN_C22A3A
	BRA @UNKNOWN62
@GOODS_GIVE_INVALID_TEXT:
	BRA @GOODS_GIVE_INVALID_TEXT
@UNKNOWN62:
	LDA #$0001
	JSL CLOSE_WINDOW
	LDA #$0003
	JSL CLOSE_WINDOW
	LDA #$0002
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@UNKNOWN63:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	MOVE_INT $1D, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA $1B
	STA $04
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	DISPLAY_TEXT_PTR TEXT_GOT_RID_OF_OWN_ITEM
	LDA #$0001
	JSL CLOSE_WINDOW
	LDA #$0003
	JSL CLOSE_WINDOW
	LDA #$0002
	JSL CLOSE_WINDOW
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@PSI:
	JSR a:.LOWORD(UNKNOWN_C1134B)
	JSR a:.LOWORD(UNKNOWN_C1C373)
	STA $06
	STZ $08
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN65
	LDA $06
	CMP $0A
@UNKNOWN65:
	BEQ @UNKNOWN66
	LDA $06
	DEC
	JSL UNKNOWN_C43573
@UNKNOWN66:
	JSR a:.LOWORD(UNKNOWN_C1B5B6)
	CMP #$0000
	BEQ @UNKNOWN67
	JMP a:.LOWORD(@UNKNOWN75)
@UNKNOWN67:
	JSR a:.LOWORD(UNKNOWN_C1C3B6)
	CMP #$0001
	BEQ @UNKNOWN68
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@UNKNOWN68:
	LDA #SFX::MENU_OPEN_CLOSE
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@EQUIP:
	JSR a:.LOWORD(UNKNOWN_C1134B)
	JSR a:.LOWORD(UNKNOWN_C1AA5D)
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN70
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@UNKNOWN70:
	LDA #SFX::MENU_OPEN_CLOSE
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@CHECK:
	JSL CHECK
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN72
	LDA $06
	CMP $0A
@UNKNOWN72:
	BNE @UNKNOWN73
	LOADPTR TEXT_NO_PROBLEM_HERE, $06
@UNKNOWN73:
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	BRA @UNKNOWN75
@STATUS:
	JSR a:.LOWORD(UNKNOWN_C1134B)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	JSR a:.LOWORD(UNKNOWN_C1BB71)
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E71)
	JMP a:.LOWORD(@MAIN_PAUSE_MENU)
@UNKNOWN75:
	JSL CLEAR_9622
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
	JSR a:.LOWORD(UNKNOWN_C1008E)
@UNKNOWN76:
	JSL UNKNOWN_C12DD5
	.A16
	LDA .LOWORD(UNKNOWN_7EB4A8)
	CMP #$FFFF
	BNE @UNKNOWN76
	JSL UNKNOWN_C09451
	PLD
	RTL
OPEN_MENU_BUTTON_CHECKTALK:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JSL TALK_TO
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN77
	LDA $06
	CMP $0A
@UNKNOWN77:
	BNE @UNKNOWN79
	JSL CHECK
	LDA $08
	CMP $0C
	BNE @UNKNOWN78
	LDA $06
	CMP $0A
@UNKNOWN78:
	BNE @UNKNOWN79
	LOADPTR TEXT_NO_PROBLEM_HERE, $06
@UNKNOWN79:
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	JSL CLEAR_9622
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
	JSR a:.LOWORD(UNKNOWN_C1008E)
@UNKNOWN80:
	JSL UNKNOWN_C12DD5
	LDA .LOWORD(UNKNOWN_7EB4A8)
	CMP #$FFFF
	BNE @UNKNOWN80
	JSL UNKNOWN_C09451
	PLD
	RTL
