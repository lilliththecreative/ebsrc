
UNKNOWN_C4A228: ;$C4A228
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	TAY
	LDX #$0000
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA FRONT_ROW_BATTLERS,X
	AND #$00FF
	CMP @VIRTUAL02
	BNE @UNKNOWN1
	TXA
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA __BSS_START__+10,Y
	BRA @UNKNOWN6
@UNKNOWN1:
	INX
@UNKNOWN2:
	CPX NUM_BATTLERS_IN_FRONT_ROW
	BCC @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN5
@UNKNOWN3:
	.A16
	LDA BACK_ROW_BATTLERS,X
	AND #$00FF
	CMP @VIRTUAL02
	BNE @UNKNOWN4
	TXA
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC NUM_BATTLERS_IN_FRONT_ROW
	INC
	STA __BSS_START__+10,Y
	BRA @UNKNOWN6
@UNKNOWN4:
	INX
@UNKNOWN5:
	CPX NUM_BATTLERS_IN_BACK_ROW
	BCC @UNKNOWN3
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
