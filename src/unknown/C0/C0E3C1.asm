
UNKNOWN_C0E3C1: ;$C0E3C1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA CURRENT_ENTITY_SLOT
	ASL
	STA $04
	STA $14
	LDX $04
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	TAX
<<<<<<< HEAD
	STX @LOCAL02
	STX CURRENT_PARTY_MEMBER_TICK
	LDX @VIRTUAL04
=======
	STX $12
	STX UNKNOWN_7E4DC6
	LDX $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA $10
	LDX $12
	LDA __BSS_START__+61,X
	STA $0E
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	STA $02
	LDY CURRENT_ENTITY_SLOT
	LDX $02
	LDA a:player_position_buffer_entry::walking_style,X
	TAX
	LDA $10
	JSL UNKNOWN_C07A56
	LDX $02
	LDA a:player_position_buffer_entry::x_coord,X
	LDX $14
	STX $04
	STA ENTITY_ABS_X_TABLE,X
	LDX $02
	LDA a:player_position_buffer_entry::y_coord,X
	LDX $04
	STA ENTITY_ABS_Y_TABLE,X
	LDX $02
	LDA a:player_position_buffer_entry::direction,X
	LDX $04
	STA ENTITY_DIRECTIONS,X
	LDX $02
	LDA a:player_position_buffer_entry::tile_flags,X
	LDX $04
	STA ENTITY_SURFACE_FLAGS,X
	LDX $0E
	LDA $10
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
