
UNKNOWN_C1B5B6: ;$C1B5B6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 41
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA $01
	LDY #$0000
	STY $27
	STZ .LOWORD(UNKNOWN_7E9D18)
@UNKNOWN0:
	JSR a:.LOWORD(UNKNOWN_C1C3B6)
	.A16
	CMP #$0001
	BNE @UNKNOWN2
	LDA $01
	AND #$00FF
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN36)
@UNKNOWN1:
	JSR a:.LOWORD(UNKNOWN_C1C373)
	TAX
	DEX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	STA $26
	REP #PROC_FLAGS::ACCUM8
	LDA $26
	AND #$00FF
	JSL UNKNOWN_C1C853
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9D18)
	BRA @UNKNOWN3
@UNKNOWN2:
	.A16
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LOADPTR UNKNOWN_C1C853, $0E
	LOADPTR UNKNOWN_C1C367, $12
	LDX #$0001
	LDA #$0000
	JSR a:.LOWORD(CHAR_SELECT_PROMPT)
	SEP #PROC_FLAGS::ACCUM8
	STA $26
	JSR a:.LOWORD(UNKNOWN_C19437)
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	LDA $26
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E9D16)
	LDA $26
	AND #$00FF
	BNE @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN36)
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA $01
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDA $01
	AND #$00FF
	CMP #$00FF
	BEQ @UNKNOWN6
	LDX #$0000
	JSR a:.LOWORD(UNKNOWN_C1CA72)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
@UNKNOWN6:
	LOADPTR UNKNOWN_C1C8BC, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	SEP #PROC_FLAGS::ACCUM8
	STA $01
	JSR a:.LOWORD(UNKNOWN_C11F8A)
	.A16
	LDA $01
	AND #$00FF
	BNE @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN7:
	.A16
	LDA .LOWORD(UNKNOWN_7E9D18)
	AND #$00FF
	BNE @UNKNOWN8
	LDX #$0006
	LDA $01
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C1CA72)
@UNKNOWN8:
	.A16
	LOADPTR PSI_ABILITY_TABLE, $06
	LDA $01
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	ADC $04
	STA $24
	INC
	INC
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA $02
	LDA $26
	AND #$00FF
	TAX
	STX $22
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	PHA
	LDA $02
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	TAX
	INX
	INX
	INX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	PLX
	CMP .LOWORD(CHAR_STRUCT)+char_struct::current_pp,X
	BCC @UNKNOWN9
	BEQ @UNKNOWN9
	CREATE_WINDOW_NEAR #WINDOW::TEXT_BATTLE
	.A16
	DISPLAY_TEXT_PTR TEXT_NOT_ENOUGH_PP
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $00
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN9:
	.A16
	LDA $24
	INC
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CMP #$0008
	BNE @UNKNOWN11
	LDA .LOWORD(GAME_STATE)+game_state::party_npc_1
	AND #$00FF
	CMP #PARTY_MEMBER::DUNGEON_MAN
	BEQ @UNKNOWN10
	LDA .LOWORD(GAME_STATE)+game_state::party_npc_2
	AND #$00FF
	CMP #PARTY_MEMBER::DUNGEON_MAN
	BEQ @UNKNOWN10
	LDA #EVENT_FLAG::NPC_DELIVERY
	JSL GET_EVENT_FLAG
	CMP #$0000
	BNE @UNKNOWN10
	LDX .LOWORD(GAME_STATE)+game_state::walking_style
	CPX #WALKING_STYLE::LADDER
	BEQ @UNKNOWN10
	CPX #WALKING_STYLE::ROPE
	BEQ @UNKNOWN10
	CPX #WALKING_STYLE::ESCALATOR
	BEQ @UNKNOWN10
	CPX #WALKING_STYLE::STAIRS
	BEQ @UNKNOWN10
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL LOAD_SECTOR_ATTRS
	AND #MAP_SECTOR_CONFIG::CANNOT_TELEPORT
	BNE @UNKNOWN10
	JSR a:.LOWORD(UNKNOWN_C1AAFA)
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	BRA @UNKNOWN13
@UNKNOWN10:
	.A16
	CREATE_WINDOW_NEAR #WINDOW::TEXT_BATTLE
	DISPLAY_TEXT_PTR TEXT_CANNOT_TELEPORT_HERE
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $00
	BRA @UNKNOWN13
@UNKNOWN11:
	LDX $22
	LDA $02
	JSR a:.LOWORD(DETERMINE_TARGETTING)
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	BRA @UNKNOWN13
@UNKNOWN12:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $00
@UNKNOWN13:
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BNE @UNKNOWN14
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN14:
	LDA #$0004
	JSL CLOSE_WINDOW
	LDA $01
	AND #$00FF
	BNE @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN15:
	LDA $26
	AND #$00FF
	STA $04
	STA $27
	LOADPTR PSI_ABILITY_TABLE, $06
	LDA $01
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	ADC $04
	STA $02
	LDY #$0001
	LDA $02
	INC
	INC
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	TAX
	INX
	INX
	INX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	TAX
	LDA $27
	STA $04
	JSL UNKNOWN_C3ED2C
	LDA $02
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	CMP #$0008
	BNE @UNKNOWN16
	LDA $02
	INC
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA $0E
	LDA $00
	JSL SET_TELEPORT_STATE
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN16:
	.A16
	LDA #.LOWORD(BATTLERS_TABLE)
	STA .LOWORD(CURRENT_ATTACKER)
	TAX
	LDA $04
	JSL BATTLE_INIT_PLAYER_STATS
	LDX #$0005
	LDA $04
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR a:.LOWORD(UNKNOWN_C1AC4A)
	LDA $00
	AND #$00FF
	TAY
	CPY #$00FF
	BEQ @UNKNOWN17
	LDX #$0005
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR a:.LOWORD(UNKNOWN_C1ACA1)
@UNKNOWN17:
	SEP #PROC_FLAGS::ACCUM8
	LDA $01
	JSR a:.LOWORD(UNKNOWN_C1ACF8)
	.A16
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LOADPTR BATTLE_ACTION_TABLE, $0A
	LDA $01
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	ADC $04
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	INC
	INC
	INC
	INC
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
@UNKNOWN18:
	.A16
	LOADPTR BATTLE_ACTION_TABLE, $06
	MOVE_INT $06, $1E
	LOADPTR PSI_ABILITY_TABLE, $0A
	LDA $01
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	ADC $04
	INC
	INC
	INC
	INC
	CLC
	ADC $0A
	STA $0A
	STA $1A
	LDA $0C
	STA $1C
	LDA [$0A]
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$0008
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN19
	LDA $06
	CMP $0A
@UNKNOWN19:
	BNE @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN35)
@UNKNOWN20:
	LDX #$9FFA
	STX .LOWORD(CURRENT_TARGET)
	LDA $00
	AND #$00FF
	TAY
	CPY #$00FF
	BEQ @UNKNOWN21
	JMP a:.LOWORD(@UNKNOWN30)
@UNKNOWN21:
	LDY #$0000
	STY $22
	JMP a:.LOWORD(@UNKNOWN27)
@UNKNOWN22:
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE) + game_state::party_members
	STA $02
	LDX #$0005
	STX $18
	LDX $02
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	LDX $18
	JSR a:.LOWORD(UNKNOWN_C1ACA1)
	LDX #$9FFA
	STX $18
	LDX $02
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDX $18
	JSL BATTLE_INIT_PLAYER_STATS
	LOADPTR BATTLE_ACTION_TABLE, $0A
	LDA $01
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	ADC $04
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$0008
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	PHA
	MOVE_INT $06, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
	LDA #$0000
	STA $16
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA $16
	STA $02
	LDY $22
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC $02
	PHA
	LDA $16
	CLC
	ADC .LOWORD(CURRENT_TARGET)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM)+29,X
	PLX
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA $16
	INC
	STA $16
@UNKNOWN24:
	STA $02
	LDA #$0007
	CLC
	SBC $02
	BVS @UNKNOWN25
	BPL @UNKNOWN23
	BRA @UNKNOWN26
@UNKNOWN25:
	BMI @UNKNOWN23
@UNKNOWN26:
	LDY $22
	INY
	STY $22
@UNKNOWN27:
	STY $02
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC $02
	BVS @UNKNOWN28
	BMI @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN22)
@UNKNOWN28:
	BPL @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN22)
@UNKNOWN29:
	JMP a:.LOWORD(@UNKNOWN34)
@UNKNOWN30:
	TYA
	JSL BATTLE_INIT_PLAYER_STATS
	MOVE_INT $1A, $0A
	LDA [$0A]
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$0008
	MOVE_INTX $1E, $06
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	PHA
	MOVE_INT $06, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
	LDA #$0000
	STA $22
	BRA @UNKNOWN32
@UNKNOWN31:
	LDA $22
	STA $02
	LDA $00
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC $02
	PHA
	LDA $22
	CLC
	ADC .LOWORD(CURRENT_TARGET)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM)+29,X
	PLX
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA $22
	INC
	STA $22
@UNKNOWN32:
	STA $02
	LDA #$0007
	CLC
	SBC $02
	BVS @UNKNOWN33
	BPL @UNKNOWN31
	BRA @UNKNOWN34
@UNKNOWN33:
	BMI @UNKNOWN31
@UNKNOWN34:
	JSL UNKNOWN_C3EE4D
@UNKNOWN35:
	LDY #$0001
	STY $27
@UNKNOWN36:
	LDA #$0001
	JSL CLOSE_WINDOW
	LDY $27
	TYA
	PLD
	RTS
