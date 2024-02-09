
UNKNOWN_C0369B: ;$C0369B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	TAY
	STY $1A
	LDX #$0000
	STX $18
	CPY #$0005
	BCC @UNKNOWN1
@UNKNOWN0:
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	BEQ @UNKNOWN5
	AND #$00FF
	STA $02
	TYA
	CMP $02
	BLTEQ @UNKNOWN5
	LDX $18
	INX
	STX $18
	BRA @UNKNOWN0
@UNKNOWN1:
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	BEQ @UNKNOWN5
	AND #$00FF
	STA $16
	STA $02
	LDA #$0005
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN5
	LDY $1A
	STY $02
	LDA $16
	CMP $02
	BGT @UNKNOWN5
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::afflictions,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN5
	LDX $18
	INX
	STX $18
	BRA @UNKNOWN1
@UNKNOWN5:
	LDX $18
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	BEQ @UNKNOWN8
	LDA #$0005
	STA $14
	BRA @UNKNOWN7
@UNKNOWN6:
	CLC
	ADC #.LOWORD(GAME_STATE)
	STA $12
	LDA $14
	DEC
	STA $04
	CLC
	ADC #.LOWORD(GAME_STATE)
	STA $02
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__ + game_state::unknown96,X
	LDY #game_state::unknown96
	STA ($12),Y
	REP #PROC_FLAGS::ACCUM8
	LDA $14
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	PHA
	LDA $04
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	PLX
	STA a:game_state::unknownA2,X
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__+game_state::player_controlled_party_members,X
	LDY #game_state::player_controlled_party_members
	STA ($12),Y
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	STA $14
@UNKNOWN7:
	LDX $18
	TXA
	DEC
	STA $02
	LDA $14
	CMP $02
	BNE @UNKNOWN6
@UNKNOWN8:
	LDX $18
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDY $1A
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA a:game_state::unknown96,X
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(GAME_STATE) + game_state::party_count
	PHA
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	PLX
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	TYA
	DEC
	STA $12
	STA NEW_ENTITY_VAR0
	LDA $12
	OPTIMIZED_MULT $04, .SIZEOF(character_initial_entity_entry)
	CLC
	ADC #character_initial_entity_entry::unknown6
	TAX
	LDA f:CHARACTER_INITIAL_ENTITY_DATA,X
	STA $1A
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #$FFFF
	BEQ @UNKNOWN9
	INC $1A
@UNKNOWN9:
	LDX $18
	TXA
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA $1A
	STA a:game_state::unknownA2,X
	LDA $1A
	STA NEW_ENTITY_VAR1
	SEC
	SBC #$0018
	STA NEW_ENTITY_VAR1
	LDX $18
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA NEW_ENTITY_VAR1
	STA a:game_state::player_controlled_party_members,X
	REP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN10
	LDA NEW_ENTITY_VAR1
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA GAME_STATE + game_state::unknown88
	STA PARTY_CHARACTERS+char_struct::position_index,X
	BRA @UNKNOWN13
@UNKNOWN10:
	LDX $18
	BNE @UNKNOWN11
	LDA GAME_STATE + game_state::unknown88
	STA $16
	BRA @UNKNOWN12
@UNKNOWN11:
	TXA
	DEC
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::position_index,X
	STA @LOCAL04
=======
	LDA CHAR_STRUCT+char_struct::position_index,X
	STA $16
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN12:
	LDA NEW_ENTITY_VAR1
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA @LOCAL04
	STA PARTY_CHARACTERS+char_struct::position_index,X
=======
	LDA $16
	STA CHAR_STRUCT+char_struct::position_index,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN13:
	LDA NEW_ENTITY_VAR1
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::position_index,X
	BEQ @UNKNOWN14
	TAX
	DEX
	BRA @UNKNOWN15
@UNKNOWN14:
	LDX #$00FF
@UNKNOWN15:
	TXA
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
	TAX
	LDA PLAYER_POSITION_BUFFER + player_position_buffer_entry::x_coord,X
	STA $04
	LDA PLAYER_POSITION_BUFFER + player_position_buffer_entry::y_coord,X
	STA $02
	LDA GAME_STATE + game_state::unknown92
	CMP #$0003
	BEQ @UNKNOWN16
	LDA $12
	OPTIMIZED_MULT $04, .SIZEOF(character_initial_entity_entry)
	TAX
	LDA f:CHARACTER_INITIAL_ENTITY_DATA,X ;character_initial_entity_entry::overworld_sprite
	STA $18
	BRA @UNKNOWN17
@UNKNOWN16:
	LDA $12
	OPTIMIZED_MULT $04, .SIZEOF(character_initial_entity_entry)
	TAX
	INX
	INX
	LDA f:CHARACTER_INITIAL_ENTITY_DATA,X ;character_initial_entity_entry::lost_underworld_sprite
	STA $18
@UNKNOWN17:
	LOADPTR CHARACTER_INITIAL_ENTITY_DATA, $06
	LDA $04
	STA $0E
	LDA $02
	STA $10
	LDY $1A
	LDA $12
	OPTIMIZED_MULT $04, .SIZEOF(character_initial_entity_entry)
	INC
	INC
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A] ;character_initial_entity_entry::actionscript_id
	TAX
	LDA $18
	JSL CREATE_ENTITY
	LDA $1A
	ASL
	TAX
	STX $14
	LDA $04
	SEC
	SBC BG1_X_POS
	STA ENTITY_SCREEN_X_TABLE,X
	LDA $02
	SEC
	SBC BG1_Y_POS
	STA ENTITY_SCREEN_Y_TABLE,X
	LDY #.LOWORD(GAME_STATE) + game_state::current_party_members
	STY $18
	LDA GAME_STATE + game_state::unknown96
	AND #$00FF
	DEC
	ASL
	ASL
	ASL
	CLC
	ADC #character_initial_entity_entry::unknown6
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA __BSS_START__,Y
	JSL UNKNOWN_C09CD7
	JSL UNKNOWN_C032EC
	LDA GAME_STATE + game_state::unknownA2
	LDY $18
	STA __BSS_START__,Y
	JSL UPDATE_PARTY
	LDA $04
	STA ENTITY_PREPARED_X_COORDINATE
	LDA $02
	STA ENTITY_PREPARED_Y_COORDINATE
	LDX $14
	LDA ENTITY_DIRECTIONS,X
	STA ENTITY_PREPARED_DIRECTION
	LDA $1A
	PLD
	RTL
