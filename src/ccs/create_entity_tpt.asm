
CC_1F_17: ;$C16509
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TXY
	STY $10
	LDA #$0004
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_17)
	BRA @UNKNOWN3
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	STA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0008
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+3
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	AND #$00FF
	ORA $02
	REP #PROC_FLAGS::INDEX8
	TAX
	LDA $0E
	JSL UNKNOWN_C464B5
	LDY $10
	TYX
	JSL UNKNOWN_C4C91A
	LDA #NULL
@UNKNOWN3:
	PLD
	RTS
