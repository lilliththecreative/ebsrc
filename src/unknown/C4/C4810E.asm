
<<<<<<< HEAD
UNKNOWN_C4810E:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_RETURN_INT32
	END_STACK_VARS
	STA @LOCAL03
	MOVE_INT @PARAM01, @VIRTUAL0A
	LOADPTR BUFFER, @VIRTUAL06
	LDA @LOCAL03
=======
UNKNOWN_C4810E: ;$C4810E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 21
	STA $13
	MOVE_INT $23, $0A
	LOADPTR UNKNOWN_7F0000, $06
	LDA $13
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$000F
	STA $02
	LDA $13
	AND #$FFF0
	ASL
	CLC
	ADC $02
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	LDY #$0006
	STY $13
	JMP @UNKNOWN7
@UNKNOWN0:
	LDX #$0000
	STX $11
	BRA @UNKNOWN2
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA $10
	STA $00
	LDY #$0001
	LDA [$06],Y
	STA $01
	LDA $10
	EOR $01
	AND $00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$06],Y
	STA $00
	LDY #$0003
	LDA [$06],Y
	STA $01
	LDA $00
	EOR $01
	AND $00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	LDY $13
	SEP #PROC_FLAGS::INDEX8
	STY $00
	LDA $02
	JSL ASR8_UNKNOWN1
	AND #$0003
	ASL
	ASL
	STA $02
	LDY $00
	LDA $0E
	JSL ASR8_UNKNOWN1
	AND #$0003
	CLC
	ADC $02
	STA [$0A]
	INC $0A
	INC $0A
	LDA #$0004
	CLC
	ADC $06
	STA $06
	REP #PROC_FLAGS::INDEX8
	LDX $11
	INX
	STX $11
@UNKNOWN2:
	CPX #$0004
	BCCL @UNKNOWN1
	LDA #$00F0
	CLC
	ADC $06
	STA $06
	LDX #$0000
	STX $11
	BRA @UNKNOWN5
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA $10
	STA $00
	LDY #$0001
	LDA [$06],Y
	STA $01
	LDA $10
	EOR $01
	AND $00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$06],Y
	STA $00
	LDY #$0003
	LDA [$06],Y
	STA $01
	LDA $00
	EOR $01
	AND $00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $02
	LDY $13
	SEP #PROC_FLAGS::INDEX8
	STY $00
	LDA $02
	JSL ASR8_UNKNOWN1
	AND #$0003
	ASL
	ASL
	STA $02
	LDY $00
	LDA $0E
	JSL ASR8_UNKNOWN1
	AND #$0003
	CLC
	ADC $02
	STA [$0A]
	INC $0A
	INC $0A
	LDA #$0004
	CLC
	ADC $06
	STA $06
	REP #PROC_FLAGS::INDEX8
	LDX $11
	INX
	STX $11
@UNKNOWN5:
	CPX #$0004
	BCCL @UNKNOWN4
	LDA #$0110
	EOR #$FFFF
	INC
	CLC
	ADC $06
	STA $06
	LDY $13
	DEY
	DEY
	STY $13
@UNKNOWN7:
	CPY #$0007
	BCCL @UNKNOWN0
	MOVE_INT $0A, $1B
	PLD
	RTL
