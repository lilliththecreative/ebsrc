
UNKNOWN_EF0C87: ;$EF0C87
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7EB511),X
	RTL
