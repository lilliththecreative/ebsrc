
;void ReloadMapAtPos(int x, int y)
RELOAD_MAP_AT_POSITION: ;$C012ED
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA .LOWORD(UNKNOWN_7E4380)
	STA .LOWORD(UNKNOWN_7E437C)
	STX .LOWORD(UNKNOWN_7E4382)
	STX .LOWORD(UNKNOWN_7E437E)
	LSR
	LSR
	LSR
	TAY
	STY $14
	TXA
	LSR
	LSR
	LSR
	STA $02
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E4370)
	STA .LOWORD(UNKNOWN_7E436E)
	LDA $02
	LSR
	LSR
	LSR
	LSR
	TAX
	TYA
	LSR
	LSR
	LSR
	LSR
	LSR
	JSR a:.LOWORD(LOAD_MAP_AT_SECTOR)
	LDY $14
	TYA
	SEC
	SBC #$0010
	STA $12
	LDA $02
	SEC
	SBC #$000E
	STA $10
	TYA
	SEC
	SBC #$0020
	STA $04
	LDA $02
	SEC
	SBC #$0020
	STA $02
	STA $0E
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(UNKNOWN_7E43C0),X
	STA .LOWORD(UNKNOWN_7E43B0),X
	STA .LOWORD(UNKNOWN_7E43A0),X
	STA .LOWORD(UNKNOWN_7E4390),X
	INX
@UNKNOWN1:
	CPX #$0010
	BCC @UNKNOWN0
	LDY #$0000
	STY $14
	BRA @UNKNOWN3
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA $02
	STY $02
	CLC
	ADC $02
	TAX
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C00AC5)
	LDY $14
	INY
	STY $14
@UNKNOWN3:
	CPY #$003C
	BCC @UNKNOWN2
	LDY #$0000
	STY $14
	BRA @UNKNOWN5
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	STA $02
	STY $02
	CLC
	ADC $02
	TAX
	LDA $04
	JSR a:.LOWORD(LOAD_COLLISION_ROW)
	LDY $14
	INY
	STY $14
@UNKNOWN5:
	CPY #$003C
	BCC @UNKNOWN4
	LDY #$FFFF
	STY $14
	BRA @UNKNOWN7
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	TYA
	CLC
	ADC $10
	TAX
	LDA $12
	JSR a:.LOWORD(UNKNOWN_C00E16)
	LDY $14
	INY
	STY $14
@UNKNOWN7:
	CPY #$001F
	BNE @UNKNOWN6
@UNKNOWN8:
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(UNKNOWN_7E0028)
	AND #$00FF
	BNE @UNKNOWN8
	LDA .LOWORD(UNKNOWN_7E4380)
	SEC
	SBC #$0080
	STA a:.LOWORD(BG2_X_POS)
	STA a:.LOWORD(BG1_X_POS)
	LDA .LOWORD(UNKNOWN_7E4382)
	SEC
	SBC #$0070
	STA a:.LOWORD(BG2_Y_POS)
	STA a:.LOWORD(BG1_Y_POS)
	LDA $12
	STA .LOWORD(UNKNOWN_7E4374)
	LDA $10
	STA .LOWORD(UNKNOWN_7E4376)
	PLD
	RTL
