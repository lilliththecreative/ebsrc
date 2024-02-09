
UNKNOWN_C20ABC: ;$C20ABC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
	LDA __BSS_START__,Y
	STA $0E
	CMP #$FFFF
	BEQL @UNKNOWN2
	ASL
	CLC
	ADC #.LOWORD(OPEN_WINDOW_TABLE)
	TAX
	LDA __BSS_START__,X
	CMP #$FFFF
	BEQL @UNKNOWN2
	LDA $0E
	STA CURRENT_FOCUS_WINDOW
	LDA __BSS_START__,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	LDA a:window_text_attributes_copy::text_x,Y
	STA WINDOW_STATS+window_stats::text_x,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	LDA a:window_text_attributes_copy::text_y,Y
	STA WINDOW_STATS+window_stats::text_y,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	SEP #PROC_FLAGS::ACCUM8
	LDA a:window_text_attributes_copy::number_padding,Y
	STA WINDOW_STATS+window_stats::number_padding,X
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	LDA a:window_text_attributes_copy::curr_tile_attributes,Y
	STA WINDOW_STATS+window_stats::curr_tile_attributes,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	LDA a:window_text_attributes_copy::font,Y
	STA WINDOW_STATS+window_stats::font,X
@UNKNOWN2:
	PLD
	RTL
