
RESET_MUSHROOMIZED_WALKING:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ MUSHROOMIZED_WALKING_FLAG
	RTL
