
UNKNOWN_C0449B:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	STZ GAME_STATE + game_state::unknown90
	LDA MUSHROOMIZED_WALKING_FLAG
	BEQ @NOT_MUSHROOMIZED
	JSR MUSHROOMIZATION_MOVEMENT_SWAP
@NOT_MUSHROOMIZED:
	LDX #.LOWORD(GAME_STATE) + game_state::walking_style
	STX @LOCAL07
	LDA __BSS_START__,X
	JSL MAP_INPUT_TO_DIRECTION
	STA @VIRTUAL02
	LDA BATTLE_SWIRL_COUNTDOWN
	BEQ @UNKNOWN2
	LDX BATTLE_SWIRL_COUNTDOWN
	DEX
	STX BATTLE_SWIRL_COUNTDOWN
	BEQ @UNKNOWN1
	LDY GAME_STATE+game_state::current_party_members
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL NPC_COLLISION_CHECK
	JMP @RETURN
@UNKNOWN1:
	LDA #.LOWORD(-1)
	STA BATTLE_DEBUG
	JMP @RETURN
@UNKNOWN2:
	LDA @VIRTUAL02
	CMP #.LOWORD(-1)
	BNE @UNKNOWN3
	LDY GAME_STATE+game_state::current_party_members
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL NPC_COLLISION_CHECK
	JMP @RETURN
@UNKNOWN3:
	LDX @LOCAL07
	LDA __BSS_START__,X
	CMP #13
	BNE @UNKNOWN12
	LDA UNKNOWN_7E5DC4
	CMP #$0100
	BEQ @UNKNOWN4
	LDA UNKNOWN_7E5DC4
	CMP #$0200
	BNE @UNKNOWN7
@UNKNOWN4:
	LDA @VIRTUAL02
	CMP #3
	BGT @UNKNOWN6
	LDA #1
	STA @VIRTUAL02
	BRA @UNKNOWN10
@UNKNOWN6:
	LDA #5
	STA @VIRTUAL02
	BRA @UNKNOWN10
@UNKNOWN7:
	LDA @VIRTUAL02
	DEC
	AND #$0007
	CMP #3
	BGT @UNKNOWN9
	LDA #3
	STA @VIRTUAL02
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #7
	STA @VIRTUAL02
@UNKNOWN10:
	LDA @VIRTUAL02
	CMP #4
	BCS @UNKNOWN11
	LDA #2
	STA GAME_STATE+game_state::leader_direction
	BRA @UNKNOWN13
@UNKNOWN11:
	LDA #6
	STA GAME_STATE+game_state::leader_direction
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA MISC_DEBUG_FLAGS
	AND #$0001
	BNE @UNKNOWN13
	LDA @VIRTUAL02
	STA GAME_STATE+game_state::leader_direction
@UNKNOWN13:
	INC UNKNOWN_7E2890
	LDX #.LOWORD(GAME_STATE) + game_state::unknown90
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	LDA GAME_STATE+game_state::trodden_tile_type
	STA @LOCAL06
	LDA #.LOWORD(GAME_STATE) + game_state::unknown80
	STA @LOCAL05
	LDY @LOCAL05
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #.LOWORD(GAME_STATE) + game_state::unknown84
	STA @LOCAL03
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	MOVE_INT @LOCAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX @LOCAL06
	LDA @VIRTUAL02
	JSR ADJUST_POSITION_HORIZONTAL
	MOVE_INT @VIRTUAL06, @LOCAL01
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX @LOCAL06
	LDA @VIRTUAL02
	JSR ADJUST_POSITION_VERTICAL
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #.LOWORD(-1)
	STA UNKNOWN_7E5DA8
	LDA MISC_DEBUG_FLAGS
	AND #$0002
	BNE @UNKNOWN14
	LDA @VIRTUAL02
	STA @LOCAL00
	LDY GAME_STATE+game_state::current_party_members
	LDX @LOCAL02 + fixed_point::integer
	LDA @LOCAL01 + fixed_point::integer
	JSL UNKNOWN_C05B7B
	STA @VIRTUAL04
	LDA @VIRTUAL02
	CMP UNKNOWN_7E5DA6
	BEQ @UNKNOWN16
	LDY @LOCAL05
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX @LOCAL06
	LDA UNKNOWN_7E5DA6
	JSR ADJUST_POSITION_HORIZONTAL
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX @LOCAL06
	LDA UNKNOWN_7E5DA6
	JSR ADJUST_POSITION_VERTICAL
	MOVE_INT @VIRTUAL06, @LOCAL02
	BRA @UNKNOWN16
@UNKNOWN14:
	LDA UNKNOWN_7E0081
	BNE @UNKNOWN15
	LDY GAME_STATE+game_state::current_party_members
	LDX @LOCAL02 + fixed_point::integer
	LDA @LOCAL01 + fixed_point::integer
	JSR UNKNOWN_C05FD1
	AND #$003F
	STA @VIRTUAL04
	BRA @UNKNOWN16
@UNKNOWN15:
	LDA #0
	STA @VIRTUAL04
@UNKNOWN16:
	LDA @VIRTUAL04
	STA GAME_STATE+game_state::trodden_tile_type
	LDA #1
	STA @VIRTUAL02
	LDY GAME_STATE+game_state::current_party_members
	LDX @LOCAL02 + fixed_point::integer
	LDA @LOCAL01 + fixed_point::integer
	JSL NPC_COLLISION_CHECK
	LDA ENTITY_COLLIDED_OBJECTS+46
	CMP #ENTITY_COLLISION_NO_OBJECT
	BEQ @UNKNOWN17
	LDA #0
	STA @VIRTUAL02
@UNKNOWN17:
	LDA @VIRTUAL04
	AND #$00C0
	BEQ @UNKNOWN18
	LDA #0
	STA @VIRTUAL02
@UNKNOWN18:
	LDA UNKNOWN_7E5DA8
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN19
	LDX UNKNOWN_7E5DAA
	LDA UNKNOWN_7E5DA8
	JSL UNKNOWN_C07526
	STA @VIRTUAL02
	BRA @UNKNOWN21
@UNKNOWN19:
	LDX GAME_STATE+game_state::walking_style
	CPX #WALKING_STYLE::LADDER
	BEQ @UNKNOWN20
	CPX #WALKING_STYLE::ROPE
	BNE @UNKNOWN21
@UNKNOWN20:
	STZ GAME_STATE+game_state::walking_style
@UNKNOWN21:
	LDA @VIRTUAL02
	BEQ @UNKNOWN22
	MOVE_INT @LOCAL01, @VIRTUAL06
	LDA @VIRTUAL06
	STA GAME_STATE + game_state::unknown80
	LDA @VIRTUAL06 + fixed_point::integer
	STA GAME_STATE+game_state::leader_x_coord
	MOVE_INT @LOCAL02, @VIRTUAL06
	LDA @VIRTUAL06
	STA GAME_STATE + game_state::unknown84
	LDA @VIRTUAL06 + fixed_point::integer
	STA GAME_STATE+game_state::leader_y_coord
	BRA @UNKNOWN23
@UNKNOWN22:
	STZ GAME_STATE + game_state::unknown90
@UNKNOWN23:
	LDA UNKNOWN_7E0002
	AND #$00FF
	AND #$0001
	BNE @UNKNOWN24
	LDA ACTIVE_HOTSPOTS
	BEQ @UNKNOWN24
	LDA #0
	JSL UNKNOWN_C073C0
@UNKNOWN24:
	LDA UNKNOWN_7E0002
	AND #$00FF
	AND #$0001
	BEQ @UNKNOWN25
	LDA ACTIVE_HOTSPOTS + .SIZEOF(active_hotspot)
	BEQ @UNKNOWN25
	LDA #1
	JSL UNKNOWN_C073C0
@UNKNOWN25:
	LDX GAME_STATE+game_state::walking_style
	CPX #WALKING_STYLE::LADDER
	BEQ @UNKNOWN26
	CPX #WALKING_STYLE::ROPE
	BNE @UNKNOWN27
@UNKNOWN26:
	LDA UNKNOWN_7E5DA8
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC #8
	STA GAME_STATE+game_state::leader_x_coord
@UNKNOWN27:
	LDA DEBUG
	BEQ @RETURN
	LDA PAD_STATE
	AND #PAD::X_BUTTON
	BEQ @RETURN
	LDX #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	LDA __BSS_START__,X
	AND #$FFF8
	STA __BSS_START__,X
	LDX #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	LDA __BSS_START__,X
	AND #$FFF8
	STA __BSS_START__,X
@RETURN:
	END_C_FUNCTION
