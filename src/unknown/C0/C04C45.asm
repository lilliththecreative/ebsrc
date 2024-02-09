
UNKNOWN_C04C45: ;$C04C45
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDX #.LOWORD(GAME_STATE) + game_state::unknown90
	LDA __BSS_START__,X
	STA $14
	LDA #$0000
	STA __BSS_START__,X
	LDA PLAYER_INTANGIBILITY_FRAMES
	BEQ @UNKNOWN0
	JSL UNKNOWN_C07C5B
	DEC PLAYER_INTANGIBILITY_FRAMES
@UNKNOWN0:
	LDA DEBUG
	BEQ @UNKNOWN1
	LDA PAD_STATE
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN1
	LDA FRAME_COUNTER
	AND #$00FF
	AND #$000F
	BNEL @UNKNOWN10
@UNKNOWN1:
	LDA GAME_STATE+game_state::current_party_members
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	LDA GAME_STATE + game_state::unknown88
	STA a:char_struct::position_index,X
	LDA GAME_STATE + game_state::unknownB0
	BEQ @UNKNOWN2
	JSR UNKNOWN_C04B53
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA GAME_STATE+game_state::walking_style
	CMP #WALKING_STYLE::ESCALATOR
	BEQ @UNKNOWN3
	CMP #WALKING_STYLE::BICYCLE
	BEQ @UNKNOWN4
	BRA @UNKNOWN5
@UNKNOWN3:
	JSR UNKNOWN_C047CF
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA $14
	JSR UNKNOWN_C048D3
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR UNKNOWN_C0449B
@UNKNOWN6:
	LDA #.LOWORD(GAME_STATE) + game_state::unknown88
	STA $14
	LDA ($14)
	STA $12
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	STA $10
	LDA #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	STA $04
	LDA #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	STA $02
	LDY GAME_STATE+game_state::current_party_members
	LDX $02
	LDA __BSS_START__,X
	TAX
	STX $0E
	LDX $04
	LDA __BSS_START__,X
	LDX $0E
	JSL UNKNOWN_C05F82
	STA GAME_STATE+game_state::trodden_tile_type
	LDA GAME_STATE + game_state::unknown90
	BEQ @UNKNOWN7
	LDX $04
	LDA __BSS_START__,X
	STA ($10) ;player_position_buffer_entry::x_coord
	LDX $02
	LDA __BSS_START__,X
	LDY #player_position_buffer_entry::y_coord
	STA ($10),Y
	LDA $12
	INC
	AND #$00FF
	STA ($14)
	LDX $02
	LDA __BSS_START__,X
	TAX
	STX $0E
	LDX $04
	LDA __BSS_START__,X
	LDX $0E
	JSL CENTER_SCREEN
<<<<<<< HEAD
	LDA #1
	STA UNREAD_7E4DD4
=======
	LDA #$0001
	STA UNKNOWN_7E4DD4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN8
@UNKNOWN7:
	STZ UNREAD_7E4DD4
@UNKNOWN8:
	LDX #.LOWORD(GAME_STATE)+game_state::trodden_tile_type
	LDA __BSS_START__,X
	LDY #player_position_buffer_entry::tile_flags
	STA ($10),Y
	LDA GAME_STATE+game_state::walking_style
	LDY #player_position_buffer_entry::walking_style
	STA ($10),Y
	LDA GAME_STATE+game_state::leader_direction
	LDY #player_position_buffer_entry::direction
	STA ($10),Y
	LDY #.LOWORD(FOOTSTEP_SOUND_ID_OVERRIDE)
	LDA #$0000
	STA __BSS_START__,Y
	LDA __BSS_START__,X
	STA $14
	AND #$0008
	BEQ @UNKNOWN10
	LDA $14
	AND #$0004
	BEQ @UNKNOWN9
	LDA #$0010
	STA __BSS_START__,Y
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #$0012
	STA __BSS_START__,Y
@UNKNOWN10:
	PLD
	RTL
