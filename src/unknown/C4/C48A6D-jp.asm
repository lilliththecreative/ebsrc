
UNKNOWN_C48A6D:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	STA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	STA @LOCAL01
	LSR
	ASL
	ASL
	ASL
	ASL
	STORE_INT1632 @VIRTUAL06
	CLC
	VAR_ADD_CONST_INT_ASSIGN BUFFER + $2000, @VIRTUAL06
	LDA @LOCAL01
	AND #$0001
	BEQ @UNKNOWN1
	LDA #$2000
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
@UNKNOWN1:
	LOADPTR BUFFER+2, @VIRTUAL0A
	LDY #0
	BRA @UNKNOWN5
@UNKNOWN2:
	LDX #0
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDA #16
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	INX
@UNKNOWN4:
	CPX #30
	BCC @UNKNOWN3
	LDA #478
	EOR #$FFFF
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	INY
@UNKNOWN5:
	CPY #8
	BCC @UNKNOWN2
	LOADPTR BUFFER, @LOCAL00
	LDX #588
	LDA #808
	JSL UNKNOWN_C3F705
	LDA @VIRTUAL02
	ASL
	TAY
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR1_TABLE)
	TAX
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	LDX #0
	CMP ENTITY_SCRIPT_VAR0_TABLE,Y
	BLTEQ @UNKNOWN6
	LDX #1
@UNKNOWN6:
	TXA
	END_C_FUNCTION
