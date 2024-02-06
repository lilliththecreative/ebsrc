
PRINT_MENU_ITEMS:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT8
	END_STACK_VARS
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN13
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA a:window_stats::current_option,X
	CMP #.LOWORD(-1)
	BNE @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA UNKNOWN_7E968C
	JMP @UNKNOWN13
@UNKNOWN1:
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	.A16
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @VIRTUAL02
	JSR SET_INSTANT_PRINTING
@UNKNOWN2:
	LDX @VIRTUAL02
	LDA a:menu_option::page,X
	LDX @VIRTUAL04
	CMP a:window_stats::menu_page_number,X
	BEQ @UNKNOWN3
	CMP #0
	BNEL @UNKNOWN12
@UNKNOWN3:
	LDA @VIRTUAL02
	JSL UNKNOWN_C43DDB
	LDX @VIRTUAL02
	LDA a:menu_option::page,X
	BNEL @UNKNOWN11
	LDA #0
	JSR UNKNOWN_C10FEA
	LDA #$014F
	JSL UNKNOWN_C43F77
	JSL UNKNOWN_C43CAA
	LDA #0
	JSR UNKNOWN_C10FEA
	LDA @VIRTUAL04
	CLC
	ADC #window_stats::title
	TAY
	LDA __BSS_START__,Y
	AND #$00FF
	BEQL @UNKNOWN11
	LDX #.LOWORD(UNKNOWN_7E9C9F)
	BRA @UNKNOWN7
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL03
	STA __BSS_START__,X
	INY
	INX
@UNKNOWN7:
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	STA @LOCAL03
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN8
	AND #$00FF
	CMP #88
	BNE @UNKNOWN6
@UNKNOWN8:
	SEP #PROC_FLAGS::ACCUM8
	LDA #88
	STA __BSS_START__,X
	INX
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL04
	CLC
	ADC #window_stats::menu_page_number
	TAY
	STY @LOCAL02
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	CLC
	ADC #CHAR::ZERO
	STA __BSS_START__,X
	INX
	LDA #89
	STA __BSS_START__,X
	INX
	LDA #0
	STA __BSS_START__,X
	JSL UNKNOWN_C43CAA
	.A16
	PROMOTENEARPTR UNKNOWN_7E9C9F, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #.LOWORD(-1)
	LDA CURRENT_FOCUS_WINDOW
	JSL SET_WINDOW_TITLE
	JSL UNKNOWN_C43CAA
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL STRLEN
	STA @LOCAL01
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL01
	DEC
	DEC
	JSR PRINT_STRING
	LDY @LOCAL02
	LDA __BSS_START__,Y
	STA @LOCAL02
	LDX @VIRTUAL04
	LDA a:window_stats::option_count,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	TAX
	LDA MENU_OPTIONS + menu_option::previous,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	TAX
	LDA @LOCAL02
	CMP MENU_OPTIONS + menu_option::page,X
	BNE @UNKNOWN9
	LDA #CHAR::ONE
	BRA @UNKNOWN10
@UNKNOWN9:
	CLC
	ADC #CHAR::ONE
@UNKNOWN10:
	JSR PRINT_LETTER
	LDA #89
	JSR PRINT_LETTER
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA @VIRTUAL02
	CLC
	ADC #menu_option::label
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #.LOWORD(-1)
	JSR PRINT_STRING
@UNKNOWN12:
	LDX @VIRTUAL02
	LDA a:menu_option::next,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN13
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @VIRTUAL02
	JMP @UNKNOWN2
@UNKNOWN13:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
