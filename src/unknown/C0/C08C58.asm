
UNKNOWN_C08C58:
	REP #PROC_FLAGS::ACCUM8
	PHX
	PHA
	LDA UNKNOWN_7E2400
	ASL
	TAX
	PLA
	JMP (.LOWORD(UNKNOWN_C08C65),X)
