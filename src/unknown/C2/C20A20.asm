
UNKNOWN_C20A20:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL00
	LDA CURRENT_FOCUS_WINDOW
	STA a:window_text_attributes_copy::id,X
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQL @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS_TABLE+window_stats::text_x,X
	LDX @LOCAL00
	STA a:window_text_attributes_copy::text_x,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS_TABLE+window_stats::text_y,X
	LDX @LOCAL00
	STA a:window_text_attributes_copy::text_y,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA WINDOW_STATS_TABLE+window_stats::number_padding,X
	LDX @LOCAL00
	STA a:window_text_attributes_copy::number_padding,X
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS_TABLE+window_stats::curr_tile_attributes,X
	LDX @LOCAL00
	STA a:window_text_attributes_copy::curr_tile_attributes,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS_TABLE+window_stats::font,X
	LDX @LOCAL00
	STA a:window_text_attributes_copy::font,X
@UNKNOWN1:
	END_C_FUNCTION
