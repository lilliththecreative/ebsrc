
UNKNOWN_C03903:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	LDY #0
	BRA @UNKNOWN1
@UNKNOWN0:
	INY
@UNKNOWN1:
.IF .DEFINED(JPN)
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
.ELSE
	LDA GAME_STATE + game_state::unknown96,Y
.ENDIF
	AND #$00FF
	CMP @VIRTUAL02
	BEQ @UNKNOWN2
	CPY #6
	BNE @UNKNOWN0
@UNKNOWN2:
	CPY #6
	BEQL @UNKNOWN7
	TYA
	ASL
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
.ELSE
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
.ENDIF
	STA @VIRTUAL02
	TYA
	STA @LOCAL01
	BRA @UNKNOWN5
@UNKNOWN4:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	STX @LOCAL00
	LDA @LOCAL01
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE + game_state::unknown96 + 1,X
	LDX @LOCAL00
	STA __BSS_START__ + game_state::unknown96,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01
	ASL
	STA @VIRTUAL04
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	PHA
	LDX @VIRTUAL04
	LDA GAME_STATE + game_state::unknownA2 + 2,X
	PLX
	STA a:game_state::unknownA2,X
.ELSE
	LDX @VIRTUAL04
	LDA GAME_STATE + game_state::unknownA2 + 2,X
	LDX @VIRTUAL04
	STA GAME_STATE + game_state::unknownA2,X
.ENDIF
	LDA @LOCAL01
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE + game_state::unknown9D,X
	LDX @LOCAL00
	STA __BSS_START__ + game_state::player_controlled_party_members,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01
	INC
	STA @LOCAL01
@UNKNOWN5:
	CMP #5
	BCC @UNKNOWN4
	CPY #0
	BNE @UNKNOWN6
	LDA #.LOWORD(PARTY_CHARACTERS)+char_struct::position_index
	STA @VIRTUAL04
	LDA GAME_STATE+game_state::player_controlled_party_members
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC @VIRTUAL04
	PHA
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC @VIRTUAL04
	TAX
	LDA __BSS_START__,X
	PLX
	STA __BSS_START__,X
@UNKNOWN6:
	LDA @LOCAL01
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:game_state::unknown96,X
.ELSE
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ GAME_STATE + game_state::unknown96,X
.ENDIF
	LDX #.LOWORD(GAME_STATE)+game_state::party_count
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	STA ENTITY_PREPARED_X_COORDINATE
	LDA ENTITY_ABS_Y_TABLE,X
	STA ENTITY_PREPARED_Y_COORDINATE
	LDA ENTITY_DIRECTIONS,X
	STA ENTITY_PREPARED_DIRECTION
	LDA @VIRTUAL02
	JSL UNKNOWN_C02140
	JSL UNKNOWN_C032EC
	JSL UPDATE_PARTY
@UNKNOWN7:
	END_C_FUNCTION
