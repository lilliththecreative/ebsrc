
UNKNOWN_C423DC: ;$C423DC
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA f:WH0
	STA f:WH2
	DEC
	STA f:WH1
	STA f:WH3
	LDA #$0010
	STA f:CGWSEL
	LDA #$0013
	STA f:TMW
	LDA #$0000
	STA f:WBGLOG
	STA f:WOBJLOG
	REP #PROC_FLAGS::ACCUM8
	RTL
