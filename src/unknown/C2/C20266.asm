
UNKNOWN_C20266: ;$C20266
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	LDY #.LOWORD(UNKNOWN_7E8272)
	LOADPTR UNKNOWN_C3E40E, $06
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [$06]
	STA a:.LOWORD(RAM),Y
	INC $06
	INC $06
	INY
	INY
	INX
@UNKNOWN1:
	CPX #$0004
	BCC @UNKNOWN0
	PLD
	RTL
