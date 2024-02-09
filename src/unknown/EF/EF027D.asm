
UNKNOWN_EF027D: ;$EF027D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	END_STACK_VARS
<<<<<<< HEAD
	STZ BUBBLE_MONKEY_MODE
	LDA #30
	STA BUBBLE_MONKEY_MOVEMENT_CHANGE_TIMER
=======
	STZ UNKNOWN_7E9F33
	LDA #$001E
	STA UNKNOWN_7E9F35
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA #$0004
	STA ENTITY_SCRIPT_VAR3_TABLE,X
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	LDA a:char_struct::position_index,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	TAX
	LDA GAME_STATE+game_state::leader_x_coord
	STA a:player_position_buffer_entry::x_coord,X
	LDA GAME_STATE+game_state::leader_y_coord
	STA a:player_position_buffer_entry::y_coord,X
	PLD
	RTL
