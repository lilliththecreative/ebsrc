
RESUME_MUSIC:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA HALF_HPPP_METER_SPEED
	STA DISABLE_HPPP_ROLLING
	REP #PROC_FLAGS::ACCUM8
	RTL
