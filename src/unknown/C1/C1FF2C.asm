
UNKNOWN_C1FF2C:
	BEGIN_C_FUNCTION
	END_STACK_VARS
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
.IF .DEFINED(JPN)
	DEC
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::player_controlled_party_members,X
.ELSE
	TAX
	DEX
	LDA GAME_STATE+game_state::player_controlled_party_members,X
.ENDIF
	AND #$00FF
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	LDX #0
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN0
	CMP #STATUS_0::DIAMONDIZED
	BNE @UNKNOWN1
@UNKNOWN0:
	LDX #1
@UNKNOWN1:
	LDA #0
	CPX UNKNOWN_7EB4A2
	BEQ @UNKNOWN2
	LDA #1
@UNKNOWN2:
	STX UNKNOWN_7EB4A2
	END_C_FUNCTION
