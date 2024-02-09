
UNKNOWN_EF0262: ;$EF0262
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	STA HALF_HPPP_METER_SPEED
=======
	LDA #$0001
	STA UNKNOWN_7E9695
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	RTL
