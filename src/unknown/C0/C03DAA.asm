
UNKNOWN_C03DAA:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	STA @VIRTUAL02
	ASL
	TAY
	STY @LOCAL00
	LDA #.LOWORD(-1)
	STA UNKNOWN_7E3456,Y
	TYA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR3_TABLE)
	STA @VIRTUAL04
	LDA #8
	LDX @VIRTUAL04
	STA __BSS_START__,X
	JSL RAND
	AND #$000F
	LDY @LOCAL00
	STA ENTITY_SCRIPT_VAR2_TABLE,Y
	LDA @VIRTUAL02
	JSL UNKNOWN_C0A780
	LDY @LOCAL00
	LDA ENTITY_SCRIPT_VAR1_TABLE,Y
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAX
	LDA @VIRTUAL02
	STA a:char_struct::unknown59,X
	LDY @LOCAL00
	LDA ENTITY_SCRIPT_VAR0_TABLE,Y
	STA a:char_struct::unknown53,X
	STZ a:char_struct::unknown57,X
	LDA #.LOWORD(-1)
	STA a:char_struct::unknown92,X
	LDA a:char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BNE @UNKNOWN0
	LDA #16
	LDX @VIRTUAL04
	STA __BSS_START__,X
@UNKNOWN0:
	LDA GAME_STATE + game_state::current_party_members
	ASL
	STA UNKNOWN_7E2898
	END_C_FUNCTION
