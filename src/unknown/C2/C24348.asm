
UNKNOWN_C24348: ;$C24348
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $04
	JSR FIND_STEALABLE_ITEMS
	STA $02
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	TAX
	LDA STEALABLE_ITEM_CANDIDATES,X
	AND #$00FF
	CMP $04
	BNE @UNKNOWN1
	LDA #$0001
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	CMP $02
	BCC @UNKNOWN0
	LDA #$0000
@UNKNOWN3:
	PLD
	RTL
