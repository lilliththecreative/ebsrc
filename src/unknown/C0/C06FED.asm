
<<<<<<< HEAD
UNKNOWN_C06FED:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #0
	STA @LOCAL01
	LDA STAIRS_DIRECTION
	BEQ @UNKNOWN0
	LDA STAIRS_DIRECTION
	CMP #256
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA GAME_STATE + game_state::leader_y_coord
	CMP STAIRS_NEW_Y
=======
UNKNOWN_C06FED: ;$C06FED
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #$0000
	STA $12
	LDA UNKNOWN_7E5DC4
	BEQ @UNKNOWN0
	LDA UNKNOWN_7E5DC4
	CMP #$0100
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA GAME_STATE+game_state::leader_y_coord
	CMP UNKNOWN_7E5DCE
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BCS @UNKNOWN2
	LDA #$0001
	STA $12
	BRA @UNKNOWN2
@UNKNOWN1:
<<<<<<< HEAD
	LDA GAME_STATE + game_state::leader_y_coord
	CMP STAIRS_NEW_Y
=======
	LDA GAME_STATE+game_state::leader_y_coord
	CMP UNKNOWN_7E5DCE
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BLTEQ @UNKNOWN2
	LDA #$0001
	STA $12
@UNKNOWN2:
	LDA $12
	BEQ @UNKNOWN3
<<<<<<< HEAD
	LDA #.LOWORD(-1)
	STA STAIRS_DIRECTION
	STZ GAME_STATE + game_state::walking_style
	STZ PLAYER_MOVEMENT_FLAGS
	LDA STAIRS_NEW_X
	STA GAME_STATE + game_state::leader_x_coord
	LDA STAIRS_NEW_Y
	STA GAME_STATE + game_state::leader_y_coord
=======
	LDA #$FFFF
	STA UNKNOWN_7E5DC4
	STZ GAME_STATE+game_state::walking_style
	STZ MISC_DEBUG_FLAGS
	LDA UNKNOWN_7E5DCC
	STA GAME_STATE+game_state::leader_x_coord
	LDA UNKNOWN_7E5DCE
	STA GAME_STATE+game_state::leader_y_coord
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STZ GAME_STATE + game_state::unknown84
	STZ GAME_STATE + game_state::unknown80
	STZ UNREAD_7E5DBA
	BRA @UNKNOWN4
@UNKNOWN3:
	LOADPTR UNKNOWN_C06FED, $0E
	LDA #$0001
	JSL SCHEDULE_OVERWORLD_TASK
@UNKNOWN4:
	PLD
	RTL
