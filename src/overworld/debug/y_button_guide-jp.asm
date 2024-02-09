
DEBUG_Y_BUTTON_GUIDE: ;$C13E0E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDX #$0000
	STX $14
	TXA
	STA $12
	BRA @UNKNOWN2
@UNKNOWN0:
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #$FFFF
	BEQ @UNKNOWN1
	LDX $14
	INX
	STX $14
@UNKNOWN1:
	LDA $12
	INC
	STA $12
@UNKNOWN2:
	CMP #$001E
	BCC @UNKNOWN0
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_MENU
	LDA #$0003
	JSR UNKNOWN_C10EB4
	LDX $14
	TXA
	STORE_INT1632 $06
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	BRA @UNKNOWN4
@UNKNOWN3:
	JSL WAIT_UNTIL_NEXT_FRAME
@UNKNOWN4:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN3
	LDA #$0014
	JSR CLOSE_WINDOW
	PLD
	RTL
