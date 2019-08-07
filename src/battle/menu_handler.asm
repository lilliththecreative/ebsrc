
BATTLE_SELECTION_MENU: ;$C2311B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 40
	STX $04
	STA $26
	STZ $24
	LDA #$0000
	JSL UNKNOWN_C2FEF9
	LDA $26
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $22
	LDY #char_struct::afflictions
	LDA ($22),Y
	AND #$00FF
	CMP #STATUS_0::PARALYZED
	BEQ @UNKNOWN0
	LDY #char_struct::afflictions+2
	LDA ($22),Y
	AND #$00FF
	CMP #STATUS_2::IMMOBILIZED
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA #$0002
	STA $20
	BRA @UNKNOWN4
@UNKNOWN1:
	LDY #char_struct::equipment+EQUIPMENT_SLOT::WEAPON
	LDA ($22),Y
	AND #$00FF
	BEQ @UNKNOWN2
	DEC
	CLC
	ADC $22
	TAX
	LDA a:.LOWORD(RAM)+35,X
	AND #$00FF
@UNKNOWN2:
	CMP #$0000
	BEQ @UNKNOWN3
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #$0003
	CMP #$0001
	BNE @UNKNOWN3
	LDA #$0001
	STA $20
	BRA @UNKNOWN4
@UNKNOWN3:
	STZ $20
@UNKNOWN4:
	LDA .LOWORD(GAME_STATE)+game_state::auto_fight_enable
	AND #$00FF
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN43)
@UNKNOWN5:
	LDY #char_struct::afflictions+4
	LDA ($22),Y
	AND #$00FF
	BEQ @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN38)
@UNKNOWN6:
	LDY #char_struct::afflictions+3
	LDA ($22),Y
	AND #$00FF
	CMP #STATUS_3::STRANGE
	BNE @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN38)
@UNKNOWN7:
	LDY #char_struct::afflictions+1
	LDA ($22),Y
	AND #$00FF
	CMP #STATUS_1::MUSHROOMIZED
	BNE @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN38)
@UNKNOWN8:
	LDA $26
	CMP #$0001
	BEQ @UNKNOWN9
	LDA $26
	CMP #$0004
	BEQ @UNKNOWN9
	JMP a:.LOWORD(@UNKNOWN38)
@UNKNOWN9:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EA981)
	LDA #$001A
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0023
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$001A
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN15
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+423
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN10
	BCS @UNKNOWN15
@UNKNOWN10:
	LDA #$0000
	JSL COUNT_CHARS
	CMP #$0002
	BCC @UNKNOWN15
	LDY #$0000
	STY $1E
	BRA @UNKNOWN14
@UNKNOWN11:
	LDA .LOWORD(GAME_STATE)+122,Y
	AND #$00FF
	TAX
	CPX #$0001
	BCC @UNKNOWN13
	CPX #$0004
	BEQ @UNKNOWN12
	BCS @UNKNOWN13
@UNKNOWN12:
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	LSR
	LSR
	CMP .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,X
	BCC @UNKNOWN15
	BEQ @UNKNOWN15
@UNKNOWN13:
	LDY $1E
	INY
	STY $1E
@UNKNOWN14:
	CPY #$0006
	BCC @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0004
	STA .LOWORD(UNKNOWN_7EA981)
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN15:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0019
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0022
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$0019
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN17
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+411
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN16
	BCS @UNKNOWN17
@UNKNOWN16:
	JSL AUTOLIFEUP
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN17
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN17:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0021
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$0018
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN19
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+399
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN18
	BCS @UNKNOWN19
@UNKNOWN18:
	JSL AUTOLIFEUP
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN21
@UNKNOWN19:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0020
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$0017
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN22
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+387
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN20
	BCS @UNKNOWN22
@UNKNOWN20:
	JSL AUTOLIFEUP
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN22
@UNKNOWN21:
	REP #PROC_FLAGS::ACCUM8
	LDA $26
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA97D)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7EA97F)
	JMP a:.LOWORD(@UNKNOWN113)
@UNKNOWN22:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$001E
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0027
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$001E
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN24
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+471
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN23
	BCS @UNKNOWN24
@UNKNOWN23:
	LDX #$0001
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN21
@UNKNOWN24:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$001D
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0026
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$001D
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN28
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+459
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN25
	BCS @UNKNOWN28
@UNKNOWN25:
	LDX #$0003
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY #.LOWORD(UNKNOWN_7EA982)
	STY $1E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN26
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN26:
	LDX #$0002
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN27
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN27:
	LDX #$0001
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN28:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$001C
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0025
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$001C
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BNE @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN34)
@UNKNOWN29:
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+447
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN30
	BCS @UNKNOWN34
@UNKNOWN30:
	LDX #$0005
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY #.LOWORD(UNKNOWN_7EA982)
	STY $1C
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN31
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN31:
	LDX #$0004
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1C
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN32
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN32:
	LDX #$0002
	TXA
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1C
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN33
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN33:
	LDX #$0001
	LDA #$0003
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1C
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN34
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN34:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$001B
	STA .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0024
	STA .LOWORD(UNKNOWN_7EA97F)
	LDX #$001B
	LDA $26
	JSL CHECK_IF_PSI_KNOWN
	CMP #$0000
	BEQ @UNKNOWN38
	LDY #char_struct::current_pp_target
	LDA f:BATTLE_ACTION_TABLE+435
	AND #$00FF
	CMP ($22),Y
	BEQ @UNKNOWN35
	BCS @UNKNOWN38
@UNKNOWN35:
	LDX #$0007
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY #.LOWORD(UNKNOWN_7EA982)
	STY $1E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN36
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN36:
	LDX #$0006
	LDA #$0000
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN37
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN37:
	LDX #$0001
	LDA #$0002
	JSL AUTOHEALING
	SEP #PROC_FLAGS::ACCUM8
	LDY $1E
	STA a:.LOWORD(RAM),Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN38
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN38:
	LDA $20
	BEQ @UNKNOWN39
	CMP #$0001
	BEQ @UNKNOWN40
	CMP #$0002
	BEQ @UNKNOWN41
	BRA @UNKNOWN42
@UNKNOWN39:
	LDA #$0004
	STA $1A
	BRA @UNKNOWN42
@UNKNOWN40:
	LDA #$0005
	STA $1A
	BRA @UNKNOWN42
@UNKNOWN41:
	LDA #$0001
	JMP a:.LOWORD(@UNKNOWN113)
@UNKNOWN42:
	LDA $26
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA97D)
	STZ .LOWORD(UNKNOWN_7EA97E)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	STA .LOWORD(UNKNOWN_7EA97F)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA .LOWORD(UNKNOWN_7EA981)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7EAD56)
	CLC
	ADC .LOWORD(UNKNOWN_7EAD58)
	JSR a:.LOWORD(RAND_LIMIT)
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	JMP a:.LOWORD(@UNKNOWN113)
@UNKNOWN43:
	JSL UNKNOWN_EF0262
	LDA $26
	CMP #$0002
	BEQ @UNKNOWN44
	LDA $26
	CMP #$0004
	BNE @UNKNOWN45
@UNKNOWN44:
	LDA #$0001
	STA $1A
	BRA @UNKNOWN46
@UNKNOWN45:
	STZ $1A
@UNKNOWN46:
	LDA $04
	BNE @UNKNOWN47
	INC $1A
@UNKNOWN47:
	LOADPTR BATTLE_WINDOW_SIZES, $06
	LDA $1A
	CLC
	ADC $06
	STA $06
	STA $16
	LDA $08
	STA $18
	LDA [$06]
	AND #$00FF
	JSL REDIRECT_CREATE_WINDOW
	LDA $26
	DEC
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
	LDX #$0005
	MOVE_INT $16, $06
	LDA [$06]
	AND #$00FF
	JSL READ_NAME
	LDA $20
	BEQ @UNKNOWN48
	CMP #$0001
	BEQ @UNKNOWN49
	CMP #$0002
	BEQ @UNKNOWN50
	BRA @UNKNOWN51
@UNKNOWN48:
	LOADPTR BATTLE_MENU_TEXT_BASH, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0000
	TYX
	LDA #$0001
	JSL SELECTION_MENU_ITEM_SETUP
	BRA @UNKNOWN51
@UNKNOWN49:
	LOADPTR BATTLE_MENU_TEXT_SHOOT, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0000
	TYX
	LDA #$0001
	JSL SELECTION_MENU_ITEM_SETUP
	BRA @UNKNOWN51
@UNKNOWN50:
	LOADPTR BATTLE_MENU_TEXT_DO_NOTHING, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0000
	TYX
	LDA #$0001
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN51:
	LDA $20
	CMP #$0002
	BNE @UNKNOWN52
	JMP a:.LOWORD(@UNKNOWN53)
@UNKNOWN52:
	LOADPTR BATTLE_MENU_TEXT, $0A
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT $06, $16
	LDA #$0010
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDY #$0000
	LDX #$0006
	LDA #$0002
	JSL SELECTION_MENU_ITEM_SETUP
	LDA #$0040
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDY #$0001
	LDX #$0006
	LDA #$0005
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN53:
	LDA $04
	BEQ @UNKNOWN54
	JMP a:.LOWORD(@UNKNOWN59)
@UNKNOWN54:
	LDA $1A
	CMP #$0002
	BNE @UNKNOWN55
	LDX #$0010
	BRA @UNKNOWN56
@UNKNOWN55:
	LDX #$000B
@UNKNOWN56:
	STX $04
	LDA $26
	CMP #$0002
	BEQ @UNKNOWN57
	LDA $26
	CMP #$0004
	BNE @UNKNOWN58
@UNKNOWN57:
	INC $04
	INC $04
@UNKNOWN58:
	LOADPTR BATTLE_MENU_TEXT, $06
	MOVE_INT $06, $16
	MOVE_INT_CONSTANT NULL, $0A
	LDA #$0020
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	LDY #$0000
	LDX $04
	LDA #$0003
	JSL SELECTION_MENU_ITEM_SETUP
	LDA #$0080
	MOVE_INTX $16, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	LDY #$0001
	LDX $04
	LDA #$0006
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN59:
	LDA $26
	CMP #$0003
	BNE @UNKNOWN60
	LOADPTR BATTLE_MENU_TEXT_SPY, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0001
	LDX #$0000
	LDA #$0004
	JSL SELECTION_MENU_ITEM_SETUP
	BRA @UNKNOWN61
@UNKNOWN60:
	LDY #char_struct::afflictions+4
	LDA ($22),Y
	AND #$00FF
	BNE @UNKNOWN61
	LOADPTR BATTLE_MENU_TEXT_PSI, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0001
	LDX #$0000
	LDA #$0004
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN61:
	LDA $26
	CMP #$0002
	BNE @UNKNOWN62
	LOADPTR BATTLE_MENU_TEXT_PRAY, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0000
	LDX #$000B
	LDA #$0007
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN62:
	LDA $26
	CMP #$0004
	BNE @UNKNOWN63
	LOADPTR BATTLE_MENU_TEXT_MIRROR, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0000
	LDX #$000D
	LDA #$0007
	JSL SELECTION_MENU_ITEM_SETUP
@UNKNOWN63:
	LDX $1A
	LDA f:BATTLE_WINDOW_SIZES,X
	AND #$00FF
	JSL REDIRECT_SET_WINDOW_FOCUS
	LDA $24
	BNE @UNKNOWN64
	JSL REDIRECT_PRINT_MENU_ITEMS
@UNKNOWN64:
	INC $24
	LDA #$0001
	JSL REDIRECT_SELECTION_MENU
	CMP #$0000
	BEQ @UNKNOWN65
	JMP a:.LOWORD(@UNKNOWN74)
@UNKNOWN65:
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN67
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::SELECT_BUTTON | PAD::START_BUTTON
	CMP #PAD::SELECT_BUTTON | PAD::START_BUTTON
	BNE @UNKNOWN66
	JSL RESUME_MUSIC
	LDA #$FFFF
	JMP a:.LOWORD(@UNKNOWN113)
@UNKNOWN66:
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::R_BUTTON
	BEQ @UNKNOWN67
	JSL UNKNOWN_E14DE8
	BRA @UNKNOWN63
@UNKNOWN67:
	LDA .LOWORD(BATTLE_DEBUG)
	BNE @UNKNOWN73
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::L_BUTTON
	BEQ @UNKNOWN72
	JSL DEBUG_SET_CHAR_LEVEL
	LDY #$0000
	STY $22
	BRA @UNKNOWN71
@UNKNOWN68:
	LDA .LOWORD(GAME_STATE)+122,Y
	AND #$00FF
	STA $1C
	BEQ @UNKNOWN70
	CMP #$0004
	BEQ @UNKNOWN69
	BCS @UNKNOWN70
@UNKNOWN69:
	TYA
	LDY #.SIZEOF(battler)
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	TAX
	LDA $1C
	JSL BATTLE_INIT_PLAYER_STATS
@UNKNOWN70:
	LDY $22
	INY
	STY $22
@UNKNOWN71:
	CPY #$0006
	BCC @UNKNOWN68
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN72:
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::SELECT_BUTTON
	BEQ @UNKNOWN73
	JSL DEBUG_Y_BUTTON_GOODS
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN73:
	JSL RESUME_MUSIC
	LDA #$0000
	JMP a:.LOWORD(@UNKNOWN113)
@UNKNOWN74:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EA97C)
	REP #PROC_FLAGS::ACCUM8
	CMP #$0001
	BEQ @UNKNOWN81
	CMP #$0002
	BNE @UNKNOWN75
	JMP a:.LOWORD(@UNKNOWN88)
@UNKNOWN75:
	CMP #$0003
	BNE @UNKNOWN76
	JMP a:.LOWORD(@UNKNOWN90)
@UNKNOWN76:
	CMP #$0004
	BNE @UNKNOWN77
	JMP a:.LOWORD(@UNKNOWN91)
@UNKNOWN77:
	CMP #$0005
	BNE @UNKNOWN78
	JMP a:.LOWORD(@UNKNOWN95)
@UNKNOWN78:
	CMP #$0006
	BNE @UNKNOWN79
	JMP a:.LOWORD(@UNKNOWN96)
@UNKNOWN79:
	CMP #$0007
	BNE @UNKNOWN80
	JMP a:.LOWORD(@UNKNOWN97)
@UNKNOWN80:
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN81:
	LDA $20
	BEQ @UNKNOWN82
	CMP #$0001
	BEQ @UNKNOWN83
	CMP #$0002
	BEQ @UNKNOWN84
	BRA @UNKNOWN85
@UNKNOWN82:
	LDA #BATTLE_ACTIONS::BASH
	STA $02
	STA $1E
	BRA @UNKNOWN85
@UNKNOWN83:
	LDA #BATTLE_ACTIONS::SHOOT
	STA $02
	STA $1E
	BRA @UNKNOWN85
@UNKNOWN84:
	LDA #BATTLE_ACTIONS::USE_NO_EFFECT
	STA $02
	STA $1E
@UNKNOWN85:
	LDA $1E
	STA $02
	STA .LOWORD(UNKNOWN_7EA97F)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA .LOWORD(UNKNOWN_7EA981)
	REP #PROC_FLAGS::ACCUM8
	LDA $20
	CMP #$0002
	BNE @UNKNOWN86
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN86:
	LDY $02
	LDX #$0001
	LDA #$0000
	JSL REDIRECT_C1242E
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN87
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN87:
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN88:
	LDA $26
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA97D)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EA97D)
	JSL REDIRECT_C1CFC6
	TAX
	BNE @UNKNOWN89
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN89:
	LDA .LOWORD(UNKNOWN_7EA97E)
	AND #$00FF
	TAX
	LDA $26
	JSL UNKNOWN_C3E977
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA97C)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7EA97F)
	STA $02
	STA $1E
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN90:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(GAME_STATE)+game_state::auto_fight_enable
	JSL UNKNOWN_C20266
	.A16
	LDA #BATTLE_ACTIONS::NO_EFFECT
	STA $02
	STA $1E
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN91:
	LDA $26
	CMP #$0003
	BNE @UNKNOWN93
	LDA #BATTLE_ACTIONS::SPY
	STA $02
	STA $1E
	LDA $02
	STA .LOWORD(UNKNOWN_7EA97F)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	STA .LOWORD(UNKNOWN_7EA981)
	LDY $02
	LDX #$0001
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL REDIRECT_C1242E
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN92
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN92:
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN93:
	LDA $26
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA97D)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EA97D)
	JSL REDIRECT_BATTLE_PSI_MENU
	TAX
	BNE @UNKNOWN94
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN94:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EA97C)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7EA97F)
	STA $02
	STA $1E
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN95:
	LDA #BATTLE_ACTIONS::GUARD
	STA $02
	STA $1E
	LDA $02
	STA .LOWORD(UNKNOWN_7EA97F)
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EA981)
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN96:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EA981)
	REP #PROC_FLAGS::ACCUM8
	LDA $26
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(UNKNOWN_7EA982)
	REP #PROC_FLAGS::ACCUM8
	LDA #BATTLE_ACTIONS::RUN_AWAY
	STA $02
	STA $1E
	LDA $02
	STA .LOWORD(UNKNOWN_7EA97F)
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN97:
	LDX #.LOWORD(UNKNOWN_7EA981)
	STX $1C
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EA982)
	STA $04
	LDA $26
	SEP #PROC_FLAGS::ACCUM8
	LDX $04
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA $26
	CMP #$0002
	BEQ @UNKNOWN99
	CMP #$0004
	BNE @UNKNOWN98
	JMP a:.LOWORD(@UNKNOWN111)
@UNKNOWN98:
	JMP a:.LOWORD(@UNKNOWN112)
@UNKNOWN99:
	LDA .LOWORD(GIYGAS_PHASE)
	CMP #GIYGAS_PHASES::START_PRAYING
	BEQ @UNKNOWN100
	CMP #GIYGAS_PHASES::PRAYER_1_USED
	BEQ @UNKNOWN101
	CMP #GIYGAS_PHASES::PRAYER_2_USED
	BEQ @UNKNOWN102
	CMP #GIYGAS_PHASES::PRAYER_3_USED
	BEQ @UNKNOWN103
	CMP #GIYGAS_PHASES::PRAYER_4_USED
	BEQ @UNKNOWN104
	CMP #GIYGAS_PHASES::PRAYER_5_USED
	BEQ @UNKNOWN105
	CMP #GIYGAS_PHASES::PRAYER_6_USED
	BEQ @UNKNOWN106
	CMP #GIYGAS_PHASES::PRAYER_7_USED
	BEQ @UNKNOWN107
	CMP #GIYGAS_PHASES::PRAYER_8_USED
	BEQ @UNKNOWN108
	BRA @UNKNOWN109
@UNKNOWN100:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_1
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN101:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_2
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN102:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_3
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN103:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_4
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN104:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_5
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN105:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_6
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN106:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_7
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN107:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_8
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN108:
	LDA #BATTLE_ACTIONS::FINAL_PRAYER_9
	STA $02
	STA $1E
	BRA @UNKNOWN110
@UNKNOWN109:
	LDA #BATTLE_ACTIONS::PRAY
	STA $02
	STA $1E
@UNKNOWN110:
	LDA $02
	STA .LOWORD(UNKNOWN_7EA97F)
	BRA @UNKNOWN112
@UNKNOWN111:
	LDA #BATTLE_ACTIONS::MIRROR
	STA $02
	STA $1E
	LDA $02
	STA .LOWORD(UNKNOWN_7EA97F)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0011
	LDX $1C
	STA a:.LOWORD(RAM),X
	LDY $02
	LDX #$0001
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL REDIRECT_C1242E
	SEP #PROC_FLAGS::ACCUM8
	LDX $04
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN112
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN112:
	LDX $1A
	REP #PROC_FLAGS::ACCUM8
	LDA f:BATTLE_WINDOW_SIZES,X
	AND #$00FF
	JSL REDIRECT_SET_WINDOW_FOCUS
	JSL RESUME_MUSIC
	LDA $1E
	STA $02
@UNKNOWN113:
	PLD
	RTL
