
UNKNOWN_C43D95: ;$C43D95
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS + window_stats::text_x,X
=======
	LDA WINDOW_STATS_TABLE+window_stats::text_x,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	ASL
	ASL
	STA $02
	LDA $10
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL02
	STA @LOCAL01
	LDA LAST_TEXT_PIXEL_OFFSET_SET
=======
	ADC $02
	STA $10
	LDA UNKNOWN_7E5E73
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	STA $02
	LDA $10
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL02
	STA @LOCAL00
	LDA WINDOW_STATS + window_stats::text_y,X
=======
	ADC $02
	STA $0E
	LDA WINDOW_STATS_TABLE+window_stats::text_y,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA $0E
	JSL UNKNOWN_C43D75
	PLD
	RTL
