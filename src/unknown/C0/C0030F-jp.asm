
UNKNOWN_C0030F: ;$C0030F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA .LOWORD(UNKNOWN_7E445C)
	DEC
	STA .LOWORD(UNKNOWN_7E445C)
	BNE @UNKNOWN1
	LDX #.LOWORD(UNKNOWN_7E445E)
	STX $0E
	LDA a:.LOWORD(RAM),X
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E445C)
	TAX
	LDA a:$0004,X
	BNE @UNKNOWN0
	LDA #$0000
	LDX $0E
	STA a:.LOWORD(RAM),X
@UNKNOWN0:
	LDX #.LOWORD(UNKNOWN_7E445E)
	STX $0E
	LDA a:.LOWORD(RAM),X
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E445C)
	TAX
	LDA a:$0004,X
	STA .LOWORD(UNKNOWN_7E445C)
	LDX $0E
	LDA a:.LOWORD(RAM),X
	JSL UNKNOWN_C0A1F2
	LDX $0E
	LDA a:.LOWORD(RAM),X
	INC
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	PLD
	RTL
