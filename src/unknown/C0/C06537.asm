
UNKNOWN_C06537: ;$C06537
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	END_STACK_VARS
	LDA CURRENT_QUEUED_INTERACTION
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(queued_interaction)
	TAX
	LDA QUEUED_INTERACTIONS + queued_interaction::type,X
	PLD
	RTL
