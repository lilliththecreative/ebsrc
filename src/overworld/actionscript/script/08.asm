
MOVEMENT_CODE_08:
	LDX $88
	LDA [$80],Y
	STA ENTITY_TICK_CALLBACK_LOW,X
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA [$80],Y
	STA ENTITY_TICK_CALLBACK_HIGH,X
	REP #PROC_FLAGS::ACCUM8
	INY
	RTS
