
UNKNOWN_C47F87:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	TAX
	DEX
	LDA GAME_STATE+game_state::player_controlled_party_members,X
	AND #$00FF
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	LDA a:char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	TAX
	CPX #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN0
	CPX #STATUS_0::DIAMONDIZED
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA DISABLED_TRANSITIONS
	BNE @UNKNOWN1
	LOADPTR TEXT_WINDOW_FLAVOUR_PALETTES+320, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 2
	LDA #.LOWORD(PALETTES)
	JSL MEMCPY16
	BRA @UNKNOWN2
@UNKNOWN1:
	LOADPTR TEXT_WINDOW_FLAVOUR_PALETTES, @VIRTUAL06
	LDA GAME_STATE+game_state::text_flavour
	AND #$00FF
	DEC
	OPTIMIZED_MULT @VIRTUAL04, 3
	TAX
	LDA f:TEXT_WINDOW_PROPERTIES,X
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #BPP4PALETTE_SIZE * 2
	LDA #.LOWORD(PALETTES)
	JSL MEMCPY16
@UNKNOWN2:
	STZ PALETTES
	LDA #8
	JSL UNKNOWN_C0856B
	END_C_FUNCTION
