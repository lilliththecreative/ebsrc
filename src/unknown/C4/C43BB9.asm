
UNKNOWN_C43BB9:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	STX @LOCAL05
	STA @LOCAL04
	MOVE_INT @PARAM02, @VIRTUAL06
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN7
	LDA CURRENT_FOCUS_WINDOW
	CMP #WINDOW::FILE_SELECT_TEXT_SPEED
	BEQ @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	CMP #WINDOW::FILE_SELECT_MUSIC_MODE
	BEQ @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	CMP #WINDOW::FILE_SELECT_MENU
	BEQ @UNKNOWN1
	LDA CURRENT_FOCUS_WINDOW
	CMP #WINDOW::FILE_SELECT_NAMING_CONFIRMATION_MESSAGE
	BEQ @UNKNOWN1
	JMP @UNKNOWN7
@UNKNOWN1:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	STA @VIRTUAL02
	STA @LOCAL03
	LDX @VIRTUAL02
	LDA a:window_stats::curr_tile_attributes,X
	STA @LOCAL02
	LDX @VIRTUAL02
	LDA a:window_stats::text_x,X
	STA @LOCAL01
	LDX @VIRTUAL02
	LDA a:window_stats::text_y,X
	STA @LOCAL00
	LDA @LOCAL01
	ASL
	PHA
	LDX @VIRTUAL02
	LDY a:window_stats::width,X
	LDA @LOCAL00
	JSL MULT16
	ASL
	ASL
	LDX @VIRTUAL02
	CLC
	ADC a:window_stats::tilemap_address,X
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL04
	BRA @UNKNOWN5
@UNKNOWN2:
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	CMP #64
	BEQ @UNKNOWN6
	LDA @LOCAL05
	BEQ @UNKNOWN3
	LDY @LOCAL02
	LDA @LOCAL03
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA a:window_stats::width,X
	TAX
	LDA @VIRTUAL04
	JSL UNKNOWN_EF00E6
	BRA @UNKNOWN4
@UNKNOWN3:
	LDY @LOCAL02
	LDA @LOCAL03
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA a:window_stats::width,X
	TAX
	LDA @VIRTUAL04
	JSL UNKNOWN_EF00BB
@UNKNOWN4:
	INC @LOCAL01
	INC @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL06
	DEC @LOCAL04
@UNKNOWN5:
	LDA [@VIRTUAL06]
	AND #$00FF
	BEQ @UNKNOWN6
	LDA @LOCAL04
	BNE @UNKNOWN2
@UNKNOWN6:
	LDA @LOCAL01
	LDX @LOCAL03
	STX @VIRTUAL02
	STA a:window_stats::text_x,X
	SEP #PROC_FLAGS::ACCUM8
	STZ INSTANT_PRINTING
@UNKNOWN7:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
