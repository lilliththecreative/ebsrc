
UNKNOWN_C43F53: ;$C43F53
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	TAX
	LDA f:UNKNOWN_C20958,X
<<<<<<< HEAD
	STA USED_BG2_TILE_MAP,X
	LDA @LOCAL00
=======
	STA UNKNOWN_7E1AD6,X
	LDA $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0020
	BCC @UNKNOWN0
	PLD
	RTL
