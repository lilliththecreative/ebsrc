
UNKNOWN_C1008E: ;$C1008E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	STA EXTRA_TICK_ON_WINDOW_CLOSE
.ENDIF
=======
	LDA #$0001
	STA UNKNOWN_7E5E70
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA WINDOW_TAIL
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS + window_stats::id,X
	JSR CLOSE_WINDOW
=======
	LDA WINDOW_STATS_TABLE+window_stats::id,X
	JSL CLOSE_WINDOW
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA WINDOW_TAIL
	CMP #$FFFF
	BNE @UNKNOWN0
	JSL CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	SEP #PROC_FLAGS::ACCUM8
	STZ EXTRA_TICK_ON_WINDOW_CLOSE
	JSL UNKNOWN_C43F53
	RTS
