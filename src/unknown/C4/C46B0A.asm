
UNKNOWN_C46B0A:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA @LOCAL00
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA @LOCAL00
	STA UNKNOWN_7E1A86,X
	END_C_FUNCTION
