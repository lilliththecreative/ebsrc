
UNKNOWN_C1BB71:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
@UNKNOWN0:
	LDA #1
	STA UNKNOWN_7E5E71
@UNKNOWN1:
	LOADPTR UNKNOWN_C1952F, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDX #1
	LDA #0
	JSR CHAR_SELECT_PROMPT
	TAX
	BEQL @UNKNOWN9
	CPX #3
	BEQ @UNKNOWN0
	LDA #0
	STA @VIRTUAL02
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2E
	LDA #0
	STA @LOCAL04
	BRA @UNKNOWN4
@UNKNOWN3:
	TAX
	INX
	STX @LOCAL03
	LOADPTR PSI_CATEGORIES, @VIRTUAL06
	LDA @LOCAL04
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT_CONSTANT NULL, @LOCAL01
	TXA
	JSR UNKNOWN_C115F4
	LDX @LOCAL03
	TXA
	STA @LOCAL04
@UNKNOWN4:
	CMP #4
	BCC @UNKNOWN3
	LDY #0
	TYX
	LDA #1
	JSR UNKNOWN_C1180D
@UNKNOWN5:
	LDA #WINDOW::UNKNOWN2E
	JSR SET_WINDOW_FOCUS
	LDA @VIRTUAL02
	BNE @UNKNOWN6
	JSR PRINT_MENU_ITEMS
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
	INC @VIRTUAL02
@UNKNOWN6:
	CREATE_WINDOW_NEAR #WINDOW::STATUS_MENU
	LDA #WINDOW::UNKNOWN2E
	STA CURRENT_FOCUS_WINDOW
	STZ UNKNOWN_7E5E71
	LOADPTR UNKNOWN_C1CAF5, @LOCAL00
	JSR UNKNOWN_C11F5A
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL02
	JSR UNKNOWN_C11F8A
	LDX @LOCAL02
	BEQ @UNKNOWN8
	LDA #1
	JSR UNKNOWN_C12BD5
	CMP #0
	BEQ @UNKNOWN5
	LDA #1
	JSR SET_WINDOW_FOCUS
	LDA #$00FF
	STA UNKNOWN_7E9D19
	LOADPTR UNKNOWN_C1BB06, @LOCAL00
	JSR UNKNOWN_C11F5A
@UNKNOWN7:
	LDA #1
	JSR SELECTION_MENU
	CMP #0
	BNE @UNKNOWN7
	JSR UNKNOWN_C11F8A
	LDA #WINDOW::UNKNOWN04
	JSL CLOSE_WINDOW
	LDA #WINDOW::UNKNOWN2F
	JSL CLOSE_WINDOW
	LDA #$00FF
	STA UNKNOWN_7E9D19
	JMP @UNKNOWN5
@UNKNOWN8:
	LDA #WINDOW::UNKNOWN2E
	JSL CLOSE_WINDOW
	LDA #WINDOW::TEXT_STANDARD
	JSL CLOSE_WINDOW
	LDA #WINDOW::STATUS_MENU
	STA CURRENT_FOCUS_WINDOW
	LDA #1
	STA UNKNOWN_7E5E71
	LDX @LOCAL02
	BEQL @UNKNOWN1
@UNKNOWN9:
	LDA #WINDOW::STATUS_MENU
	JSL CLOSE_WINDOW
	PLD
	RTS
