
UNKNOWN_C447FB:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	TAY
	STY @LOCAL03
	MOVE_INT @PARAM01, @VIRTUAL06
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAX
	STX @LOCAL02
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY @LOCAL03
	TYA
	JSL UNKNOWN_C43E31
	STA @LOCAL01
	LDA VWF_X
	AND #$0007
	STA @VIRTUAL04
	LDX @LOCAL02
	LDA __BSS_START__ + window_stats::text_x,X
	DEC
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL04
	STA @VIRTUAL02
	LDA @LOCAL01
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL02
	LDA __BSS_START__ + window_stats::width,X
	ASL
	ASL
	ASL
	CMP @VIRTUAL02
	BCS @UNKNOWN0
	JSL REDIRECT_PRINT_NEWLINE
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA VWF_INDENT_NEW_LINE
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY @LOCAL03
	TYA
	JSL REDIRECT_PRINT_STRING
	END_C_FUNCTION
