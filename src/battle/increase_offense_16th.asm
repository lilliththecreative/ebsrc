
INCREASE_OFFENSE_16TH:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;NEAR battler* target
	END_STACK_VARS
	STA @VIRTUAL02
	CLC
	ADC #battler::offense
	TAY
	LDA __BSS_START__,Y
	LSR
	LSR
	LSR
	LSR
	BEQ @UNKNOWN0
	TAX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #1
@UNKNOWN1:
	STX @VIRTUAL04
	LDA __BSS_START__,Y
	CLC
	ADC @VIRTUAL04
	STA __BSS_START__,Y
	LDA @VIRTUAL02
	CLC
	ADC #battler::offense
	TAX
	STX @LOCAL01
	LDX @VIRTUAL02
	LDA a:battler::base_offense,X
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, 5
	LSR
	LSR
	STA @LOCAL00
	STA @VIRTUAL02
	LDX @LOCAL01
	LDA __BSS_START__,X
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN2
	LDA @LOCAL00
	STA __BSS_START__,X
@UNKNOWN2:
	END_C_FUNCTION
