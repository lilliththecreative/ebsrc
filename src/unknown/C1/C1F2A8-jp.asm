
UNKNOWN_C1F2A8:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_DELETE_CONFIRMATION
	JSR SET_INSTANT_PRINTING
	LDA #0
	JSR UNKNOWN_C10EB4
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CURRENT_SAVE_SLOT, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDA #CHAR::COLON
	JSR PRINT_LETTER
	LDA #CHAR::SPACE
	JSR PRINT_LETTER
	LDA #1
	JSR UNKNOWN_C1931B
	LOADPTR FILE_SELECT_TEXT_LEVEL, @LOCAL00
	LDA #5
	JSR PRINT_STRING
	LDA #1
	JSR UNKNOWN_C10EB4
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 CHAR_STRUCT+char_struct::level, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDX #1
	LDA #0
	JSR UNKNOWN_C438A5
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_DELETE, @LOCAL00
	LDA #13
	JSR PRINT_STRING
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_DELETE_NO, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY #2
	LDX #0
	TXA
	JSR UNKNOWN_C1153B
	LOADPTR FILE_SELECT_TEXT_ARE_YOU_SURE_DELETE_YES, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDY #3
	LDX #0
	LDA #1
	JSR UNKNOWN_C1153B
	JSR PRINT_MENU_ITEMS
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL02
	BEQ @UNKNOWN0
	LDA CURRENT_SAVE_SLOT
	AND #$00FF
	DEC
	JSL ERASE_SAVE
@UNKNOWN0:
	JSR CLOSE_FOCUS_WINDOW
	LDX @LOCAL02
	TXA
	END_C_FUNCTION
