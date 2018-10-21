
CC_1F_63: ;$C16DE8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	TXA
	STA $12
	LDA #$0003
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_63)
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0018
	LDA $12
	STA $06
	STZ $08
	JSL ASL32_ENTRY2
	LDA $08
	PHA
	LDA $06
	PHA
	LDY #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	LDA $08
	PHA
	LDA $06
	PHA
	LDY #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	LDA $06
	STA $0A
	LDA $08
	STA $0C
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	PLA
	STA $0A
	PLA
	STA $0C
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	PLA
	STA $0A
	PLA
	STA $0C
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	LDA #$00FF
	JSL UNKNOWN_C46594
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #$000A
	JSL UNKNOWN_C064E3
	LDA #NULL
@UNKNOWN3:
	PLD
	RTS
