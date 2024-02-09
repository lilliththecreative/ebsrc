
UNKNOWN_C3EC8B: ;$C3EC8B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $02
	TAX
	BEQL @UNKNOWN3
	TXA
	DEC
	STA $04
	CPY #$0000
	BNE @UNKNOWN1
	MOVE_INT1632 $02, $0A
	LDA $04
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::max_hp,X
	STORE_INT1632 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::max_hp,X
	STORE_INT1632 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MULT32
	MOVE_INT_CONSTANT 100, $0A
	JSL DIVISION32
	LDA $06
	STA $02
@UNKNOWN1:
	LDA $04
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $12
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	CLC
	ADC $02
	STA __BSS_START__,X
	LDA $12
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::current_hp
	TAX
	LDA __BSS_START__,X
	BNE @UNKNOWN2
	LDA #$0001
	STA __BSS_START__,X
@UNKNOWN2:
	LDA $04
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $10
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::current_hp_target
	TAX
	STX $0E
	LDA $10
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::max_hp,X
	STA @LOCAL02
	STA @VIRTUAL02
	LDX @LOCAL00
=======
	LDA CHAR_STRUCT+char_struct::max_hp,X
	STA $12
	STA $02
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA __BSS_START__,X
	CMP $02
	BLTEQ @UNKNOWN3
	LDA $12
	STA __BSS_START__,X
@UNKNOWN3:
	PLD
	RTL
