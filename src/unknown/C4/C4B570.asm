
UNKNOWN_C4B570: ;$C4B570
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX #$0001
	LDA #$0018
	JSL SPAWN_FLOATING_SPRITE
	RTL