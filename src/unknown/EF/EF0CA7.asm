
UNKNOWN_EF0CA7:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LOADPTR TIMED_DELIVERY_TABLE, @VIRTUAL06
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 20
	INC
	INC
	INC
	INC
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	CMP #<-1
	BNE @UNKNOWN0
	LDA #1
	BRA @RETURN
@UNKNOWN0:
	LDY #0
	LDA @LOCAL00
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7EB511)
	TAX
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	STA @VIRTUAL02
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, 20
	INC
	INC
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN1
	LDY #1
@UNKNOWN1:
	TYA
@RETURN:
	END_C_FUNCTION
