
UNKNOWN_C10FEA: ;$C10FEA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQ @UNKNOWN0
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY #$0400
	LDA $0E
	JSL MULT16
<<<<<<< HEAD
	STA WINDOW_STATS + window_stats::curr_tile_attributes,X
=======
	STA WINDOW_STATS_TABLE+window_stats::curr_tile_attributes,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN0:
	PLD
	RTS
