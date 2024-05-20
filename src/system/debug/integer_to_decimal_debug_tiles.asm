
INTEGER_TO_DECIMAL_DEBUG_TILES:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int value
	STACK_RESERVE_RETURN_INT16 ;NEAR int*
	END_STACK_VARS
	STA @VIRTUAL04
	STA @LOCAL04
	LDY #1
	STY @LOCAL03
	LDA #8
	JSL SBRK
	STA @VIRTUAL02
	STA @LOCAL02
	LDX #3
	STX @LOCAL01
	BRA @UNKNOWN3
@UNKNOWN0:
	LDY @LOCAL03
	LDA @LOCAL04
	STA @VIRTUAL04
	JSL DIVISION16S_DIVISOR_POSITIVE
	LDY #10
	JSL MODULUS16
	CMP #10
	BCC @UNKNOWN1
	CLC
	ADC #7
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN1:
	STA @LOCAL00
@UNKNOWN2:
	TXA
	ASL
	PHA
	LDA @LOCAL02
	STA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAX
	LDA @LOCAL00
	CLC
	ADC #$2030 ;0 tile, priority
	STA __BSS_START__,X
	LDY @LOCAL03
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 10
	TAY
	STY @LOCAL03
	LDX @LOCAL01
	DEX
	STX @LOCAL01
@UNKNOWN3:
	CPX #.LOWORD(-1)
	BNE @UNKNOWN0
	LDA @LOCAL02
	STA @VIRTUAL02
	END_C_FUNCTION
