
UNKNOWN_EF0D73:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7EB525)
	TAX
	LDA __BSS_START__,X
	BEQ @UNKNOWN0
	DEC
	STA __BSS_START__,X
@UNKNOWN0:
	END_C_FUNCTION
