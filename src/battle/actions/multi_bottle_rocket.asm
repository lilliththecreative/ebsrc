
BTLACT_MULTI_BOTTLE_ROCKET:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA #MULTI_BOTTLE_ROCKET_COUNT
	JSR BOTTLE_ROCKET_COMMON
	END_C_FUNCTION
