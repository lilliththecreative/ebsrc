
CHANGE_EQUIPPED_BODY: ;$C457CA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	TAY
	STY $0E
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::equipment + EQUIPMENT_SLOT::BODY
=======
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	STA $04
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,X
	LDY $0E
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_DEFENSE
	LDY $0E
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL RECALC_CHARACTER_POSTMATH_SPEED
	LDY $0E
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL CALC_RESISTANCES
	LDA $04
	PLD
	RTL
