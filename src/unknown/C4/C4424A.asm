
UNKNOWN_C4424A:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	CMP #112
	BNE @UNKNOWN0
	LDX UNKNOWN_7E9662
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E1B86,X
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDX UNKNOWN_7E9662
	STA UNKNOWN_7E1B86,X
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	SEC
	SBC #$50
	AND #$007F
	STA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDX UNKNOWN_7E9662
	STA UNKNOWN_7E1B56,X
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT FONT_PTR_TABLE, @VIRTUAL06
	LDA @LOCAL00
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC UNKNOWN_7E5E6D
	LDX UNKNOWN_7E9662
	STA UNKNOWN_7E1B6E,X
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
