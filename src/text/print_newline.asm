
PRINT_NEWLINE:
.IF .DEFINED(JPN)
	BEGIN_C_FUNCTION
.ELSE
	BEGIN_C_FUNCTION_FAR
.ENDIF
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN3
.ENDIF
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAY
	STY @LOCAL01
.IF .DEFINED(USA)
	JSL UNKNOWN_C45E96
	LDY @LOCAL01
.ENDIF
	LDA a:window_stats::font,Y
	BEQ @UNKNOWN0
	JSL UNKNOWN_C45E96
@UNKNOWN0:
	LDY @LOCAL01
	TYA
	CLC
	ADC #window_stats::text_y
	TAX
	LDA __BSS_START__,X
	STA @LOCAL00
	LDA a:window_stats::height,Y
	LSR
	DEC
	STA @VIRTUAL02
	LDA @LOCAL00
	CMP @VIRTUAL02
	BEQ @UNKNOWN1
	INC
	STA __BSS_START__,X
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA CURRENT_FOCUS_WINDOW
.IF .DEFINED(JPN)
	JSR UNKNOWN_C437B8
.ELSE
	JSL UNKNOWN_C437B8
.ENDIF
@UNKNOWN2:
	LDY @LOCAL01
	TYX
	STZ a:window_stats::text_x,X
@UNKNOWN3:
	END_C_FUNCTION
