
UNKNOWN_C06E1A: ;$C06E1A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$FFFF
	STA STAIRS_DIRECTION
	STZ GAME_STATE+game_state::walking_style
	STZ PLAYER_MOVEMENT_FLAGS
	STZ UNREAD_7E5DBA
	RTL
