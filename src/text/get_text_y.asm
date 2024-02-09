
GET_TEXT_Y: ;$C104D8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::text_y,X
	END_C_FUNCTION
=======
	LDA WINDOW_STATS_TABLE+window_stats::text_y,X
	RTS
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
