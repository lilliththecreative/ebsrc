
UNKNOWN_C1FF6B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
.IF .DEFINED(USA)
	STZ ENABLE_WORD_WRAP
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA ALLOW_TEXT_OVERFLOW
.ENDIF
	JSR FILE_MENU_LOOP
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	.A16
	STZ DISABLED_TRANSITIONS
	STZ LAST_PARTY_MEMBER_STATUS_LAST_CHECK
.IF .DEFINED(USA)
	LDA #<-1
	STA ENABLE_WORD_WRAP
	SEP #PROC_FLAGS::ACCUM8
	STZ ALLOW_TEXT_OVERFLOW
	REP #PROC_FLAGS::ACCUM8
.ENDIF
	LDA #0
	END_C_FUNCTION
