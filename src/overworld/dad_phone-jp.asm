
DAD_PHONE: ;$C075DD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA .LOWORD(UNKNOWN_7E5E02)
	STA $04
	ASL
	ADC $04
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E5DEA),X
	STA $16
	TXA
	CLC
	ADC #.LOWORD(UNKNOWN_7E5DEC)
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA $16
	STA .LOWORD(UNKNOWN_7E5DC0)
	LDA .LOWORD(UNKNOWN_7E5E02)
	INC
	AND #$0003
	STA .LOWORD(UNKNOWN_7E5E02)
	LDA .LOWORD(UNKNOWN_7E5D58)
	AND #$FFFE
	STA .LOWORD(UNKNOWN_7E5D58)
	JSL UNKNOWN_C07C5B
	LDA $16
	CMP #$0002
	BEQ @UNKNOWN0
	CMP #$000A
	BEQ @UNKNOWN1
	CMP #$0000
	BEQ @UNKNOWN3
	CMP #$0008
	BEQ @UNKNOWN3
	CMP #$0009
	BEQ @UNKNOWN3
	BRA @UNKNOWN4
@UNKNOWN0:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C06BFF)
	BRA @UNKNOWN4
@UNKNOWN1:
	MOVE_INT $06, $0E
	JSL UNKNOWN_C10004
	LOADPTR TEXT_DAD_CALLS, $06
	LDA $06
	STA $02
	LDA $12
	STA $06
	LDA $14
	STA $08
	LDA $06
	CMP $02
	BNE @UNKNOWN4
	LDA #$0697
	STA .LOWORD(DAD_PHONE_TIMER)
	STZ .LOWORD(UNKNOWN_7E9E56)
	BRA @UNKNOWN4
@UNKNOWN3:
	MOVE_INT $06, $0E
	JSL UNKNOWN_C10004
@UNKNOWN4:
	LDX #$0000
	LDA .LOWORD(UNKNOWN_7E5E02)
	CMP .LOWORD(UNKNOWN_7E5E04)
	BEQ @UNKNOWN5
	LDX #$0001
@UNKNOWN5:
	STX .LOWORD(UNKNOWN_7E5D9A)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5DC0)
	PLD
	RTL
