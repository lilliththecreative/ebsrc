
UNKNOWN_C49CA8:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	AND #$00FF
	CLC
	ADC #8
	CLC
	ADC UNKNOWN_7E9F2F
	STA UNKNOWN_7E9F2F
	LSR
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA UNKNOWN_7E9F31
	END_C_FUNCTION
