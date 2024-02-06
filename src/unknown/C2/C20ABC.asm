
UNKNOWN_C20ABC:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAY
	STY @LOCAL01
	LDA __BSS_START__,Y
	STA @LOCAL00
	CMP #$FFFF
	BEQL @UNKNOWN2
	ASL
	CLC
	ADC #.LOWORD(WINDOW_EXISTENCE_TABLE)
	TAX
	LDA __BSS_START__,X
	CMP #$FFFF
	BEQL @UNKNOWN2
	LDA @LOCAL00
	STA CURRENT_FOCUS_WINDOW
	LDA __BSS_START__,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	LDA a:window_text_attributes_copy::text_x,Y
	STA WINDOW_STATS_TABLE+window_stats::text_x,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	LDA a:window_text_attributes_copy::text_y,Y
	STA WINDOW_STATS_TABLE+window_stats::text_y,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	LDA a:window_text_attributes_copy::number_padding,Y
	STA WINDOW_STATS_TABLE+window_stats::number_padding,X
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	LDA a:window_text_attributes_copy::curr_tile_attributes,Y
	STA WINDOW_STATS_TABLE+window_stats::curr_tile_attributes,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	LDA a:window_text_attributes_copy::font,Y
	STA WINDOW_STATS_TABLE+window_stats::font,X
@UNKNOWN2:
	END_C_FUNCTION
