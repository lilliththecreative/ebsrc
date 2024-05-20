
DISPLAY_TOWN_MAP:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	LDA #60
	STA TOWN_MAP_ANIMATION_FRAME
	LDA #20
	STA TOWN_MAP_PLAYER_ICON_ANIMATION_FRAME
	LDA #12
	STA FRAMES_UNTIL_MAP_ICON_PALETTE_UPDATE
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSR GET_TOWN_MAP_ID
	AND #$000F
	TAY
	STY @LOCAL01
	BEQL @RETURN
	TYA
	DEC
	JSR LOAD_TOWN_MAP_DATA
@UNKNOWN1:
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL OAM_CLEAR
	LDY @LOCAL01
	TYA
	DEC
	JSR UNKNOWN_C4D43F
	JSL UPDATE_SCREEN
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BNE @UNKNOWN2
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BNE @UNKNOWN2
	LDA PAD_PRESS
	AND #PAD::L_BUTTON
	BNE @UNKNOWN2
	LDA PAD_PRESS
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN1
@UNKNOWN2:
	LDX #1
	LDA #2
	JSL FADE_OUT
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN4
@UNKNOWN3:
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL OAM_CLEAR
	LDY @LOCAL01
	TYA
	DEC
	JSR UNKNOWN_C4D43F
	JSL UPDATE_SCREEN
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN4:
	CPX #16
	BCC @UNKNOWN3
	LDA #1
	STA DISABLE_MUSIC_CHANGES
	JSL RELOAD_MAP
	LDA NEXT_MAP_MUSIC_TRACK
	STA CURRENT_MAP_MUSIC_TRACK
	JSL UNDRAW_FLYOVER_TEXT
	STZ DISABLE_MUSIC_CHANGES
	SEP #PROC_FLAGS::ACCUM8
	LDA #$17
	STA TM_MIRROR
	LDX #1
	REP #PROC_FLAGS::ACCUM8
	LDA #2
	JSL FADE_IN
@RETURN:
	LDY @LOCAL01
	TYA
	END_C_FUNCTION
