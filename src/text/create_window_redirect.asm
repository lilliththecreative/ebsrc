
REDIRECT_CREATE_WINDOW:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_PARAM_INT16 ;int window
	END_STACK_VARS
	JSR CREATE_WINDOW
	END_C_FUNCTION
