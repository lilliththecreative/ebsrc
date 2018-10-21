
CC_1F_F2: ;$C16F2F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TXA
	STA $10
	LDA #$0003
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $10
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_F2)
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
	REP #PROC_FLAGS::INDEX8
	TAY
	STY $0E
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA $10
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	AND #$00FF
	ORA $02
	REP #PROC_FLAGS::INDEX8
	TAX
	LDY $0E
	TYA
	JSL UNKNOWN_C461CC
	LDA #NULL
@UNKNOWN3:
	PLD
	RTS
