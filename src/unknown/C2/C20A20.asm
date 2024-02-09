
UNKNOWN_C20A20: ;$C20A20
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	LDA CURRENT_FOCUS_WINDOW
	STA a:window_text_attributes_copy::id,X
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQL @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::text_x,X
	LDX @LOCAL00
=======
	LDA WINDOW_STATS_TABLE+window_stats::text_x,X
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:window_text_attributes_copy::text_x,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::text_y,X
	LDX @LOCAL00
=======
	LDA WINDOW_STATS_TABLE+window_stats::text_y,X
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:window_text_attributes_copy::text_y,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::number_padding,X
	LDX @LOCAL00
=======
	LDA WINDOW_STATS_TABLE+window_stats::number_padding,X
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:window_text_attributes_copy::number_padding,X
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::curr_tile_attributes,X
	LDX @LOCAL00
=======
	LDA WINDOW_STATS_TABLE+window_stats::curr_tile_attributes,X
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:window_text_attributes_copy::curr_tile_attributes,X
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::font,X
	LDX @LOCAL00
=======
	LDA WINDOW_STATS_TABLE+window_stats::font,X
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:window_text_attributes_copy::font,X
@UNKNOWN1:
	PLD
	RTL
