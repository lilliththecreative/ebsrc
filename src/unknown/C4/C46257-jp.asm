
UNKNOWN_C46257:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @VIRTUAL04
	TXY
	LDX @PARAM03
	STX @VIRTUAL02
	TYX
	JSR UNKNOWN_C4621C
	TAY
	STY @LOCAL03
	LDX @VIRTUAL02
	LDA @VIRTUAL04
	JSR UNKNOWN_C4621C
	TAX
	LDY @LOCAL03
	TYA
	ASL
	STA @LOCAL02
	TXA
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	STA @LOCAL00
	LDY ENTITY_ABS_X_TABLE,X
	LDA @LOCAL02
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	TAX
	STX @LOCAL01
	LDA @LOCAL02
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	LDX @LOCAL01
	JSL UNKNOWN_C41EFF
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	END_C_FUNCTION
