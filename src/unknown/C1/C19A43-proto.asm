
UNKNOWN_C19A43: ;$C19A43
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN0D
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_7, $0E
	LDX #$000C
	LDA #$000D
	JSL SET_WINDOW_TITLE
	LDA #$0000
	STA $02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDX $02
	LDA .LOWORD(GAME_STATE)+game_state::escargo_express_items,X
	AND #$00FF
	TAY
	STY $18
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9C9F)+.SIZEOF(item::name)
	LDY $18
	BEQ @UNKNOWN1
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E9C9F), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	JSR a:.LOWORD(UNKNOWN_C113D1)
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	INC $02
@UNKNOWN2:
	LDA $02
	CMP #$0024
	BCC @UNKNOWN0
	LDY #$0001
	LDX #$0000
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C1180D)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $16
	LDA #$000D
	JSL UNKNOWN_EF0115
	STZ .LOWORD(UNKNOWN_7E5E71)
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	LDX $16
	TXA
	PLD
	RTS
