
INCREMENT_SECONDARY_MEMORY:
	BEGIN_C_FUNCTION
	END_STACK_VARS
	JSR GET_ACTIVE_WINDOW_ADDRESS
	CLC
	ADC #window_stats::secondary_memory
	TAX
	LDA __BSS_START__,X
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	END_C_FUNCTION
