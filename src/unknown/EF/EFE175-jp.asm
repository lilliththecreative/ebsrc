
UNKNOWN_EFE175:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LOADPTR BUFFER, @VIRTUAL06
	LDA #0
	STA [@VIRTUAL06]
	LDA DEBUG_START_POSITION_X
	STA @VIRTUAL04
	LDA DEBUG_START_POSITION_Y
	STA @VIRTUAL02
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C0927C
	JSL UNKNOWN_C01A86
	LDX #0
	LDA #$8000
	JSL ALLOC_SPRITE_MEM
	JSL INITIALIZE_MISC_OBJECT_DATA
	LDA DEBUG_VIEW_CHARACTER_SPRITE
	STA @LOCAL07
	LDA #23
	STA ENTITY_ALLOCATION_MIN_SLOT
	LDA #24
	STA ENTITY_ALLOCATION_MAX_SLOT
	LDA #3
	STA NEW_ENTITY_PRIORITY
	LDA @VIRTUAL04
	STA GAME_STATE+game_state::leader_x_coord
	LDA @VIRTUAL02
	STA GAME_STATE+game_state::leader_y_coord
	LDY #0
	TYX
	LDA #EVENT_SCRIPT::EVENT_001
	JSL INIT_ENTITY
	JSL UNKNOWN_C02D29
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN1
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:game_state::party_members,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN1:
	CMP #6
	BCC @UNKNOWN0
	LDA #CHARACTER_PAULA
	JSL ADD_CHAR_TO_PARTY
	LDA DEBUG_MODE_NUMBER
	CMP #5
	BEQ @UNKNOWN2
	LDA DEBUG_MODE_NUMBER
	CMP #3
	BEQ @UNKNOWN2
	LDA #CHARACTER_JEFF
	JSL ADD_CHAR_TO_PARTY
	LDA #CHARACTER_POO
	JSL ADD_CHAR_TO_PARTY
@UNKNOWN2:
	LDA #<-1
	JSL UNKNOWN_C46631
	LDX #128
	STX ENTITY_SCREEN_X_TABLE + (PARTY_LEADER_ENTITY_INDEX * 2)
	LDX #112
	STX ENTITY_SCREEN_Y_TABLE + (PARTY_LEADER_ENTITY_INDEX * 2)
	LDA DEBUG_MODE_NUMBER
	CMP #2
	BNE @UNKNOWN3
	LDA #32
	STA @LOCAL00
	STA @LOCAL01
	LDY #.LOWORD(-1)
	LDX #EVENT_SCRIPT::EVENT_004
	LDA @LOCAL07
	JSL CREATE_ENTITY
	STA @LOCAL05
	ASL
	STA @LOCAL06
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
	LDA @LOCAL06
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT @LOCAL00
	LDX #BPP4PALETTE_SIZE * 16
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(PALETTES)
	JSL MEMSET16
	JSL OVERWORLD_INITIALIZE
	LDX @VIRTUAL02
	LDA @VIRTUAL04
	JSL LOAD_MAP_AT_POSITION
	LDY #4
	LDX @VIRTUAL02
	LDA @VIRTUAL04
	JSL UNKNOWN_C03FA9
	JSL UNKNOWN_EFD95E
	LDA DEBUG_MODE_NUMBER
	CMP #3
	BNE @UNKNOWN4
	SEP #PROC_FLAGS::ACCUM8
	LDA #$13
	STA TM_MIRROR
	LDA #$04
	STA TD_MIRROR
	LDA #$02
	STA f:CGWSEL
	LDA #$47
	STA f:CGADSUB
	REP #PROC_FLAGS::ACCUM8
	LDA #3
	STA DEBUG_MODE_NUMBER
@UNKNOWN4:
	LDA DEBUG_MODE_NUMBER
	CMP #5
	BNE @UNKNOWN5
	JSL UNKNOWN_EFEAC8
@UNKNOWN5:
	LDA #.LOWORD(PROCESS_OVERWORLD_TASKS)
	JSL SET_IRQ_CALLBACK
	JSL UNKNOWN_C08744
	LDX #1
	TXA
	JSL FADE_IN
@UNKNOWN6:
	JSL OAM_CLEAR
	LDA DEBUG_MODE_NUMBER
	CMP #2
	BEQ @UNKNOWN7
	CMP #5
	BEQ @UNKNOWN8
	BRA @UNKNOWN9
@UNKNOWN7:
	JSR DISPLAY_VIEW_CHARACTER_DEBUG_OVERLAY
	BRA @UNKNOWN9
@UNKNOWN8:
	JSR DISPLAY_CHECK_POSITION_DEBUG_OVERLAY
@UNKNOWN9:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BEQL @UNKNOWN13
	STZ BATTLE_SWIRL_COUNTDOWN
	LDA PAD_STATE
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN11
	LDA #.LOWORD(-1)
	STA DEBUG_ENEMIES_ENABLED_FLAG
@UNKNOWN11:
	LDA #.LOWORD(-1)
	STA LOADED_MAP_PALETTE
	STA LOADED_MAP_TILE_COMBO
	LDA SCREEN_X_PIXELS
	AND #$FFF8
	STA SCREEN_X_PIXELS
	LDA SCREEN_Y_PIXELS
	AND #$FFF8
	STA SCREEN_Y_PIXELS
	JSL UNKNOWN_C08726
	LDA #.LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA @VIRTUAL04
	LDA #.LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	TAX
	STX @LOCAL04
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	LDX @LOCAL04
	JSL LOAD_MAP_AT_POSITION
	LDY GAME_STATE+game_state::leader_direction
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	TAX
	STX @LOCAL04
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	LDX @LOCAL04
	JSL UNKNOWN_C03FA9
	JSL UNKNOWN_EFD95E
	STZ DEBUG_ENEMIES_ENABLED_FLAG
	LDA DEBUG_MODE_NUMBER
	CMP #5
	BNE @UNKNOWN12
	JSL UNKNOWN_EFEAC8
@UNKNOWN12:
	JSL UNKNOWN_C08744
	LDY #0
	LDX #1
	LDA #4
	JSL FADE_IN_WITH_MOSAIC
@UNKNOWN13:
	LDA DEBUG_MODE_NUMBER
	CMP #2
	BNEL @UNKNOWN26
	LDY @LOCAL07
	LDA PAD_HELD + 2
	STA @LOCAL03
	AND #PAD::UP
	BEQ @UNKNOWN16
	LDA @LOCAL07
	CMP #333
	BEQ @UNKNOWN15
	INC @LOCAL07
	BRA @UNKNOWN18
@UNKNOWN15:
	STZ @LOCAL07
	BRA @UNKNOWN18
@UNKNOWN16:
	LDA @LOCAL03
	AND #PAD::DOWN
	BEQ @UNKNOWN18
	LDA @LOCAL07
	BEQ @UNKNOWN17
	DEC @LOCAL07
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA #324
	STA @LOCAL07
@UNKNOWN18:
	LDA PAD_PRESS + 2
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN19
	LDA @LOCAL05
	ASL
	STA @LOCAL06
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
	LDA @LOCAL06
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
@UNKNOWN19:
	LDA PAD_PRESS + 2
	AND #PAD::Y_BUTTON
	BEQ @UNKNOWN20
	LDA @LOCAL05
	ASL
	STA @LOCAL06
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA __BSS_START__,X
	LDA @LOCAL06
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$7FFF
	STA __BSS_START__,X
@UNKNOWN20:
	CPY @LOCAL07
	BEQ @UNKNOWN21
	LDA @LOCAL05
	JSL UNKNOWN_C02140
	LDA #32
	STA @LOCAL00
	STA @LOCAL01
	LDY @LOCAL05
	LDX #EVENT_SCRIPT::EVENT_004
	LDA @LOCAL07
	JSL CREATE_ENTITY
	ASL
	TAX
	STZ ENTITY_NPC_IDS,X
@UNKNOWN21:
	LDA PAD_PRESS + 2
	AND #PAD::A_BUTTON
	BEQ @UNKNOWN22
	LDA @LOCAL05
	ASL
	TAX
	LDA ENTITY_TICK_CALLBACK_HIGH,X
	AND #OBJECT_TICK_DISABLED
	BNE @UNKNOWN22
	LDA BG1_X_POS
	CLC
	ADC #32
	TAX
	LDA BG1_Y_POS
	CLC
	ADC #32
	STX @LOCAL00
	STA @LOCAL01
	LDY #.LOWORD(-1)
	LDX #EVENT_SCRIPT::EVENT_006
	LDA @LOCAL07
	JSL CREATE_ENTITY
	ASL
	TAX
	STZ ENTITY_NPC_IDS,X
@UNKNOWN22:
	LDA PAD_PRESS + 2
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN26
	LDA BG1_X_POS
	STA @LOCAL02
	LDY BG1_Y_POS
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN25
@UNKNOWN23:
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN24
	STZ ENTITY_PATHFINDING_STATES,X
@UNKNOWN24:
	INC @VIRTUAL02
@UNKNOWN25:
	LDA @VIRTUAL02
	CMP #MAX_ENTITIES
	BNE @UNKNOWN23
	LDA @LOCAL02
	STA @LOCAL00
	STY @LOCAL01
	LDY #.LOWORD(-1)
	LDX #EVENT_SCRIPT::EVENT_499
	LDA #OVERWORLD_SPRITE::GIRL_IN_STRIPED_APRON
	JSL CREATE_ENTITY
	ASL
	TAX
	LDA #.LOWORD(-1)
	STA ENTITY_PATHFINDING_STATES,X
	JSL UNKNOWN_C0BD96
@UNKNOWN26:
	JSL RUN_ACTIONSCRIPT_FRAME
	LDA PAD_STATE
	AND #PAD::START_BUTTON | PAD::SELECT_BUTTON
	CMP #PAD::START_BUTTON | PAD::SELECT_BUTTON
	BNE @UNKNOWN27
	LDA ENTITY_ABS_X_TABLE + (PARTY_LEADER_ENTITY_INDEX * 2)
	STA DEBUG_START_POSITION_X
	LDA ENTITY_ABS_Y_TABLE + (PARTY_LEADER_ENTITY_INDEX * 2)
	STA DEBUG_START_POSITION_Y
	LDA @LOCAL07
	STA DEBUG_VIEW_CHARACTER_SPRITE
	BRA @UNKNOWN33
@UNKNOWN27:
	LDA PAD_PRESS
	AND #PAD::Y_BUTTON
	BEQ @UNKNOWN28
	JSL DEBUG_Y_BUTTON_MENU
@UNKNOWN28:
	LDA DEBUG_MODE_NUMBER
	CMP #3
	BNE @UNKNOWN30
	LDA BG1_X_POS
	STA BG3_X_POS
	LDA BG1_Y_POS
	STA BG3_Y_POS
	LDA PAD_PRESS
	AND #PAD::SELECT_BUTTON
	BEQ @UNKNOWN30
	LDX VIEW_ATTRIBUTE_MODE
	INX
	STX VIEW_ATTRIBUTE_MODE
	CPX #4
	BNE @UNKNOWN29
	STZ VIEW_ATTRIBUTE_MODE
@UNKNOWN29:
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSR UNKNOWN_EFE133
@UNKNOWN30:
	LDA DEBUG_MODE_NUMBER
	CMP #1
	BNE @UNKNOWN31
	LDA PAD_PRESS
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN31
	JSL OPEN_MENU_BUTTON
@UNKNOWN31:
	LDA CURRENT_QUEUED_INTERACTION
	SEC
	SBC NEXT_QUEUED_INTERACTION
	BEQ @UNKNOWN32
	JSL PROCESS_QUEUED_INTERACTIONS
@UNKNOWN32:
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL INIT_BATTLE_OVERWORLD
	JMP @UNKNOWN6
@UNKNOWN33:
	END_C_FUNCTION
