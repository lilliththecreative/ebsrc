
UNKNOWN_C0E28F: ;$C0E28F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0001
	STA GAME_STATE + game_state::unknown90
	LDA #$0000
	JSL MAP_INPUT_TO_DIRECTION
	STA $02
	LDA GAME_STATE+game_state::leader_direction
	STA $16
	LDA $02
	EOR #$0004
	STA $04
	LDA $16
	CMP $04
	BNE @UNKNOWN0
	STA $02
@UNKNOWN0:
	LDA $02
	CMP #$FFFF
	BNE @UNKNOWN1
	LDA GAME_STATE+game_state::leader_direction
	STA $02
@UNKNOWN1:
	LDA $02
	STA GAME_STATE+game_state::leader_direction
	LDA BATTLE_SWIRL_COUNTDOWN
	BEQ @UNKNOWN2
<<<<<<< HEAD
	LDA #2
	STA PSI_TELEPORT_STATE
	LDA #1
	STA BATTLE_MODE
=======
	LDA #$0002
	STA UNKNOWN_7E9F43
	LDA #$0001
	STA BATTLE_DEBUG
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN2:
	LDA $02
	JSR UNKNOWN_C0DF22
	LDA GAME_STATE + game_state::unknown80
	STA $0A
	LDA GAME_STATE+game_state::leader_x_coord
<<<<<<< HEAD
	STA @VIRTUAL0A+2
	MOVE_INT PSI_TELEPORT_SPEED_X, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, PSI_TELEPORT_NEXT_X
=======
	STA $0C
	MOVE_INT UNKNOWN_7E9F49, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, UNKNOWN_7E9F51
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA GAME_STATE + game_state::unknown84
	STA $0A
	LDA GAME_STATE+game_state::leader_y_coord
<<<<<<< HEAD
	STA @VIRTUAL0A+2
	MOVE_INT PSI_TELEPORT_SPEED_Y, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, PSI_TELEPORT_NEXT_Y
=======
	STA $0C
	MOVE_INT UNKNOWN_7E9F4D, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, UNKNOWN_7E9F55
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDY GAME_STATE+game_state::current_party_members
	LDX PSI_TELEPORT_NEXT_Y + fixed_point::integer
	LDA PSI_TELEPORT_NEXT_X + fixed_point::integer
	JSL NPC_COLLISION_CHECK
	CMP #$FFFF
	BEQ @UNKNOWN3
<<<<<<< HEAD
	LDA #2
	STA PSI_TELEPORT_STATE
@UNKNOWN3:
	LDA PSI_TELEPORT_NEXT_Y + fixed_point::integer
	STA @LOCAL00
	LDA @VIRTUAL02
	STA @LOCAL01
	LDY PSI_TELEPORT_NEXT_X + fixed_point::integer
=======
	LDA #$0002
	STA UNKNOWN_7E9F43
@UNKNOWN3:
	LDA UNKNOWN_7E9F55 + 2
	STA $0E
	LDA $02
	STA $10
	LDY UNKNOWN_7E9F51 + 2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSR UNKNOWN_C0DED9
	AND #$00C0
	BEQ @UNKNOWN4
<<<<<<< HEAD
	LDA #2
	STA PSI_TELEPORT_STATE
@UNKNOWN4:
	LDA PSI_TELEPORT_STATE
	CMP #2
	BEQ @UNKNOWN5
	MOVE_INT PSI_TELEPORT_NEXT_X, @VIRTUAL06
	LDA @VIRTUAL06
=======
	LDA #$0002
	STA UNKNOWN_7E9F43
@UNKNOWN4:
	LDA UNKNOWN_7E9F43
	CMP #$0002
	BEQ @UNKNOWN5
	MOVE_INT UNKNOWN_7E9F51, $06
	LDA $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA GAME_STATE + game_state::unknown80
	LDA $08
	STA GAME_STATE+game_state::leader_x_coord
<<<<<<< HEAD
	MOVE_INT PSI_TELEPORT_NEXT_Y, @VIRTUAL06
	LDA @VIRTUAL06
=======
	MOVE_INT UNKNOWN_7E9F55, $06
	LDA $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA GAME_STATE + game_state::unknown84
	LDA $08
	STA GAME_STATE+game_state::leader_y_coord
@UNKNOWN5:
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL CENTER_SCREEN
	JSR UNKNOWN_C0E196
	JSR UNKNOWN_C0E254
<<<<<<< HEAD
	LDA PSI_TELEPORT_SPEED + fixed_point::integer
	CMP #9
	BLTEQ @UNKNOWN6
	LDA #1
	STA PSI_TELEPORT_STATE
=======
	LDA UNKNOWN_7E9F47
	CMP #$0009
	BLTEQ @UNKNOWN6
	LDA #$0001
	STA UNKNOWN_7E9F43
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN6:
	PLD
	RTL
