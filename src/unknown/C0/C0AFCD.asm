
UNKNOWN_C0AFCD: ;$C0AFCD
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:UNKNOWN_C0AFF1,X
	STA a:.LOWORD(TM_MIRROR)
	LDA f:UNKNOWN_C0AFF1+11,X
	STA a:.LOWORD(TD_MIRROR)
	LDA f:UNKNOWN_C0AFF1+21,X
	STA f:CGWSEL
	LDA f:UNKNOWN_C0AFF1+31,X
	STA f:CGADSUB
	REP #PROC_FLAGS::ACCUM8
	RTL