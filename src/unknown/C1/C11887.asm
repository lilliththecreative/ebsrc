
UNKNOWN_C11887: ;$C11887
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $10
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAY
	STY $0E
	LDA $10
	STA a:window_stats::selected_option,Y
	LDA a:window_stats::current_option,Y
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
	BRA @UNKNOWN1
@UNKNOWN0:
	DEC
	STA $10
	LDA a:menu_option::next,X
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
@UNKNOWN1:
	LDA $10
	BNE @UNKNOWN0
	LDA a:menu_option::page,X
	LDY $0E
	STA a:window_stats::menu_page_number,Y
@UNKNOWN2:
	JSR PRINT_MENU_ITEMS
	PLD
	RTS
