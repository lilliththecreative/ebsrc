
CHECK_IF_PSI_KNOWN:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	STA @LOCAL02
	CMP #PARTY_MEMBER::NESS
	BEQ @UNKNOWN0
	CMP #PARTY_MEMBER::PAULA
	BEQ @UNKNOWN1
	CMP #PARTY_MEMBER::POO
	BEQ @UNKNOWN2
	BRA @UNKNOWN3
@UNKNOWN0:
	TXA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(psi_ability)
	CLC
	ADC #psi_ability::ness_level
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:PSI_ABILITY_TABLE,X
	STA @VIRTUAL00
	STA @LOCAL01
	BRA @UNKNOWN3
@UNKNOWN1:
	.A16
	TXA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(psi_ability)
	CLC
	ADC #psi_ability::paula_level
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:PSI_ABILITY_TABLE,X
	STA @VIRTUAL00
	STA @LOCAL01
	BRA @UNKNOWN3
@UNKNOWN2:
	.A16
	TXA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(psi_ability)
	CLC
	ADC #psi_ability::poo_level
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:PSI_ABILITY_TABLE,X
	STA @VIRTUAL00
	STA @LOCAL01
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	AND #$00FF
	BEQ @UNKNOWN6
	LDX #0
	STX @LOCAL00
	LDA @LOCAL02
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	CMP PARTY_CHARACTERS+char_struct::level,X
	BGT @UNKNOWN5
	LDX #1
	STX @LOCAL00
@UNKNOWN5:
	LDX @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	TXA
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA #0
@UNKNOWN7:
	END_C_FUNCTION
