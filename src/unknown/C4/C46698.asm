
UNKNOWN_C46698: ;$C46698
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL UNKNOWN_C4605A
<<<<<<< HEAD
	STA CAMERA_FOCUS_ENTITY
	LDA #2
=======
	STA UNKNOWN_7E9E33
	LDA #$0002
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA GAME_STATE + game_state::unknownB0
	RTL
