
UNKNOWN_C4E583:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @LOCAL09
	STX @LOCAL08
	STA @VIRTUAL02
	LOADPTR FONT_PTR_TABLE, @LOCAL07
	STZ UNKNOWN_7E9E25
	STZ UNKNOWN_7E9E23
	SEP #PROC_FLAGS::ACCUM8
	LDA #<-1
	STA @LOCAL00
	LDX #32 * 26
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
	STZ UNKNOWN_7E9652 + 2
	STZ UNKNOWN_7E9652
	LDA @VIRTUAL02
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX @LOCAL08
	LDA #.LOWORD(-1)
	JSL UNKNOWN_C1FF99
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN3
@UNKNOWN0:
	AND #$00FF
	SEC
	SBC #$50
	AND #$007F
	STA @LOCAL06
	MOVE_INT @LOCAL07, @VIRTUAL06
	LDY #4
	LDA [@VIRTUAL06],Y
	PHA
	INY
	INY
	LDA [@VIRTUAL06],Y
	STA @VIRTUAL0A+2
	PLA
	STA @VIRTUAL0A
	LDA @LOCAL06
	PHA
	LDY #8
	LDA [@LOCAL07],Y
	PLY
	JSL MULT16
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	MOVE_INT @LOCAL07, @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	LDA @LOCAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	CLC
	ADC UNKNOWN_7E5E6D
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	STY @LOCAL05
	CPY #8
	BLTEQ @UNKNOWN2
@UNKNOWN1:
	MOVE_INT @LOCAL07, @VIRTUAL06
	LDA #10
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL04
	LDA @VIRTUAL06+2
	STA @LOCAL04+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL04, @VIRTUAL06
	LDA [@VIRTUAL06]
	TAX
	TYA
	JSL UNKNOWN_C44B3A
	LDY @LOCAL05
	TYA
	SEC
	SBC #8
	TAY
	STY @LOCAL05
	LDA [@VIRTUAL06]
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	CPY #8
	BGT @UNKNOWN1
@UNKNOWN2:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDY #10
	LDA [@LOCAL07],Y
	TAX
	LDY @LOCAL05
	TYA
	JSL UNKNOWN_C44B3A
	INC @VIRTUAL02
	INC @VIRTUAL04
@UNKNOWN3:
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	AND #$00FF
	BNEL @UNKNOWN0
	LDA @LOCAL09
	ASL
	ASL
	ASL
	STA @VIRTUAL04
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL03
	JMP @UNKNOWN6
@UNKNOWN5:
	LDA @LOCAL09
	AND #$000F
	STA @VIRTUAL02
	LDA @LOCAL09
	AND #$03F0
	ASL
	CLC
	ADC @VIRTUAL02
	ASL
	ASL
	ASL
	ASL
	TAY
	STY @LOCAL02
	LOADPTR UNKNOWN_7F0000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	LDA @LOCAL03
	STA @VIRTUAL02
	ASL
	ASL
	ASL
	ASL
	ASL
	TAX
	STX @LOCAL06
	TYA
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	CLC
	ADC #.LOWORD(VWF_BUFFER)
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #16
	JSL MEMCPY24
	LDY @LOCAL02
	TYA
	CLC
	ADC #256
	MOVE_INTX @LOCAL04, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX @LOCAL06
	TXA
	CLC
	ADC #.LOWORD(VWF_BUFFER) + 16
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #16
	JSL MEMCPY24
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL03
	LDA @VIRTUAL04
	CLC
	ADC #8
	STA @VIRTUAL04
	INC @LOCAL09
@UNKNOWN6:
	LDA @VIRTUAL02
	CMP @LOCAL08
	BCCL @UNKNOWN5
	END_C_FUNCTION
