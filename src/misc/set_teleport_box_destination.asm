
SET_TELEPORT_BOX_DESTINATION:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	STA GAME_STATE + game_state::unknownC3
	REP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE+game_state::leader_x_coord
	STA RESPAWN_X
	LDA GAME_STATE+game_state::leader_y_coord
	STA RESPAWN_Y
	RTL
