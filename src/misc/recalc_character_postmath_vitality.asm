
RECALC_CHARACTER_POSTMATH_VITALITY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_PARAM_INT16 ;NEAR int character
	END_STACK_VARS
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA CHAR_STRUCT+char_struct::base_vitality,X
	CLC
	ADC CHAR_STRUCT+char_struct::boosted_vitality,X
	STA CHAR_STRUCT+char_struct::vitality,X
	END_C_FUNCTION
