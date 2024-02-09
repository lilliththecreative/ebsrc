
UNKNOWN_C3E9F7: ;$C3E9F7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	TAX
	TXY
	DEY
	STY $0E
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS + char_struct::equipment + EQUIPMENT_SLOT::WEAPON,X
=======
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BEQ @UNKNOWN0
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN0
	LDA #$0001
	JMP @UNKNOWN4
@UNKNOWN0:
	LDY $0E
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS + char_struct::equipment + EQUIPMENT_SLOT::BODY,X
=======
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BEQ @UNKNOWN1
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN1
	LDA #$0001
	BRA @UNKNOWN4
@UNKNOWN1:
	LDY $0E
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS + char_struct::equipment + EQUIPMENT_SLOT::ARMS,X
=======
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BEQ @UNKNOWN2
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN2
	LDA #$0001
	BRA @UNKNOWN4
@UNKNOWN2:
	LDY $0E
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA PARTY_CHARACTERS + char_struct::equipment + EQUIPMENT_SLOT::OTHER,X
=======
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BEQ @UNKNOWN3
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP $02
	BNE @UNKNOWN3
	LDA #$0001
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #$0000
@UNKNOWN4:
	PLD
	RTL
