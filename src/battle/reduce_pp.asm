
REDUCE_PP:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	TAY
	LDA a:battler::pp_target,Y
	STA @LOCAL00
	STA @VIRTUAL04
	LDA @VIRTUAL02
	CMP @VIRTUAL04
	BLTEQ @UNKNOWN0
	LDA #0
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @LOCAL00
	SEC
	SBC @VIRTUAL02
@UNKNOWN1:
	TAX
	TYA
	JSR SET_PP
	END_C_FUNCTION
