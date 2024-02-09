
UNKNOWN_EF016F: ;$EF016F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(WINDOW_STATS)
	STA @LOCAL02
=======
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #window_stats::current_option
	TAY
	STY $10
	LDA $12
	CLC
	ADC #window_stats::selected_option
	STA $0E
	TAX
	LDA __BSS_START__,X
	STA $02
	LDA __BSS_START__,Y
	CLC
	ADC $02
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
	LDA a:menu_option::text_x,X
	STA MENU_BACKUP_SELECTED_TEXT_X
	LDA a:menu_option::text_y,X
<<<<<<< HEAD
	STA MENU_BACKUP_SELECTED_TEXT_Y
	LDY @LOCAL01
	LDA __BSS_START__,Y
	STA MENU_BACKUP_CURRENT_OPTION
	LDA @LOCAL00
	TAX
	LDA __BSS_START__,X
	STA MENU_BACKUP_SELECTED_OPTION
	END_C_FUNCTION
=======
	STA UNKNOWN_7E9686
	LDY $10
	LDA __BSS_START__,Y
	STA UNKNOWN_7E9688
	LDA $0E
	TAX
	LDA __BSS_START__,X
	STA UNKNOWN_7E968A
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
