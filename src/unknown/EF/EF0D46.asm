
UNKNOWN_EF0D46:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA @LOCAL00
	ASL
	PHA
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 20
	CLC
	ADC #8
	TAX
	LDA TIMED_DELIVERY_TABLE,X
	PLX
	STA UNKNOWN_7EB525,X
	END_C_FUNCTION
