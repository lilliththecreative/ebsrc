
<<<<<<< HEAD
UNKNOWN_C0035B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL00
	LOADPTR BUFFER + $8000, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 32
=======
UNKNOWN_C0035B: ;$C0035B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LOADPTR UNKNOWN_7F8000, $06
	LDA $0E
	ASL
	ASL
	ASL
	ASL
	ASL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $06
	STA $06
	TXA
	ASL
	STA $02
	TYA
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PLD
	RTL
