
UNKNOWN_C3EC1F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	TAX
	BEQ @UNKNOWN1
	TXA
	DEC
	STA @LOCAL00
	CPY #0
	BNE @UNKNOWN0
	MOVE_INT1632 @VIRTUAL02, @VIRTUAL0A
	LDA @LOCAL00
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::max_hp,X
	STORE_INT1632 @VIRTUAL06
	JSL MULT32
	MOVE_INT_CONSTANT 100, @VIRTUAL0A
	JSL DIVISION32
	LDA @VIRTUAL06
	STA @VIRTUAL02
@UNKNOWN0:
	LDA @LOCAL00
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL02
	STA __BSS_START__,X
	CMP PARTY_CHARACTERS+char_struct::max_hp,Y
	BLTEQ @UNKNOWN1
	LDA #0
	STA __BSS_START__,X
@UNKNOWN1:
	END_C_FUNCTION
