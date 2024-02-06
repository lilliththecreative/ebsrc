
UNKNOWN_C1B5B6:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT8
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA @VIRTUAL01
	REP #PROC_FLAGS::ACCUM8
	LDA #0
	STA @VIRTUAL02
@UNKNOWN0:
	JSR UNKNOWN_C1C3B6
	.A16
	CMP #1
	BNE @UNKNOWN2
	LDA @VIRTUAL01
	AND #$00FF
	BEQL @UNKNOWN36
	JSR UNKNOWN_C1C373
	TAX
	DEX
	SEP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE + game_state::party_members,X
	STA @LOCAL09
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL09
	AND #$00FF
	JSL UNKNOWN_C1C853
	BRA @UNKNOWN3
@UNKNOWN2:
	.A16
	LDA #0
	JSR UNKNOWN_C193E7
	LOADPTR UNKNOWN_C1C853, @LOCAL00
	LOADPTR UNKNOWN_C1C367, @LOCAL01
	LDX #1
	LDA #0
	JSR CHAR_SELECT_PROMPT
	SEP #PROC_FLAGS::ACCUM8
	STA @LOCAL09
	JSR UNKNOWN_C19437
@UNKNOWN3:
	.A16
	LDA @LOCAL09
	AND #$00FF
	BEQL @UNKNOWN36
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA @VIRTUAL01
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	LDA #1
	JSR SET_WINDOW_FOCUS
	LDA @VIRTUAL01
	AND #$00FF
	TAY
	CPY #$00FF
	BEQ @UNKNOWN6
	LDX #0
	TYA
	JSR UNKNOWN_C1CA72
	JSR PRINT_MENU_ITEMS
@UNKNOWN6:
	LOADPTR UNKNOWN_C1C8BC, @LOCAL00
	JSR UNKNOWN_C11F5A
	LDA #1
	JSR SELECTION_MENU
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL01
	JSR UNKNOWN_C11F8A
	.A16
	LDA @VIRTUAL01
	AND #$00FF
	BEQL @UNKNOWN12
	.A16
	LDA @VIRTUAL01
	AND #$00FF
	TAY
	STY @LOCAL08
	LDX #6
	TYA
	JSR UNKNOWN_C1CA72
@UNKNOWN8:
	.A16
	LOADPTR PSI_ABILITY_TABLE, @VIRTUAL06
	LDY @LOCAL08
	TYA
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	STA @LOCAL08
	INC
	INC
	INC
	INC
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	TAY
	STY @LOCAL07
	LDA @LOCAL09
	AND #$00FF
	TAX
	STX @LOCAL06
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	PHA
	LDY @LOCAL07
	TYA
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ASL
	TAX
	INX
	INX
	INX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	PLX
	CMP CHAR_STRUCT+char_struct::current_pp,X
	BLTEQ @UNKNOWN9
	CREATE_WINDOW_NEAR #WINDOW::TEXT_BATTLE
	.A16
	DISPLAY_TEXT_PTR MSG_BTL_PSI_CANNOT_MENU
	JSR CLOSE_FOCUS_WINDOW
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA @VIRTUAL00
	JMP @UNKNOWN13
@UNKNOWN9:
	.A16
	LDA @LOCAL08
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	CMP #8
	BNE @UNKNOWN11
	LDA GAME_STATE+game_state::party_npc_1
	AND #$00FF
	CMP #PARTY_MEMBER::DUNGEON_MAN
	BEQ @UNKNOWN10
	LDA GAME_STATE+game_state::party_npc_2
	AND #$00FF
	CMP #PARTY_MEMBER::DUNGEON_MAN
	BEQ @UNKNOWN10
	LDA #EVENT_FLAG::FLG_SYS_DISTLPT
	JSL GET_EVENT_FLAG
	CMP #0
	BNE @UNKNOWN10
	LDX GAME_STATE+game_state::walking_style
	CPX #WALKING_STYLE::LADDER
	BEQ @UNKNOWN10
	CPX #WALKING_STYLE::ROPE
	BEQ @UNKNOWN10
	CPX #WALKING_STYLE::ESCALATOR
	BEQ @UNKNOWN10
	CPX #WALKING_STYLE::STAIRS
	BEQ @UNKNOWN10
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL LOAD_SECTOR_ATTRS
	AND #MAP_SECTOR_CONFIG::CANNOT_TELEPORT
	BNE @UNKNOWN10
	JSR UNKNOWN_C1AAFA
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	BRA @UNKNOWN13
@UNKNOWN10:
	.A16
	CREATE_WINDOW_NEAR #WINDOW::TEXT_BATTLE
	DISPLAY_TEXT_PTR MSG_SYS_TLPT_NG
	JSR CLOSE_FOCUS_WINDOW
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA @VIRTUAL00
	BRA @UNKNOWN13
@UNKNOWN11:
	LDX @LOCAL06
	TYA
	JSR DETERMINE_TARGETTING
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	BRA @UNKNOWN13
@UNKNOWN12:
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA @VIRTUAL00
@UNKNOWN13:
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	AND #$00FF
	BEQL @UNKNOWN5
	LDA #WINDOW::UNKNOWN04
	JSL CLOSE_WINDOW
	LDA @VIRTUAL01
	AND #$00FF
	BEQL @UNKNOWN0
	LDA @LOCAL09
	AND #$00FF
	STA @VIRTUAL04
	STA @LOCAL05
	LOADPTR PSI_ABILITY_TABLE, @VIRTUAL06
	LDA @VIRTUAL01
	AND #$00FF
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	STA @VIRTUAL02
	LDY #1
	LDA @VIRTUAL02
	INC
	INC
	INC
	INC
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ASL
	TAX
	INX
	INX
	INX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	TAX
	LDA @LOCAL05
	STA @VIRTUAL04
	JSL UNKNOWN_C3ED2C
	LDA @VIRTUAL02
	INC
	INC
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	CMP #8
	BNE @UNKNOWN16
	LDA @VIRTUAL02
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA @LOCAL00
	LDA @VIRTUAL00
	JSL SET_TELEPORT_STATE
	JMP @UNKNOWN18
@UNKNOWN16:
	.A16
	LDA #.LOWORD(BATTLERS_TABLE)
	STA CURRENT_ATTACKER
	TAX
	LDA @VIRTUAL04
	JSL BATTLE_INIT_PLAYER_STATS
	LDX #.SIZEOF(char_struct::name)
	LDA @VIRTUAL04
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR UNKNOWN_C1AC4A
	LDA @VIRTUAL00
	AND #$00FF
	TAY
	CPY #$00FF
	BEQ @UNKNOWN17
	LDX #5
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR UNKNOWN_C1ACA1
@UNKNOWN17:
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL01
	JSR UNKNOWN_C1ACF8
	.A16
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDA @VIRTUAL01
	AND #$00FF
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ASL
	INC
	INC
	INC
	INC
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
@UNKNOWN18:
	.A16
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	LOADPTR PSI_ABILITY_TABLE, @VIRTUAL0A
	LDA @VIRTUAL01
	AND #$00FF
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	INC
	INC
	INC
	INC
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL03
	LDA @VIRTUAL0A+2
	STA @LOCAL03+2
	LDA [@VIRTUAL0A]
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ASL
	CLC
	ADC #8
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQL @UNKNOWN35
	LDX #.LOWORD(BATTLERS_TABLE) + (1 * .SIZEOF(battler))
	STX CURRENT_TARGET
	LDA @VIRTUAL00
	AND #$00FF
	TAY
	CPY #$00FF
	BNEL @UNKNOWN30
	LDY #0
	STY @LOCAL02
	JMP @UNKNOWN27
@UNKNOWN22:
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE) + game_state::party_members
	STA @VIRTUAL02
	LDX #5
	STX @LOCAL07
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	LDX @LOCAL07
	JSR UNKNOWN_C1ACA1
	LDX #.LOWORD(BATTLERS_TABLE) + (1 * .SIZEOF(battler))
	STX @LOCAL06
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	AND #$00FF
	LDX @LOCAL06
	JSL BATTLE_INIT_PLAYER_STATS
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDA @VIRTUAL01
	AND #$00FF
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ASL
	CLC
	ADC #8
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA @LOCAL06
	STA @VIRTUAL02
	LDY @LOCAL02
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC @VIRTUAL02
	PHA
	LDA @LOCAL06
	CLC
	ADC CURRENT_TARGET
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__+29,X
	PLX
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN24:
	STA @VIRTUAL02
	LDA #7
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN23
	LDY @LOCAL02
	INY
	STY @LOCAL02
@UNKNOWN27:
	STY @VIRTUAL02
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC @VIRTUAL02
	JUMPGTS @UNKNOWN22
	JMP @UNKNOWN34
@UNKNOWN30:
	TYA
	JSL BATTLE_INIT_PLAYER_STATS
	MOVE_INT @LOCAL03, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ASL
	CLC
	ADC #8
	MOVE_INTX @LOCAL04, @VIRTUAL06
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN32
@UNKNOWN31:
	LDA @LOCAL06
	STA @VIRTUAL02
	LDA @VIRTUAL00
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC @VIRTUAL02
	PHA
	LDA @LOCAL06
	CLC
	ADC CURRENT_TARGET
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__+29,X
	PLX
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN32:
	STA @VIRTUAL02
	LDA #7
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN31
@UNKNOWN34:
	JSL UNKNOWN_C3EE4D
@UNKNOWN35:
	LDA #1
	STA @VIRTUAL02
@UNKNOWN36:
	LDA #1
	JSL CLOSE_WINDOW
	LDA @VIRTUAL02
	END_C_FUNCTION
