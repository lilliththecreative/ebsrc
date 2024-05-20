
DEBUG_Y_BUTTON_FLAG:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX #EVENT_FLAG::FLG_TEMP_0
	STX @VIRTUAL02
@UNKNOWN0:
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_MENU
	LDA #3
	JSR UNKNOWN_C10EB4
	MOVE_INT1632 @VIRTUAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR PRINT_NUMBER
	LDA #$0020
.IF .DEFINED(JPN)
	JSR PRINT_LETTER
.ELSE
	JSL UNKNOWN_C43F77
	JSL UNKNOWN_C43CAA
.ENDIF
	LDA @VIRTUAL02
	JSL GET_EVENT_FLAG
	CMP #0
	BEQ @UNKNOWN1
	LOADPTR DEBUG_ON_TEXT, @VIRTUAL06
	BRA @UNKNOWN2
@UNKNOWN1:
	LOADPTR DEBUG_OFF_TEXT, @VIRTUAL06
@UNKNOWN2:
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #$0100
	JSR PRINT_STRING
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	LDY @VIRTUAL02
	STY @LOCAL01
@UNKNOWN3:
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA PAD_HELD
	AND #PAD::UP
	BEQ @UNKNOWN4
	LDY @LOCAL01
	INY
	STY @LOCAL01
	BRA @UNKNOWN11
@UNKNOWN4:
	LDA PAD_HELD
	AND #PAD::DOWN
	BEQ @UNKNOWN5
	LDY @LOCAL01
	DEY
	STY @LOCAL01
	BRA @UNKNOWN11
@UNKNOWN5:
	LDA PAD_HELD
	AND #PAD::RIGHT
	BEQ @UNKNOWN6
	LDY @LOCAL01
	TYA
	CLC
	ADC #10
	TAY
	STY @LOCAL01
	BRA @UNKNOWN11
@UNKNOWN6:
	LDA PAD_HELD
	AND #PAD::LEFT
	BEQ @UNKNOWN7
	LDY @LOCAL01
	TYA
	SEC
	SBC #10
	TAY
	STY @LOCAL01
	BRA @UNKNOWN11
@UNKNOWN7:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN10
	LDA @VIRTUAL02
	JSL GET_EVENT_FLAG
	CMP #0
	BEQ @UNKNOWN8
	LDX #0
	BRA @UNKNOWN9
@UNKNOWN8:
	LDX #1
@UNKNOWN9:
	LDA @VIRTUAL02
	JSL SET_EVENT_FLAG
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN3
	LDA #WINDOW::FILE_SELECT_MENU
	JSR CLOSE_WINDOW
	BRA @UNKNOWN14
@UNKNOWN11:
	LDY @LOCAL01
	CPY #2000
	BCC @UNKNOWN12
	JMP @UNKNOWN0
@UNKNOWN12:
	CPY #0
	BEQL @UNKNOWN0
	STY @VIRTUAL02
	JMP @UNKNOWN0
@UNKNOWN14:
	END_C_FUNCTION
