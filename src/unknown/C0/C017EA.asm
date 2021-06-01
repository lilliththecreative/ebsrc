
UNKNOWN_C017EA: ;$C017EA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	TYA
	STA $10
	LDX a:.LOWORD(PAD_1_STATE)
	LDA a:.LOWORD(PAD_1_PRESS)
	STA $02
	AND #$1000
	BEQ @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E4384)
	EOR #$0001
	STA .LOWORD(UNKNOWN_7E4384)
@UNKNOWN0:
	TXA
	AND #PAD::DOWN
	BEQ @UNKNOWN1
	LDY #$0001
	BRA @UNKNOWN2
@UNKNOWN1:
	TXA
	AND #PAD::UP
	BEQ @UNKNOWN2
	LDY #$FFFF
@UNKNOWN2:
	TXA
	AND #PAD::LEFT
	BEQ @UNKNOWN3
	LDA #$FFFF
	STA $10
	BRA @UNKNOWN4
@UNKNOWN3:
	TXA
	AND #PAD::RIGHT
	BEQ @UNKNOWN4
	LDA #$0001
	STA $10
@UNKNOWN4:
	TXA
	AND #$0020
	BEQ @UNKNOWN5
	LDA $10
	ASL
	ASL
	STA $10
	TYA
	ASL
	ASL
	TAY
@UNKNOWN5:
	TXA
	AND #$0010
	BEQ @UNKNOWN6
	LDA $10
	ASL
	STA $10
	TYA
	ASL
	TAY
@UNKNOWN6:
	TXA
	AND #$0040
	BEQ @UNKNOWN7
	LDA $10
	ASL
	STA $10
	TYA
	ASL
	TAY
@UNKNOWN7:
	TXA
	AND #$4000
	BNE @UNKNOWN8
	LDA $0E
	STA $04
	AND #$0080
	BEQ @UNKNOWN8
	LDY #$0000
	TYA
	STA $10
@UNKNOWN8:
	LDA $10
	CLC
	ADC .LOWORD(UNKNOWN_7E4380)
	TAX
	STX .LOWORD(UNKNOWN_7E4380)
	TYA
	CLC
	ADC .LOWORD(UNKNOWN_7E4382)
	STA $10
	STA .LOWORD(UNKNOWN_7E4382)
	CPX .LOWORD(UNKNOWN_7E437C)
	BNE @UNKNOWN9
	CMP .LOWORD(UNKNOWN_7E437E)
	BEQ @UNKNOWN10
@UNKNOWN9:
	LDA .LOWORD(UNKNOWN_7E4382)
	SEC
	SBC #$0070
	TAX
	LDA .LOWORD(UNKNOWN_7E4380)
	SEC
	SBC #$0080
	JSR a:.LOWORD(UNKNOWN_C01558)
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA $02
	AND #$0080
	BEQ @UNKNOWN11
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E4370)
	STA .LOWORD(UNKNOWN_7E436E)
	TXA
	AND #$FFF8
	STA .LOWORD(UNKNOWN_7E4380)
	LDA $10
	AND #$FFF8
	STA .LOWORD(UNKNOWN_7E4382)
	JSL UNKNOWN_C08726
	LDA .LOWORD(UNKNOWN_7E4382)
	LSR
	LSR
	LSR
	TAX
	LDA .LOWORD(UNKNOWN_7E4380)
	LSR
	LSR
	LSR
	JSL UNKNOWN_C013F6
	JSL UNKNOWN_C08744
@UNKNOWN11:
	LDA .LOWORD(UNKNOWN_7E4380)
	STA .LOWORD(UNKNOWN_7E437C)
	LDA .LOWORD(UNKNOWN_7E4382)
	STA .LOWORD(UNKNOWN_7E437E)
	PLD
	RTL
