
CC_1F_EA: ;$C16C83
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	TXA
	STA $0E
	LDA .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BNE @UNKNOWN0
	LDA $0E
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_EA)
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	LDA $0E
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	JSL UNKNOWN_C46616
	LDA #NULL
@UNKNOWN1:
	PLD
	RTS
