
UNKNOWN_EF016F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA @LOCAL02
	CLC
	ADC #window_stats::current_option
	TAY
	STY @LOCAL01
	LDA @LOCAL02
	CLC
	ADC #window_stats::selected_option
	STA @LOCAL00
	TAX
	LDA __BSS_START__,X
	STA @VIRTUAL02
	LDA __BSS_START__,Y
	CLC
	ADC @VIRTUAL02
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
	LDA a:menu_option::text_x,X
	STA UNKNOWN_7E9684
	LDA a:menu_option::text_y,X
	STA UNKNOWN_7E9686
	LDY @LOCAL01
	LDA __BSS_START__,Y
	STA UNKNOWN_7E9688
	LDA @LOCAL00
	TAX
	LDA __BSS_START__,X
	STA UNKNOWN_7E968A
	END_C_FUNCTION
