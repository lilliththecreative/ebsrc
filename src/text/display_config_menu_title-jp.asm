
DISPLAY_CONFIG_MENU_TITLE: ;$C10EFC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	MOVE_INT $1E, $06
	BRA @UNKNOWN1
@UNKNOWN0:
	DEX
	STX $0E
	AND #$00FF
	INC $06
	JSR a:.LOWORD(PRINT_LETTER)
@UNKNOWN1:
	LDA [$06]
	AND #$00FF
	BEQ @UNKNOWN2
	LDX $0E
	BNE @UNKNOWN0
@UNKNOWN2:
	PLD
	RTS
