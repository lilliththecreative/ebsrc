
UNKNOWN_C4258C:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00A0
	STA f:WOBJSEL
	LDA #$0080
	STA f:WH0
	STA f:WH2
	DEC
	STA f:WH1
	STA f:WH3
	LDA #$0013
	STA f:TMW
	LDA #$0000
	STA f:WBGLOG
	STA f:WOBJLOG
	LDA #$0020
	STA f:CGWSEL
	LDA #$00B3
	STA f:CGADSUB
	LDA #$00EF
	STA f:$002132
	REP #PROC_FLAGS::ACCUM8
	RTL
