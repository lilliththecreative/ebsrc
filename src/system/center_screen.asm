
CENTER_SCREEN: ;$C0400E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	TXA
	SEC
	SBC #$0070
	TAX
	LDA $0E
	SEC
	SBC #$0080
	JSR a:.LOWORD(REFRESH_MAP_AT_POSITION)
	PLD
	RTL
