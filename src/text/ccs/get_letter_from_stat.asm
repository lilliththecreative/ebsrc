
CC_19_28:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	STA @LOCAL01
	LOADPTR CC_1C_01_TABLE, @VIRTUAL06
	LDA @LOCAL01
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	STA @LOCAL01
	JSR GET_SECONDARY_MEMORY
	STA @VIRTUAL02
	LDA @LOCAL01
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	CMP @VIRTUAL02
	BCS @UNKNOWN0
	LDA #0
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR GET_SECONDARY_MEMORY
	STA @VIRTUAL02
	LDA @LOCAL01
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	CLC
	ADC @VIRTUAL02
	TAX
	DEX
	LDA __BSS_START__,X
	AND #$00FF
@UNKNOWN1:
	STORE_INT1632S @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
	END_C_FUNCTION
