
UNKNOWN_C49C56:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
.IF .DEFINED(JPN)
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
.ELSE
	STACK_RESERVE_INT8
.ENDIF
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	CLC
	ADC UNKNOWN_7E3C16
	STA UNKNOWN_7E3C16
	STZ UNKNOWN_7E3C14
	LSR
	LSR
	LSR
.IF !.DEFINED(JPN)
	INC
.ENDIF
	CLC
	ADC UNKNOWN_7E9F2D
	STA UNKNOWN_7E9F2D
	CMP #32
	BCC @UNKNOWN0
	SEC
	SBC #32
	STA UNKNOWN_7E9F2D
@UNKNOWN0:
.IF .DEFINED(JPN)
	LDA UNKNOWN_7E3C16
	LSR
	LSR
	LSR
	STA @LOCAL01
	LDY #32 * 13
	JSL MULT16
	CLC
	ADC #.LOWORD(VWF_BUFFER)
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY #32 * 13
	LDA @LOCAL01
	STA @VIRTUAL02
	LDA #4
	SEC
	SBC @VIRTUAL02
	JSL MULT16
	TAX
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMCPY16
	LDA UNKNOWN_7E3C16
	LSR
	LSR
	LSR
	STA @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA @LOCAL00
	LDY #32 * 13
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01
	JSL MULT16
	TAX
	LDY #32 * 13
	LDA @LOCAL01
	STA @VIRTUAL02
	LDA #4
	SEC
	SBC @VIRTUAL02
	JSL MULT16
	CLC
	ADC #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
.ELSE
	JSL WAIT_DMA_FINISHED
	SEP #PROC_FLAGS::ACCUM8
	LDA #<-1
	STA @LOCAL00
	LDX #32 * 52
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
.ENDIF
	LDA UNKNOWN_7E3C16
	AND #$0007
	STA UNKNOWN_7E3C16
.IF !.DEFINED(JPN)
	STZ UNKNOWN_7E9F2F
	STZ UNKNOWN_7E9F31
.ENDIF
	END_C_FUNCTION
