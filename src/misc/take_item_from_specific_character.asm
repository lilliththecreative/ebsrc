
TAKE_ITEM_FROM_SPECIFIC_CHARACTER: ;$C18E5B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $04
	TAX
	DEC
	STA $0E
	LDA #$0000
	STA $02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA $0E
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::items
	CLC
	ADC $02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP $04
	BNE @UNKNOWN1
	LDX $02
	INX
	LDA $0E
	INC
	JSR REMOVE_ITEM_FROM_INVENTORY
	BRA @UNKNOWN5
@UNKNOWN1:
	INC $02
@UNKNOWN2:
	LDA #$000E
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN0
	LDA #$0000
@UNKNOWN5:
	PLD
	RTS
