
UNKNOWN_C05639:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAY
	TXA
	ASL
	TAX
	LDA f:UNKNOWN_C42AC9,X
	STA @LOCAL03
	LDA UNKNOWN_7E5DA4
	STA @LOCAL02
	LDA UNKNOWN_7E5DAC
	LSR
	LSR
	LSR
	STA @VIRTUAL04
	AND #$003F
	STA @VIRTUAL02
	TYA
	LSR
	LSR
	LSR
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	TAX
	LDA UNKNOWN_7EE000,X
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL02
	ORA @VIRTUAL02
	STA @VIRTUAL02
	STA @LOCAL01
	TYA
	CLC
	ADC #7
	LSR
	LSR
	LSR
	TAX
	STX @LOCAL02
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @VIRTUAL04
	AND #$003F
	STA @VIRTUAL02
	TXA
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	TAX
	LDA UNKNOWN_7EE000,X
	AND #$00FF
	PHA
	LDA @LOCAL01
	STA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	ORA @VIRTUAL02
	STA @VIRTUAL02
	STA @LOCAL01
	LDX @LOCAL02
	INX
	STX @LOCAL02
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	CMP @LOCAL03
	BCC @UNKNOWN0
	LDA @VIRTUAL02
	STA UNKNOWN_7E5DA4
	END_C_FUNCTION
