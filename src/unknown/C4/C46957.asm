
UNKNOWN_C46957:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	LDY CURRENT_ENTITY_SLOT
	TYA
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAX
	LDA @LOCAL00
	STA @VIRTUAL02
	LDA __BSS_START__,X
	CMP @VIRTUAL02
	BEQ @UNKNOWN0
	LDA @LOCAL00
	STA __BSS_START__,X
	TYA
	JSL UNKNOWN_C0A443_ENTRY2
@UNKNOWN0:
	END_C_FUNCTION
