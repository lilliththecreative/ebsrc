
UNKNOWN_C47930:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @LOCAL05
	TXY
	STA @VIRTUAL04
	LDX @PARAM03
	STX @VIRTUAL02
	LDA RECTANGLE_WINDOW_BUFFER_INDEX
	AND #$0001
	BEQ @UNKNOWN0
	LDA #0
	STA @LOCAL04
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #766
	STA @LOCAL04
@UNKNOWN1:
	LOADPTR BUFFER, @VIRTUAL06
	LDA @LOCAL04
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDX #224
	TYA
	JSR UNKNOWN_C47866
	STA @LOCAL03
	LDX #224
	LDA @VIRTUAL02
	JSR UNKNOWN_C47866
	STA @LOCAL02
	LDX #256
	LDA @VIRTUAL04
	JSR UNKNOWN_C47866
	STA @VIRTUAL04
	LDX #256
	LDA @LOCAL05
	JSR UNKNOWN_C47866
	STA @VIRTUAL02
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY #127
	LDX #128
	LDA @LOCAL03
	JSR UNKNOWN_C4789E
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY @VIRTUAL02
	LDX @VIRTUAL04
	LDA @LOCAL02
	SEC
	SBC @LOCAL03
	JSR UNKNOWN_C4789E
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY #127
	LDX #128
	LDA #224
	SEC
	SBC @LOCAL02
	DEC
	JSR UNKNOWN_C4789E
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA [@VIRTUAL06]
	LDX @LOCAL01
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01+2
	JSL UNKNOWN_C4245D
	INC RECTANGLE_WINDOW_BUFFER_INDEX
	END_C_FUNCTION
