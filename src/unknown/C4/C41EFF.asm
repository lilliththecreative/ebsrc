
UNKNOWN_C41EFF: ;$C41EFF
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0010
	TCD
	PLA
	STA $00
	STX $02
	STY $04
	LDA $1E
	STA $06
	LDA $00
	SEC
	SBC $04
	PHA
	BPL @UNKNOWN0
	EOR #$FFFF
	INC
@UNKNOWN0:
	TAY
	LDA $02
	SEC
	SBC $06
	PHA
	BPL @UNKNOWN1
	EOR #$FFFF
	INC
@UNKNOWN1:
	STA $0C
	TYA
@UNKNOWN2:
	CMP #$0100
	BCC @UNKNOWN3
	LSR
	LSR $0C
	BRA @UNKNOWN2
@UNKNOWN3:
	STA $0A
	PLA
	BEQ @UNKNOWN4
	BPL @UNKNOWN5
	LDA #$0000
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA #$0008
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA #$0002
@UNKNOWN6:
	PLX
	BEQ @UNKNOWN7
	BPL @UNKNOWN8
	BRA @UNKNOWN9
@UNKNOWN7:
	ORA #$0004
	BRA @UNKNOWN10
@UNKNOWN8:
	ORA #$0001
@UNKNOWN9:
	BIT #$000C
	BEQ @UNKNOWN10
	ASL
	TAX
	LDA f:UNKNOWN_C41FC5,X
	STA $0E
	JMP @UNKNOWN16
@UNKNOWN10:
	STA $0E
	ASL
	STA $08
	LDA $0C
	XBA
	BIT #$00FF
	BEQ @UNKNOWN11
	LDA #$FFFF
@UNKNOWN11:
	.A16
	STA f:WRDIVL
	LDA $0A
	SEP #PROC_FLAGS::ACCUM8
	STA f:WRDIVB
	REP #PROC_FLAGS::ACCUM8
	NOP
	NOP
	NOP
	NOP
	NOP
	LDA f:RDDIVL
	LDX #$0000
@UNKNOWN12:
	.I16
	CMP f:UNKNOWN_C41FDF,X
	BCC @UNKNOWN13
	INX
	INX
	CPX #$0020
	BCC @UNKNOWN12
@UNKNOWN13:
	LDA $0E
	BEQ @UNKNOWN14
	EOR #$0003
	BEQ @UNKNOWN14
	STX $0E
	LDA #$0020
	SEC
	SBC $0E
	BRA @UNKNOWN15
@UNKNOWN14:
	TXA
@UNKNOWN15:
	ASL
	XBA
	LDX $08
	CLC
	ADC f:UNKNOWN_C41FC5,X
@UNKNOWN16:
	PLD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
