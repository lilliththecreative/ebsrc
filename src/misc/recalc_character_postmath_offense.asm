
RECALC_CHARACTER_POSTMATH_OFFENSE: ;$C21857
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 23
	TAX
	DEC
	STA $02
	STA $15
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::base_offense,X
	AND #$00FF
	TAY
<<<<<<< HEAD
	STY @LOCAL03
	LDA PARTY_CHARACTERS+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
=======
	STY $13
	LDA CHAR_STRUCT+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	STA $11
	BEQ @UNKNOWN1
	LDX #$0000
	STX $0F
	LDA $02
	CMP #$0003
	BNE @UNKNOWN0
	LDX #$0001
	STX $0F
@UNKNOWN0:
	LDA $11
	DEC
	PHA
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::items
.IF .DEFINED(JPN)
	CLC
	ADC @VIRTUAL04
.ELSE
=======
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $0F
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $13
	TYA
	CLC
	ADC $04
	TAY
@UNKNOWN1:
	STY $04
	LDA #$0000
	CLC
	SBC $04
	BRANCHLTEQS @UNKNOWN4
	LDX #$0000
	BRA @UNKNOWN8
@UNKNOWN4:
	TYA
	CLC
	SBC #$00FF
	BRANCHLTEQS @UNKNOWN7
	LDX #$00FF
	BRA @UNKNOWN8
@UNKNOWN7:
	TYA
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN8:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA $0E
	REP #PROC_FLAGS::ACCUM8
	LDA $15
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA @LOCAL00
	STA PARTY_CHARACTERS+char_struct::offense,X
	END_C_FUNCTION
=======
	LDA $0E
	STA CHAR_STRUCT+char_struct::offense,X
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
