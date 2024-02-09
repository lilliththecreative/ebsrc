
UNKNOWN_C0E6FE: ;$C0E6FE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAY
	STY $10
	LDA ENTITY_SCRIPT_VAR1_TABLE,Y
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	TAX
<<<<<<< HEAD
	STX CURRENT_PARTY_MEMBER_TICK
	LDA a:char_struct::position_index,X
	STA @VIRTUAL04
	STA @LOCAL00
	LDA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(player_position_buffer_entry)
=======
	STX UNKNOWN_7E4DC6
	LDA __BSS_START__+61,X
	STA $04
	STA $0E
	LDA $04
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	TAX
	LDY $10
	LDA ENTITY_SCRIPT_VAR0_TABLE,Y
	STA $02
	LDA a:player_position_buffer_entry::x_coord,X
	STA ENTITY_ABS_X_TABLE,Y
	LDA a:player_position_buffer_entry::y_coord,X
	STA ENTITY_ABS_Y_TABLE,Y
	LDA a:player_position_buffer_entry::direction,X
	STA ENTITY_DIRECTIONS,Y
	LDA a:player_position_buffer_entry::tile_flags,X
	STA ENTITY_SURFACE_FLAGS,Y
	LDY CURRENT_ENTITY_SLOT
	LDA a:player_position_buffer_entry::walking_style,X
	TAX
	LDA $02
	JSL UNKNOWN_C07A56
	LDA $0E
	STA $04
	LDX $04
	LDA $02
	JSR UNKNOWN_C0E214
	AND #$00FF
<<<<<<< HEAD
	LDX CURRENT_PARTY_MEMBER_TICK
	STA a:char_struct::position_index,X
	END_C_FUNCTION
=======
	LDX UNKNOWN_7E4DC6
	STA __BSS_START__+61,X
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
