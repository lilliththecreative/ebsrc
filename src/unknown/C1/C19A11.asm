
UNKNOWN_C19A11: ;$C19A11
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXY
	STY $10
	TAX
<<<<<<< HEAD
	STX @LOCAL00
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
=======
	STX $0E
	LDA #.LOWORD(UNKNOWN_7E9C8A)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C20A20
	LDX $0E
	TXA
	JSR SET_WINDOW_FOCUS
	LDY $10
	TYA
	JSR SELECTION_MENU
	TAX
<<<<<<< HEAD
	STX @LOCAL00
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
=======
	STX $0E
	LDA #.LOWORD(UNKNOWN_7E9C8A)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C20ABC
	LDX $0E
	TXA
	PLD
	RTS
