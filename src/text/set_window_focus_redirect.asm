
REDIRECT_SET_WINDOW_FOCUS:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	JSR SET_WINDOW_FOCUS
	END_C_FUNCTION
