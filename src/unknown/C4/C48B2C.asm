
<<<<<<< HEAD
UNKNOWN_C48B2C:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA #5
	STA PSI_TELEPORT_STYLE
	LDA #2
=======
UNKNOWN_C48B2C: ;$C48B2C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0005
	STA TELEPORT_STYLE
	LDA #$0002
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA GAME_STATE+game_state::leader_direction
	RTL
