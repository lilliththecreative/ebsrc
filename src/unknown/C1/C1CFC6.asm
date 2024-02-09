
<<<<<<< HEAD
UNKNOWN_C1CFC6:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;NEAR battle_menu_selection*
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
=======
;A = unknown_A97D*
UNKNOWN_C1CFC6: ;$C1CFC6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAY
	STY $10
	LDX #$0000
	STX $0E
	LDA __BSS_START__,Y
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::items,X
	AND #$00FF
	BEQ @UNKNOWN1
@UNKNOWN0:
	CREATE_WINDOW_NEAR #WINDOW::INVENTORY
<<<<<<< HEAD
	LDX #2
	LDY @LOCAL01
	LDA a:battle_menu_selection::user,Y
=======
	LDX #$0002
	LDY $10
	LDA a:unknown_A97D::unknown0,Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	JSR INVENTORY_GET_ITEM_NAME
	LDA #$0001
	JSR SELECTION_MENU
	TAX
	STX $0E
	JSL SET_INSTANT_PRINTING
	JSR CLOSE_FOCUS_WINDOW
	LDX $0E
	BEQ @UNKNOWN1
	TXA
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDY @LOCAL01
	STA a:battle_menu_selection::param1,Y
=======
	LDY $10
	STA a:unknown_A97D::unknown1,Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSR UNKNOWN_C1CE85
	TAX
	STX $0E
	LDA #$0026
	JSL CLOSE_WINDOW
	LDX $0E
	BEQ @UNKNOWN0
@UNKNOWN1:
	LDX $0E
	TXA
	PLD
	RTS
