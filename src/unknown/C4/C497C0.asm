
<<<<<<< HEAD
UNKNOWN_C497C0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @LOCAL02
	STA @VIRTUAL02
	PROMOTENEARPTR MAP_PALETTE_BACKUP, @VIRTUAL06
=======
UNKNOWN_C497C0: ;$C497C0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STY $14
	STA $02
	PROMOTENEARPTR UNKNOWN_7E4476, $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	TXA
	JSL UNKNOWN_C4954C
	LDY $14
	TYX
	LDA $02
	JSL UNKNOWN_C496E7
	LDA $02
	CMP #$0001
	BEQ @UNKNOWN2
	LDA #$0000
	STA $12
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA $12
	INC
	STA $12
@UNKNOWN1:
	CMP $02
	BCC @UNKNOWN0
@UNKNOWN2:
	JSL UNKNOWN_C49740
	LDA #$0018
	JSL UNKNOWN_C0856B
	PLD
	RTL
