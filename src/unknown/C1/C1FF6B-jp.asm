
UNKNOWN_C1FF6B: ;$C1FF6B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR FILE_MENU_LOOP
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	.A16
	STZ UNKNOWN_7EB4B6
	STZ UNKNOWN_7EB4A2
	LDA #$0000
	RTL
