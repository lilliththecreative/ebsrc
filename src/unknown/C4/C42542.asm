
UNKNOWN_C42542: ;$C42542
	SEP #PROC_FLAGS::ACCUM8
	STA f:A1B4
	STA f:$004347
	LDA #$0001
	STA f:DMAP4
	LDA #$0026
	STA f:BBAD4
	REP #PROC_FLAGS::ACCUM8
	TXA
	STA f:A1T4L
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	TSB HDMAEN_MIRROR
	REP #PROC_FLAGS::ACCUM8
	RTL
