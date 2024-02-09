
RECALC_CHARACTER_POSTMATH_VITALITY: ;$C21D65
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA PARTY_CHARACTERS+char_struct::base_vitality,X
	CLC
<<<<<<< HEAD
	ADC PARTY_CHARACTERS+char_struct::boosted_vitality,X
	STA PARTY_CHARACTERS+char_struct::vitality,X
	END_C_FUNCTION
=======
	ADC CHAR_STRUCT+char_struct::boosted_vitality,X
	STA CHAR_STRUCT+char_struct::vitality,X
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
