
UNKNOWN_C1CA72:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	STA @VIRTUAL04
	JSL SET_INSTANT_PRINTING
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	CLC
	ADC #window_stats::text_y
	TAX
	STX @LOCAL01
	LDA __BSS_START__,X
	TAY
	STY @LOCAL00
	LDA CURRENT_FOCUS_WINDOW
	JSL UNKNOWN_EF0115
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
	LDA UNKNOWN_7E9D16
	JSL UNKNOWN_C1C853
	JSR PRINT_MENU_ITEMS
	LDY @LOCAL00
	TYA
	LDX @LOCAL01
	STA __BSS_START__,X
	JSR GET_TEXT_Y
	TAX
	LDA #0
	JSL UNKNOWN_C438A5
	LDA @VIRTUAL02
	JSR UNKNOWN_C10FEA
	LDA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(psi_ability)
	TAX
	LDA f:PSI_ABILITY_TABLE + psi_ability::name,X
	AND #$00FF
	JSR GET_PSI_NAME
	LDA #0
	JSR UNKNOWN_C10FEA
	JSL CLEAR_INSTANT_PRINTING
	END_C_FUNCTION
