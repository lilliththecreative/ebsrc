
UNKNOWN_C42509: ;$C42509
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0020
	STA f:WOBJSEL
	LDA #$0000
	STA f:WH0
	LDA #$00FF
	STA f:WH1
	LDA #$0013
	STA f:TMW
	LDA #$0000
	STA f:WBGLOG
	STA f:WOBJLOG
	LDA #$0020
	STA f:CGWSEL
	LDA #$00B3
	STA f:CGADSUB
	LDA #$00FF
	STA f:$002132
	REP #PROC_FLAGS::ACCUM8
	RTL