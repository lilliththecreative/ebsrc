
UNKNOWN_C04A7B:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA UNKNOWN_7E5D7A
	STA GAME_STATE + game_state::unknownB0
	JSL UNKNOWN_C0D19B
	RTL
