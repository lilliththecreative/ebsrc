
CC_1F_TREE: ;$C181BB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXA
	BEQL @UNKNOWN74
	CMP #$0001
	BEQL @UNKNOWN75
	CMP #$0002
	BEQL @UNKNOWN76
	CMP #$0003
	BEQL @UNKNOWN77
	CMP #$0004
	BEQL @UNKNOWN78
	CMP #$0005
	BEQL @UNKNOWN79
	CMP #$0006
	BEQL @UNKNOWN80
	CMP #$0007
	BEQL @UNKNOWN81
	CMP #$0011
	BEQL @UNKNOWN82
	CMP #$0012
	BEQL @UNKNOWN83
	CMP #$0013
	BEQL @UNKNOWN84
	CMP #$0014
	BEQL @UNKNOWN85
	CMP #$0015
	BEQL @UNKNOWN86
	CMP #$0016
	BEQL @UNKNOWN87
	CMP #$0017
	BEQL @UNKNOWN88
	CMP #$0018
	BEQL @UNKNOWN89
	CMP #$0019
	BEQL @UNKNOWN90
	CMP #$001A
	BEQL @UNKNOWN91
	CMP #$001B
	BEQL @UNKNOWN92
	CMP #$001C
	BEQL @UNKNOWN93
	CMP #$001D
	BEQL @UNKNOWN94
	CMP #$001E
	BEQL @UNKNOWN95
	CMP #$001F
	BEQL @UNKNOWN96
	CMP #$0020
	BEQL @UNKNOWN97
	CMP #$0021
	BEQL @UNKNOWN98
	CMP #$0023
	BEQL @UNKNOWN99
	CMP #$0030
	BEQL @UNKNOWN100
	CMP #$0031
	BEQL @UNKNOWN100
	CMP #$0040
	BEQL @UNKNOWN101
	CMP #$0041
	BEQL @UNKNOWN102
	CMP #$0050
	BEQL @UNKNOWN103
	CMP #$0051
	BEQL @UNKNOWN104
	CMP #$0052
	BEQL @UNKNOWN105
	CMP #$0060
	BEQL @UNKNOWN106
	CMP #$0061
	BEQL @UNKNOWN107
	CMP #$0062
	BEQL @UNKNOWN108
	CMP #$0063
	BEQL @UNKNOWN109
	CMP #$0064
	BEQL @UNKNOWN110
	CMP #$0065
	BEQL @UNKNOWN111
	CMP #$0066
	BEQL @UNKNOWN112
	CMP #$0067
	BEQL @UNKNOWN113
	CMP #$0068
	BEQL @UNKNOWN114
	CMP #$0069
	BEQL @UNKNOWN115
	CMP #$0071
	BEQL @UNKNOWN118
	CMP #$0081
	BEQL @UNKNOWN119
	CMP #$0083
	BEQL @UNKNOWN120
	CMP #$0090
	BEQL @UNKNOWN121
	CMP #$00A0
	BEQL @UNKNOWN122
	CMP #$00A1
	BEQL @UNKNOWN123
	CMP #$00A2
	BEQL @UNKNOWN124
	CMP #$00B0
	BEQL @UNKNOWN126
	CMP #$00C0
	BEQL @UNKNOWN127
	CMP #$00D0
	BEQL @UNKNOWN128
	CMP #$00D1
	BEQL @UNKNOWN129
	CMP #$00D2
	BEQL @UNKNOWN130
	CMP #$00D3
	BEQL @UNKNOWN131
	CMP #$00E1
	BEQL @UNKNOWN132
	CMP #$00E4
	BEQL @UNKNOWN133
	CMP #$00E5
	BEQL @UNKNOWN134
	CMP #$00E6
	BEQL @UNKNOWN135
	CMP #$00E7
	BEQL @UNKNOWN136
	CMP #$00E8
	BEQL @UNKNOWN137
	CMP #$00E9
	BEQL @UNKNOWN138
	CMP #$00EA
	BEQL @UNKNOWN139
	CMP #$00EB
	BEQL @UNKNOWN140
	CMP #$00EC
	BEQL @UNKNOWN141
	CMP #$00ED
	BEQL @UNKNOWN142
	CMP #$00EE
	BEQL @UNKNOWN143
	CMP #$00EF
	BEQL @UNKNOWN144
	CMP #$00F0
	BEQL @UNKNOWN145
	CMP #$00F1
	BEQL @UNKNOWN146
	CMP #$00F2
	BEQL @UNKNOWN147
	CMP #$00F3
	BEQL @UNKNOWN148
	CMP #$00F4
	BEQL @UNKNOWN149
	JMP @UNKNOWN150
@UNKNOWN74:
	LDA #.LOWORD(CC_1F_00)
	JMP @UNKNOWN151
@UNKNOWN75:
	LDA #.LOWORD(CC_1F_01)
	JMP @UNKNOWN151
@UNKNOWN76:
	LDA #.LOWORD(CC_1F_02)
	JMP @UNKNOWN151
@UNKNOWN77:
	JSL UNKNOWN_C069F7
	LDX #$0000
	JSL UNKNOWN_C216AD
	JMP @UNKNOWN150
@UNKNOWN78:
	LDA #.LOWORD(CC_1F_04)
	JMP @UNKNOWN151
@UNKNOWN79:
	LDA #$0000
	JSL SET_BOUNDARY_BEHAVIOR
	JMP @UNKNOWN150
@UNKNOWN80:
	LDA #$0001
	JSL SET_BOUNDARY_BEHAVIOR
	JMP @UNKNOWN150
@UNKNOWN81:
	LDA #.LOWORD(CC_1F_07)
	JMP @UNKNOWN151
@UNKNOWN82:
	LDA #.LOWORD(CC_1F_11)
	JMP @UNKNOWN151
@UNKNOWN83:
	LDA #.LOWORD(CC_1F_12)
	JMP @UNKNOWN151
@UNKNOWN84:
	LDA #.LOWORD(CC_1F_13)
	JMP @UNKNOWN151
@UNKNOWN85:
	LDA #.LOWORD(CC_1F_14)
	JMP @UNKNOWN151
@UNKNOWN86:
	LDA #.LOWORD(CC_1F_15)
	JMP @UNKNOWN151
@UNKNOWN87:
	LDA #.LOWORD(CC_1F_16)
	JMP @UNKNOWN151
@UNKNOWN88:
	LDA #.LOWORD(CC_1F_17)
	JMP @UNKNOWN151
@UNKNOWN89:
	LDA #.LOWORD(CC_1F_18)
	JMP @UNKNOWN151
@UNKNOWN90:
	LDA #.LOWORD(CC_1F_19)
	JMP @UNKNOWN151
@UNKNOWN91:
	LDA #.LOWORD(CC_1F_1A)
	JMP @UNKNOWN151
@UNKNOWN92:
	LDA #.LOWORD(CC_1F_1B)
	JMP @UNKNOWN151
@UNKNOWN93:
	LDA #.LOWORD(CC_1F_1C)
	JMP @UNKNOWN151
@UNKNOWN94:
	LDA #.LOWORD(CC_1F_1D)
	JMP @UNKNOWN151
@UNKNOWN95:
	LDA #.LOWORD(CC_1F_1E)
	JMP @UNKNOWN151
@UNKNOWN96:
	LDA #.LOWORD(CC_1F_1F)
	JMP @UNKNOWN151
@UNKNOWN97:
	LDA #.LOWORD(CC_1F_20)
	JMP @UNKNOWN151
@UNKNOWN98:
	LDA #.LOWORD(CC_1F_21)
	JMP @UNKNOWN151
@UNKNOWN99:
	LDA #.LOWORD(CC_1F_23)
	JMP @UNKNOWN151
@UNKNOWN100:
	JSR CHANGE_CURRENT_WINDOW_FONT
	JMP @UNKNOWN150
@UNKNOWN101:
	LDA #.LOWORD(CC_1F_40)
	JMP @UNKNOWN151
@UNKNOWN102:
	LDA #.LOWORD(CC_1F_41)
	JMP @UNKNOWN151
@UNKNOWN103:
	JSR LOCK_INPUT
	JMP @UNKNOWN150
@UNKNOWN104:
	JSR UNLOCK_INPUT
	JMP @UNKNOWN150
@UNKNOWN105:
	LDA #.LOWORD(CC_1F_52)
	JMP @UNKNOWN151
@UNKNOWN106:
	LDA #.LOWORD(CC_1F_60)
	JMP @UNKNOWN151
@UNKNOWN107:
	JSR UNKNOWN_C102D0
	JMP @UNKNOWN150
@UNKNOWN108:
	LDA #.LOWORD(CC_1F_62)
	JMP @UNKNOWN151
@UNKNOWN109:
	LDA #.LOWORD(CC_1F_63)
	JMP @UNKNOWN151
@UNKNOWN110:
	JSL UNKNOWN_C23008
	JMP @UNKNOWN150
@UNKNOWN111:
	JSL UNKNOWN_C2307B
	JMP @UNKNOWN150
@UNKNOWN112:
	LDA #.LOWORD(CC_1F_66)
	JMP @UNKNOWN151
@UNKNOWN113:
	LDA #.LOWORD(CC_1F_67)
	JMP @UNKNOWN151
@UNKNOWN114:
	LDA GAME_STATE+game_state::leader_x_coord
	STA GAME_STATE+game_state::exit_mouse_x_coord
	LDA GAME_STATE+game_state::leader_y_coord
	STA GAME_STATE+game_state::exit_mouse_y_coord
	JMP @UNKNOWN150
@UNKNOWN115:
	LDY #$0001
	STY $12
	BRA @UNKNOWN117
@UNKNOWN116:
	LDX #$0000
	TYA
	JSL SET_EVENT_FLAG
	LDY $12
	INY
	STY $12
@UNKNOWN117:
	CPY #$000A
	BLTEQ @UNKNOWN116
	LDX #$0001
	TXA
	JSL FADE_OUT
	LDA #SFX::EQUIPPED_ITEM
	JSL PLAY_SOUND
	LDA GAME_STATE+game_state::exit_mouse_x_coord
	STA $04
	LDA GAME_STATE+game_state::exit_mouse_y_coord
	STA $02
	LDX $02
	LDA $04
	JSL LOAD_MAP_AT_POSITION
<<<<<<< HEAD
	STZ PLAYER_HAS_MOVED_SINCE_MAP_LOAD
	LDY #4
	LDX @VIRTUAL02
	LDA @VIRTUAL04
=======
	STZ UNKNOWN_7E2890
	LDY #$0004
	LDX $02
	LDA $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C03FA9
	LDX #$0001
	TXA
	JSL FADE_IN
<<<<<<< HEAD
	LDA #.LOWORD(-1)
	STA STAIRS_DIRECTION
=======
	LDA #$FFFF
	STA UNKNOWN_7E5DC4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JMP @UNKNOWN150
@UNKNOWN118:
	LDA #.LOWORD(CC_1F_71)
	JMP @UNKNOWN151
@UNKNOWN119:
	LDA #.LOWORD(CC_1F_81)
	JMP @UNKNOWN151
@UNKNOWN120:
	LDA #.LOWORD(CC_1F_83)
	JMP @UNKNOWN151
@UNKNOWN121:
	JSR UNKNOWN_C19441
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR SET_WORKING_MEMORY
	JMP @UNKNOWN150
@UNKNOWN122:
	LDA #$0001
	JSL UNKNOWN_C226C5
	JMP @UNKNOWN150
@UNKNOWN123:
	LDA #$0000
	JSL UNKNOWN_C226C5
	JMP @UNKNOWN150
@UNKNOWN124:
	JSL UNKNOWN_C226E6
	SIGN_EXTENDA1632 $06
	MOVE_INT $06, $0E
	JSR SET_WORKING_MEMORY
	JMP @UNKNOWN150
@UNKNOWN126:
	JSL SAVE_CURRENT_GAME
	JMP @UNKNOWN150
@UNKNOWN127:
	LDA #.LOWORD(CC_1F_C0)
	JMP @UNKNOWN151
@UNKNOWN128:
	LDA #.LOWORD(CC_1F_D0)
	JMP @UNKNOWN151
@UNKNOWN129:
	JSL GET_DISTANCE_TO_MAGIC_TRUFFLE
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR SET_WORKING_MEMORY
	BRA @UNKNOWN150
@UNKNOWN130:
	LDA #.LOWORD(CC_1F_D2)
	BRA @UNKNOWN151
@UNKNOWN131:
	LDA #.LOWORD(CC_1F_D3)
	BRA @UNKNOWN151
@UNKNOWN132:
	LDA #.LOWORD(CC_1F_E1)
	BRA @UNKNOWN151
@UNKNOWN133:
	LDA #.LOWORD(CC_1F_E4)
	BRA @UNKNOWN151
@UNKNOWN134:
	LDA #.LOWORD(CC_1F_E5)
	BRA @UNKNOWN151
@UNKNOWN135:
	LDA #.LOWORD(CC_1F_E6)
	BRA @UNKNOWN151
@UNKNOWN136:
	LDA #.LOWORD(CC_1F_E7)
	BRA @UNKNOWN151
@UNKNOWN137:
	LDA #.LOWORD(CC_1F_E8)
	BRA @UNKNOWN151
@UNKNOWN138:
	LDA #.LOWORD(CC_1F_E9)
	BRA @UNKNOWN151
@UNKNOWN139:
	LDA #.LOWORD(CC_1F_EA)
	BRA @UNKNOWN151
@UNKNOWN140:
	LDA #.LOWORD(CC_1F_EB)
	BRA @UNKNOWN151
@UNKNOWN141:
	LDA #.LOWORD(CC_1F_EC)
	BRA @UNKNOWN151
@UNKNOWN142:
	JSL UNKNOWN_C466B8
	BRA @UNKNOWN150
@UNKNOWN143:
	LDA #.LOWORD(CC_1F_EE)
	BRA @UNKNOWN151
@UNKNOWN144:
	LDA #.LOWORD(CC_1F_EF)
	BRA @UNKNOWN151
@UNKNOWN145:
	JSL GET_ON_BICYCLE
	BRA @UNKNOWN150
@UNKNOWN146:
	LDA #.LOWORD(CC_1F_F1)
	BRA @UNKNOWN151
@UNKNOWN147:
	LDA #.LOWORD(CC_1F_F2)
	BRA @UNKNOWN151
@UNKNOWN148:
	LDA #.LOWORD(CC_1F_F3)
	BRA @UNKNOWN151
@UNKNOWN149:
	LDA #.LOWORD(CC_1F_F4)
	BRA @UNKNOWN151
@UNKNOWN150:
	LDA #$0000
@UNKNOWN151:
	PLD
	RTS
