
UNKNOWN_C43739: ;$C43739
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS + window_stats::text_y,X
=======
	LDA WINDOW_STATS_TABLE+16,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA $0E
	JSR UNKNOWN_C436D7
	PLD
	RTS
