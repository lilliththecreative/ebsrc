
UNKNOWN_C3E7E3: ;$C3E7E3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	CMP #$FFFF
	BEQ @UNKNOWN2
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAY
	STY $0E
	LDA a:window_stats::current_option,Y
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
@UNKNOWN0:
	LDA #$0000
	STA a:menu_option::unknown0,X
	LDA a:menu_option::next,X
	CMP #$FFFF
	BEQ @UNKNOWN1
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
	BRA @UNKNOWN0
@UNKNOWN1:
	LDA #$FFFF
	LDY $0E
	STA a:window_stats::selected_option,Y
	STA a:window_stats::option_count,Y
	STA a:window_stats::current_option,Y
	LDA #$0001
	STA a:window_stats::unknown49,Y
	STA a:window_stats::menu_page_number,Y
@UNKNOWN2:
	PLD
	RTL
