
<<<<<<< HEAD
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
=======
DISPLAY_TOWN_MAP: ;$C4D681
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$003C
	STA UNKNOWN_7EB4AE
	LDA #$0014
	STA UNKNOWN_7EB4B0
	LDA #$000C
	STA UNKNOWN_7EB4B2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSR GET_TOWN_MAP_ID
	AND #$000F
	TAY
	STY $10
	BEQL @RETURN
	TYA
	DEC
	JSR LOAD_TOWN_MAP_DATA
@UNKNOWN1:
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL OAM_CLEAR
	LDY $10
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
	LDX #$0001
	LDA #$0002
	JSL FADE_OUT
	LDX #$0000
	STX $0E
	BRA @UNKNOWN4
@UNKNOWN3:
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL OAM_CLEAR
	LDY $10
	TYA
	DEC
	JSR UNKNOWN_C4D43F
	JSL UPDATE_SCREEN
	LDX $0E
	INX
	STX $0E
@UNKNOWN4:
	CPX #$0010
	BCC @UNKNOWN3
<<<<<<< HEAD
	LDA #1
	STA DISABLE_MUSIC_CHANGES
=======
	LDA #$0001
	STA UNKNOWN_7E5DD8
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL RELOAD_MAP
	LDA NEXT_MAP_MUSIC_TRACK
	STA CURRENT_MAP_MUSIC_TRACK
	JSL UNDRAW_FLYOVER_TEXT
	STZ DISABLE_MUSIC_CHANGES
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA TM_MIRROR
	LDX #$0001
	REP #PROC_FLAGS::ACCUM8
	LDA #$0002
	JSL FADE_IN
@RETURN:
	LDY $10
	TYA
	PLD
	RTL
