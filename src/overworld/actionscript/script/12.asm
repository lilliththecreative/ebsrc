
MOVEMENT_CODE_12:
	LDA [$80],Y
	TAX
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA [$80],Y
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	INY
	RTS
