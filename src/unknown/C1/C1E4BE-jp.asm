
UNKNOWN_C1E4BE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @VIRTUAL02
	STX @LOCAL05
	TAX
	STX @LOCAL04
	JSR SET_INSTANT_PRINTING
	LDX @LOCAL04
	TXA
	JSR CREATE_WINDOW
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA @VIRTUAL04
	STA @LOCAL04
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDA #4
	CLC
	SBC @LOCAL05
	BRANCHLTEQS @UNKNOWN2
	LDX #4
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #6
@UNKNOWN3:
	TXY
	STY @LOCAL03
	TYX
	DEX
	STX @LOCAL02
	BRA @UNKNOWN3_3
@UNKNOWN3_2:
	LDA #CHAR::PLACEHOLDER
	JSR PRINT_LETTER
	LDX @LOCAL02
	DEX
	STX @LOCAL02
@UNKNOWN3_3:
	BNE @UNKNOWN3_2
	LDX @VIRTUAL04
	LDA a:window_stats::text_y,X
	TAX
	LDA #0
	JSR UNKNOWN_C438A5
	LDA @VIRTUAL02
	CMP #6
	BNE @UNKNOWN4
	LDX #0
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX @VIRTUAL02
	INX
@UNKNOWN5:
	STX @LOCAL01
	LOADPTR DONT_CARE_NAMES, @VIRTUAL06
	TXA
	OPTIMIZED_MULT @VIRTUAL04, 6
	STA @VIRTUAL02
	LDA @LOCAL05
	OPTIMIZED_MULT @VIRTUAL04, 42
	CLC
	ADC @VIRTUAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDA #6
	JSR PRINT_STRING
	LDA @LOCAL04
	STA @VIRTUAL04
	CLC
	ADC #14
	STA @VIRTUAL02
	LDY @LOCAL03
	STY @VIRTUAL04
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	CMP @VIRTUAL04
	BCS @UNKNOWN6
	LDA #CHAR::BULLET
	JSR PRINT_LETTER
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	DEC
	LDX @VIRTUAL02
	STA __BSS_START__,X
@UNKNOWN6:
	LDA #WINDOW::FILE_SELECT_NAMING_KEYBOARD
	JSR SET_WINDOW_FOCUS
	LDX @LOCAL01
	TXA
	END_C_FUNCTION
