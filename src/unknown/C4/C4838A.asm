
UNKNOWN_C4838A:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL0D
	STZ @LOCAL0C
	STZ @LOCAL0B
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL0A
	STZ UNKNOWN_7E9E25
	STZ UNKNOWN_7E9E23
	SEP #PROC_FLAGS::ACCUM8
	LDA #<-1
	STA @LOCAL00
.IF .DEFINED(PROTOTYPE19950327)
	LDX #512
.ELSE
	LDX #1024
.ENDIF
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
	LDA #4
	STA @VIRTUAL04
	PROMOTENEARPTR CHAR_STRUCT + char_struct::name, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL STRLEN
	TAY
	STY @LOCAL09
.IF .DEFINED(PROTOTYPE19950327)
	CPY #6
	BNE @UNKNOWN0
	DEY
.ELSE
	CPY #5
	BLTEQ @UNKNOWN0
	LDY #5
.ENDIF
	STY @LOCAL09
@UNKNOWN0:
	LDA #6
	STA @LOCAL08
	PROMOTENEARPTR CHAR_STRUCT + char_struct::name, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	STZ @LOCAL07
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX @LOCAL07
	LDA f:LUMINE_HALL_TEXT,X
	AND #$00FF
	TAX
	LDA @LOCAL0D
	JSL UNKNOWN_C4827B
	INC @LOCAL07
@UNKNOWN2:
	LDA @VIRTUAL04
	CLC
	SBC @LOCAL07
	BRANCHGTS @UNKNOWN1
	LDA #0
	STA @VIRTUAL04
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA [@VIRTUAL06]
	AND #$00FF
	TAX
	INC @VIRTUAL06
	LDA @LOCAL0D
	JSL UNKNOWN_C4827B
	INC @VIRTUAL04
@UNKNOWN6:
	LDY @LOCAL09
	TYA
	CLC
	SBC @VIRTUAL04
	BRANCHGTS @UNKNOWN5
	LDY #0
	STY @LOCAL06
	BRA @UNKNOWN10
@UNKNOWN9:
	TYX
	LDA f:LUMINE_HALL_TEXT+4,X
	AND #$00FF
	TAX
	LDA @LOCAL0D
	JSL UNKNOWN_C4827B
	LDY @LOCAL06
	INY
	STY @LOCAL06
@UNKNOWN10:
	STY @VIRTUAL04
	LDA @LOCAL08
	CLC
	SBC @VIRTUAL04
	BRANCHGTS @UNKNOWN9
	LDA UNKNOWN_7E9E23
	CLC
	ADC @LOCAL0B
	STA @LOCAL08
	LDY #0
	STY @LOCAL09
	TYX
	STX @LOCAL05
	JMP @UNKNOWN14
@UNKNOWN13:
	LOADPTR UNKNOWN_7F0000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	PROMOTENEARPTR VWF_BUFFER, @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDX @LOCAL05
	TXA
	CLC
	ADC #16
	TAX
	STX @LOCAL06
	LDA @VIRTUAL02
	CLC
	ADC #256
	MOVE_INTY @LOCAL04, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDX @LOCAL06
	TXA
	CLC
	ADC #16
	TAX
	STX @LOCAL05
	LDA @VIRTUAL02
	CLC
	ADC #16
	STA @VIRTUAL02
	STA @LOCAL0A
	LDY @LOCAL09
	INY
	STY @LOCAL09
@UNKNOWN14:
	LDA UNKNOWN_7E9E23
	LSR
	LSR
	LSR
	STA @LOCAL06
	STA @VIRTUAL04
	TYA
	CMP @VIRTUAL04
	BCCL @UNKNOWN13
	LDA #205
	STA @LOCAL0B
	PROMOTENEARPTR VWF_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL06
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #32
	JSL MEMCPY24
	STZ UNKNOWN_7E9E25
	LDY #8
	LDA UNKNOWN_7E9E23
	JSL MODULUS16
	STA UNKNOWN_7E9E23
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN25
@UNKNOWN16:
	LDA @LOCAL0C
	CLC
	SBC #16
	JUMPLTEQS @UNKNOWN24
	STZ @LOCAL0C
	LDA UNKNOWN_7E9E23
	CLC
	ADC @LOCAL08
	STA @LOCAL08
	LDY #0
	STY @LOCAL09
	TYX
	STX @LOCAL05
	JMP @UNKNOWN21
@UNKNOWN19:
	LOADPTR UNKNOWN_7F0000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	PROMOTENEARPTR VWF_BUFFER, @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL0A
	STA @VIRTUAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDX @LOCAL05
	TXA
	CLC
	ADC #16
	TAX
	STX @LOCAL05
	LDA @VIRTUAL02
	CLC
	ADC #256
	MOVE_INTY @LOCAL04, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDX @LOCAL05
	TXA
	CLC
	ADC #16
	TAX
	STX @LOCAL05
	LDA @VIRTUAL02
	CLC
	ADC #16
	STA @VIRTUAL02
	STA @LOCAL0A
	LDY #256
	LDA @VIRTUAL02
	JSL MODULUS16S
	CMP #0
	BNE @UNKNOWN20
	LDA @VIRTUAL02
	CLC
	ADC #256
	STA @VIRTUAL02
	STA @LOCAL0A
@UNKNOWN20:
	LDY @LOCAL09
	INY
	STY @LOCAL09
@UNKNOWN21:
	LDA UNKNOWN_7E9E23
	LSR
	LSR
	LSR
	STA @LOCAL07
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BCCL @UNKNOWN19
	LDY #8
	LDA UNKNOWN_7E9E23
	JSL MODULUS16
	CMP #0
	BEQ @UNKNOWN23
	PROMOTENEARPTR VWF_BUFFER, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL07
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #32
	JSL MEMCPY24
	SEP #PROC_FLAGS::ACCUM8
	LDA #<-1
	STA @LOCAL00
	LDX #480
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER) + 32
	JSL MEMSET16
	STZ UNKNOWN_7E9E25
	LDY #8
	LDA UNKNOWN_7E9E23
	JSL MODULUS16
	STA UNKNOWN_7E9E23
	BRA @UNKNOWN24
@UNKNOWN23:
	STZ UNKNOWN_7E9E23
	STZ UNKNOWN_7E9E25
	SEP #PROC_FLAGS::ACCUM8
	LDA #<-1
	STA @LOCAL00
	LDX #512
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(VWF_BUFFER)
	JSL MEMSET16
@UNKNOWN24:
	LDX @VIRTUAL04
	LDA f:LUMINE_HALL_TEXT+10,X
	AND #$00FF
	TAX
	LDA @LOCAL0D
	JSL UNKNOWN_C4827B
	INC @LOCAL0C
	INC @VIRTUAL04
@UNKNOWN25:
	LDA @LOCAL0B
	CLC
	SBC @VIRTUAL04
	JUMPGTS @UNKNOWN16
	LDA UNKNOWN_7E9E23
	CLC
	ADC @LOCAL08
	STA @VIRTUAL04
	LDY #0
	STY @LOCAL09
	TYX
	STX @LOCAL05
	JMP @UNKNOWN30
@UNKNOWN28:
	LOADPTR UNKNOWN_7F0000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	PROMOTENEARPTR VWF_BUFFER, @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL0A
	STA @VIRTUAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDX @LOCAL05
	TXA
	CLC
	ADC #16
	TAX
	STX @LOCAL02
	LDA @VIRTUAL02
	CLC
	ADC #256
	MOVE_INTY @LOCAL03, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	TXA
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	LDA #16
	JSL MEMCPY24
	LDX @LOCAL02
	TXA
	CLC
	ADC #16
	TAX
	STX @LOCAL05
	LDA @VIRTUAL02
	CLC
	ADC #16
	STA @VIRTUAL02
	STA @LOCAL0A
	LDY #256
	LDA @VIRTUAL02
	JSL MODULUS16S
	CMP #0
	BNE @UNKNOWN29
	LDA @VIRTUAL02
	CLC
	ADC #256
	STA @VIRTUAL02
	STA @LOCAL0A
@UNKNOWN29:
	LDY @LOCAL09
	INY
	STY @LOCAL09
@UNKNOWN30:
	LDA UNKNOWN_7E9E23
	LSR
	LSR
	LSR
.IF .DEFINED(PROTOTYPE19950327)
	STA @VIRTUAL02
	INC @VIRTUAL02
.ELSE
	CLC
	ADC #16
	STA @VIRTUAL02
.ENDIF
	TYA
	CMP @VIRTUAL02
	BCCL @UNKNOWN28
	LDA @VIRTUAL04
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN32
	ORA #$F000
@UNKNOWN32:
	ASL
	ASL
	END_C_FUNCTION
