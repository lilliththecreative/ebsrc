
UNKNOWN_C43EF8: ;$C43EF8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STA $16
	MOVE_INT $26, $06
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STX $14
	MOVE_INT $06, $0E
	LDA $16
	JSL UNKNOWN_C43E31
	STA $02
	LDX $14
	LDA a:window_stats::width,X
	ASL
	ASL
	ASL
	SEC
	SBC $02
	LSR
	STA $12
	LDA a:window_stats::text_y,X
	TAX
	LDA $12
	JSL UNKNOWN_C43D75
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E74)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
