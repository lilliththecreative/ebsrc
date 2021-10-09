
DEBUG_Y_BUTTON_MENU: ;$C12E63
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 30
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JSR a:.LOWORD(SHOW_HPPP_WINDOWS)
@UNKNOWN0:
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT $06, $1A
	CREATE_WINDOW_NEAR #WINDOW::PHONE_MENU
	LDA #$0000
	STA $18
	BRA @UNKNOWN2
@UNKNOWN1:
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	JSR a:.LOWORD(UNKNOWN_C113D1)
	LDA $18
	INC
	STA $18
@UNKNOWN2:
	LOADPTR DEBUG_MENU_TEXT, $0A
	LDA $18
	STA $04
	ASL
	ASL
	ADC $04
	ASL
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	BNE @UNKNOWN1
	LDY #$0000
	TYX
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1180D)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	CMP #$0001
	BNE @UNKNOWN3
	JMP @UNKNOWN26
@UNKNOWN3:
	CMP #$0002
	BNE @UNKNOWN4
	JMP @UNKNOWN27
@UNKNOWN4:
	CMP #$0003
	BNE @UNKNOWN5
	JMP @UNKNOWN28
@UNKNOWN5:
	CMP #$0004
	BNE @UNKNOWN6
	JMP @UNKNOWN29
@UNKNOWN6:
	CMP #$0005
	BNE @UNKNOWN7
	JMP @UNKNOWN30
@UNKNOWN7:
	CMP #$0006
	BNE @UNKNOWN8
	JMP @UNKNOWN31
@UNKNOWN8:
	CMP #$0007
	BNE @UNKNOWN9
	JMP @UNKNOWN32
@UNKNOWN9:
	CMP #$0008
	BNE @UNKNOWN10
	JMP @UNKNOWN33
@UNKNOWN10:
	CMP #$0009
	BNE @UNKNOWN11
	JMP @UNKNOWN36
@UNKNOWN11:
	CMP #$000A
	BNE @UNKNOWN12
	JMP @UNKNOWN37
@UNKNOWN12:
	CMP #$000B
	BNE @UNKNOWN13
	JMP @UNKNOWN38
@UNKNOWN13:
	CMP #$000C
	BNE @UNKNOWN14
	JMP @UNKNOWN39
@UNKNOWN14:
	CMP #$000D
	BNE @UNKNOWN15
	JMP @UNKNOWN40
@UNKNOWN15:
	CMP #$000E
	BNE @UNKNOWN16
	JMP @UNKNOWN41
@UNKNOWN16:
	CMP #$000F
	BNE @UNKNOWN17
	JMP @UNKNOWN42
@UNKNOWN17:
	CMP #$0010
	BNE @UNKNOWN18
	JMP @UNKNOWN43
@UNKNOWN18:
	CMP #$0011
	BNE @UNKNOWN19
	JMP @UNKNOWN44
@UNKNOWN19:
	CMP #$0012
	BNE @UNKNOWN20
	JMP @UNKNOWN45
@UNKNOWN20:
	CMP #$0013
	BNE @UNKNOWN21
	JMP @UNKNOWN46
@UNKNOWN21:
	CMP #$0014
	BNE @UNKNOWN22
	JMP @UNKNOWN47
@UNKNOWN22:
	CMP #$0015
	BNE @UNKNOWN23
	JMP @UNKNOWN49
@UNKNOWN23:
	CMP #$0016
	BNE @UNKNOWN24
	JMP @UNKNOWN50
@UNKNOWN24:
	CMP #$0017
	BNE @UNKNOWN25
	JMP @UNKNOWN51
@UNKNOWN25:
	JMP @UNKNOWN52
@UNKNOWN26:
	JSL DEBUG_Y_BUTTON_FLAG
	JMP @UNKNOWN53
@UNKNOWN27:
	JSL DEBUG_Y_BUTTON_GOODS
	JMP @UNKNOWN53
@UNKNOWN28:
	JSL SAVE_CURRENT_GAME
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(RESPAWN_X)
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(RESPAWN_Y)
	JMP @UNKNOWN53
@UNKNOWN29:
	LOADPTR TEXT_DEBUG_APPLE_MENU, $06
	MOVE_INT $06, $1A
	JMP @UNKNOWN53
@UNKNOWN30:
	LOADPTR TEXT_DEBUG_BANANA_MENU, $06
	MOVE_INT $06, $1A
	JMP @UNKNOWN53
@UNKNOWN31:
	LOADPTR TEXT_DEBUG_UNKNOWN_MENU, $06
	MOVE_INT $06, $1A
	JMP @UNKNOWN53
@UNKNOWN32:
	LOADPTR TEXT_DEBUG_UNKNOWN_MENU_2, $06
	MOVE_INT $06, $1A
	JMP @UNKNOWN53
@UNKNOWN33:
	LDX #$0000
	STX $16
	BRA @UNKNOWN35
@UNKNOWN34:
	LDA #$0000
	JSL UNDRAW_HP_PP_WINDOW
	JSL UNKNOWN_C12E42
	JSL UNKNOWN_C12E42
	LDA #$0000
	JSL UNKNOWN_C207B6
	JSL UNKNOWN_C12E42
	JSL UNKNOWN_C12E42
	LDX $16
	INX
	STX $16
@UNKNOWN35:
	CPX #$001E
	BCC @UNKNOWN34
	LDA #$1E10
	STA $04
	LDA #$08E8
	STA $02
	LDX #$0001
	TXA
	JSL FADE_OUT
	LDX $02
	LDA $04
	JSL LOAD_MAP_AT_POSITION
	LDY #$0000
	LDX $02
	LDA $04
	JSL UNKNOWN_C03FA9
	LDX #$0001
	TXA
	JSL FADE_IN
	JMP @UNKNOWN53
@UNKNOWN36:
	JSL RAND
	AND #$0001
	JSL COFFEETEA_SCENE
	JMP @UNKNOWN53
@UNKNOWN37:
	LDA #$0001
	JSL LEARN_SPECIAL_PSI
	JMP @UNKNOWN53
@UNKNOWN38:
	LDA #$0002
	JSL LEARN_SPECIAL_PSI
	JMP @UNKNOWN53
@UNKNOWN39:
	LDA #$0003
	JSL LEARN_SPECIAL_PSI
	LDA #$0004
	JSL LEARN_SPECIAL_PSI
	JMP @UNKNOWN53
@UNKNOWN40:
	LDA #$0000
	JSL ENTER_YOUR_NAME_PLEASE
	JMP @UNKNOWN53
@UNKNOWN41:
	LDA #$0001
	JSL ENTER_YOUR_NAME_PLEASE
	JMP @UNKNOWN53
@UNKNOWN42:
	JSL UNKNOWN_C4D744
	BRA @UNKNOWN53
@UNKNOWN43:
	JSL DEBUG_Y_BUTTON_GUIDE
	BRA @UNKNOWN53
@UNKNOWN44:
	JSL UNKNOWN_C4ED0E
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1BCAB)
	BRA @UNKNOWN53
@UNKNOWN45:
	LDA #$0001
	JSL USE_SOUND_STONE
	BRA @UNKNOWN53
@UNKNOWN46:
	JSL PLAY_CREDITS
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1BCAB)
	BRA @UNKNOWN53
@UNKNOWN47:
	LDX #$0000
	LDA .LOWORD(UNKNOWN_7E9698)
	BNE @UNKNOWN48
	LDX #$0001
@UNKNOWN48:
	TXA
	JSR a:.LOWORD(UNKNOWN_C12D17)
	BRA @UNKNOWN53
@UNKNOWN49:
	JSL UNKNOWN_EFEA4A
	BRA @UNKNOWN56
@UNKNOWN50:
	LOADPTR TEXT_BATTLE_GIYGAS_PRAYER_9_1, $06
	MOVE_INT $06, $1A
	BRA @UNKNOWN53
@UNKNOWN51:
	LOADPTR TEXT_END_OF_GAME_PICKY_EVENT, $06
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	BRA @UNKNOWN56
@UNKNOWN52:
	JSL UNKNOWN_EFEA9E
	BRA @UNKNOWN56
@UNKNOWN53:
	MOVE_INT_CONSTANT NULL, $0A
	MOVE_INT $1A, $06
	CMP $0C
	BNE @UNKNOWN54
	LDA $06
	CMP $0A
@UNKNOWN54:
	BNE @UNKNOWN55
	JMP @UNKNOWN0
@UNKNOWN55:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
@UNKNOWN56:
	JSR a:.LOWORD(UNKNOWN_C1008E)
	JSR a:.LOWORD(HIDE_HPPP_WINDOWS)
@UNKNOWN57:
	JSL UNKNOWN_C12DD5
	LDA .LOWORD(UNKNOWN_7EB4A8)
	CMP #$FFFF
	BNE @UNKNOWN57
	JSL UNKNOWN_C09451
	PLD
	RTL
