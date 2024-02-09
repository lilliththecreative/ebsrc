
UNKNOWN_C43874: ;$C43874
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STY $02
	TXY
	STY $10
	STA $0E
	JSL UNKNOWN_C43CAA
	LDA $0E
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	TYA
<<<<<<< HEAD
	STA WINDOW_STATS + window_stats::text_x,X
	LDA @VIRTUAL02
	STA WINDOW_STATS + window_stats::text_y,X
	END_C_FUNCTION
=======
	STA WINDOW_STATS_TABLE+window_stats::text_x,X
	LDA $02
	STA WINDOW_STATS_TABLE+window_stats::text_y,X
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
