
<<<<<<< HEAD
UNKNOWN_C4C58F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	PROMOTENEARPTR PALETTES, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #^PALETTES
	STA @LOCAL01+2
	MOVE_INT @LOCAL01, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #100
=======
UNKNOWN_C4C58F: ;$C4C58F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STA $02
	PROMOTENEARPTR $0200, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	LDA #$007E
	STA $14
	MOVE_INT $12, $06
	MOVE_INT $06, $0E
	LDA #$0064
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C4954C
	LDX #$FFFF
	LDA $02
	JSL UNKNOWN_C496E7
	LDA #$0000
	STA $16
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA $16
	INC
	STA $16
@UNKNOWN1:
	CMP $02
	BCC @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA $0E
	LDX #$0200
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(PALETTES)
=======
	LDA #$0200
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMSET16
	LDA #$0018
	JSL UNKNOWN_C0856B
	JSL WAIT_UNTIL_NEXT_FRAME
	PLD
	RTL
