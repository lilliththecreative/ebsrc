

; void setColData(char red, char green, char blue)
SET_COLDATA: ;$C0B01A
	SEP #PROC_FLAGS::ACCUM8
	AND #$001F
	ORA #$0020
	STA f:FIXED_COLOR_DATA
	TXA
	AND #$001F
	ORA #$0040
	STA f:FIXED_COLOR_DATA
	TYA
	AND #$001F
	ORA #$0080
	STA f:FIXED_COLOR_DATA
	REP #PROC_FLAGS::ACCUM8
	RTL
