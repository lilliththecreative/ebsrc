
OPEN_TEXT_SPEED_MENU: ;$C1F3C2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_TEXT_SPEED
	JSL SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_SELECT_TEXT_SPEED, $0E
	LDA #$0019
	JSR PRINT_STRING
	LOADPTR FILE_SELECT_TEXT_TEXTSPEED_STRINGS, $06
	MOVE_INT $06, $16
	MOVE_INT_CONSTANT NULL, $0A
	MOVE_INT $06, $0E
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	LDX #$0001
	LDA #$0000
	JSR UNKNOWN_C114B1
	LDA #TEXT_SPEED_STRING_LENGTH
	MOVE_INTX $16, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	LDX #$0002
	LDA #$0000
	JSR UNKNOWN_C114B1
	LDA #TEXT_SPEED_STRING_LENGTH*2
	MOVE_INTX $16, $06
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	LDX #$0003
	LDA #$0000
	JSR UNKNOWN_C114B1
	LDA GAME_STATE+game_state::text_speed
	AND #$00FF
	BEQ @UNKNOWN0
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$0001
@UNKNOWN1:
	TXA
	JSR UNKNOWN_C11887
	PLD
	RTL
