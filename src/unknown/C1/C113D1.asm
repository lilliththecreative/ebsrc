
; menu_option* UNKNOWN_C113D1(char* label, char* selectedtext)
UNKNOWN_C113D1: ;$C113D1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	MOVE_INT $24, $0A
	MOVE_INT $20, $06
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BNE @UNKNOWN0
	LDA #.LOWORD(MENU_OPTIONS) + (.SIZEOF(menu_option) * (NUM_MENU_OPTIONS - 1))
	JMP @UNKNOWN5
@UNKNOWN0:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(WINDOW_STATS)
	STA @VIRTUAL02
=======
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR UNKNOWN_C11354
	STA $10
	CMP #$FFFF
	BNE @UNKNOWN1
	LDA #.LOWORD(MENU_OPTIONS) + (.SIZEOF(menu_option) * (NUM_MENU_OPTIONS - 1))
	JMP @UNKNOWN5
@UNKNOWN1:
	OPTIMIZED_MULT $04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAY
	STY $0E
	LDA $02
	CLC
	ADC #window_stats::current_option
	TAX
	LDA __BSS_START__,X
	CMP #$FFFF
	BNE @UNKNOWN2
	LDA #$FFFF
	STA a:menu_option::previous,Y
	LDA $10
	STA __BSS_START__,X
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $02
	CLC
	ADC #window_stats::option_count
	TAX
	LDA __BSS_START__,X
	STA a:menu_option::previous,Y
	LDA __BSS_START__,X
	OPTIMIZED_MULT $04, .SIZEOF(menu_option)
	TAX
	LDA $10
	STA MENU_OPTIONS + menu_option::next,X
@UNKNOWN3:
	LDX $02
	STA a:window_stats::option_count,X
	LDA #$FFFF
	LDY $0E
	STA a:menu_option::next,Y
	LDA #$0001
	STA a:menu_option::unknown0,Y
	TYA
	CLC
	ADC #menu_option::script
	TAY
	MOVE_INT_YPTRDEST $0A, a:0
	LDA #$0001
	LDY $0E
	STA a:menu_option::page,Y
	SEP #PROC_FLAGS::ACCUM8
	STA a:menu_option::sound_effect,Y
	REP #PROC_FLAGS::ACCUM8
	TYA
	CLC
	ADC #menu_option::label
	TAX
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA __BSS_START__,X
	INX
	LDA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	AND #$00FF
	BNE @UNKNOWN4
	TYA
@UNKNOWN5:
	PLD
	RTS
