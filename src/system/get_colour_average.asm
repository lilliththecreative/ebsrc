
GET_COLOUR_AVERAGE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;NEAR unsigned int* palette
	END_STACK_VARS
	STA @LOCAL05
	STZ @LOCAL04
	STZ @LOCAL03
	LDA #0
	STA @VIRTUAL04
	TAY
	STY @LOCAL02
	LDA @LOCAL05
	DEC
	DEC
	STA @VIRTUAL02
	STA @LOCAL01
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA @LOCAL01
	STA @VIRTUAL02
	INC @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL01
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	STA @LOCAL05
	AND #$7FFF
	BEQ @UNKNOWN1
	LDA @LOCAL05
	AND #BGR555::RED
	STA @VIRTUAL02
	LDA @VIRTUAL04
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL04
	LDA @LOCAL05
	AND #BGR555::GREEN
	LSR
	LSR
	LSR
	LSR
	LSR
	CLC
	ADC @LOCAL03
	STA @LOCAL03
	LDA @LOCAL05
	AND #BGR555::BLUE
	XBA
	AND #$00FF
	LSR
	LSR
	CLC
	ADC @LOCAL04
	STA @LOCAL04
	INY
	STY @LOCAL02
@UNKNOWN1:
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN2:
	CPX #96
	BCC @UNKNOWN0
	LDA @VIRTUAL04
	ASL
	ASL
	ASL
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA UNKNOWN_7E43D0
	LDY @LOCAL02
	LDA @LOCAL03
	ASL
	ASL
	ASL
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA UNKNOWN_7E43D2
	LDY @LOCAL02
	LDA @LOCAL04
	ASL
	ASL
	ASL
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA UNKNOWN_7E43D4
	END_C_FUNCTION
