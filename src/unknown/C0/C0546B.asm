
UNKNOWN_C0546B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDY #0
	STY @LOCAL01
	TYA
	STA @LOCAL00
	BRA @UNKNOWN4
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA __BSS_START__ + game_state::unknown96,X
	AND #$00FF
	CLC
	SBC #4
	BRANCHGTS @UNKNOWN3
	LDA __BSS_START__ + game_state::player_controlled_party_members,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::level,X
	AND #$00FF
	STA @VIRTUAL02
	LDY @LOCAL01
	TYA
	CLC
	ADC @VIRTUAL02
	TAY
	STY @LOCAL01
@UNKNOWN3:
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN4:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL00
	CMP @VIRTUAL02
	BNE @UNKNOWN0
	TYA
	END_C_FUNCTION
