
UNKNOWN_C0255C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL04
	LDA #$8000
	STA @LOCAL03
	LDA UNKNOWN_7E4A58
	BEQ @UNKNOWN3
	LDY @LOCAL02
	CPY #$8000
	BCS @UNKNOWN3
	TXA
	LSR
	LSR
	LSR
	LSR
	LSR
	STA @LOCAL01
	LDA @VIRTUAL04
	DEC
	DEC
	STA @VIRTUAL02
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA @LOCAL00
	STA @VIRTUAL02
	CMP #$8000
	BCS @UNKNOWN1
	LDA @VIRTUAL02
	LSR
	LSR
	LSR
	LSR
	LSR
	TAY
	STY @LOCAL02
	LDA @LOCAL03
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BEQ @UNKNOWN1
	LDX @LOCAL01
	TYA
	JSL UNKNOWN_C0222B
	LDY @LOCAL02
	TYA
	STA @LOCAL03
@UNKNOWN1:
	LDA @LOCAL00
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL00
@UNKNOWN2:
	LDA @VIRTUAL04
	CLC
	ADC #36
	PHA
	LDA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CMP @VIRTUAL02
	BNE @UNKNOWN0
@UNKNOWN3:
	END_C_FUNCTION
