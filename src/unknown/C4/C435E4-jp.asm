
UNKNOWN_C435E4: ;$C435E4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA .LOWORD(UNKNOWN_7E89CE)
	CMP #$FFFF
	BEQ @UNKNOWN6
	LDA .LOWORD(UNKNOWN_7E89CE)
	BEQ @UNKNOWN0
	LDX .LOWORD(UNKNOWN_7EAD58)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX .LOWORD(UNKNOWN_7EAD56)
@UNKNOWN1:
	STX $02
	LDX #$0000
	STX $0E
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E89CE)
	BEQ @UNKNOWN3
	LDA .LOWORD(UNKNOWN_7EAD82),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(BATTLERS_TABLE)+74,X
	BRA @UNKNOWN4
@UNKNOWN3:
	.A16
	LDA .LOWORD(UNKNOWN_7EAD7A),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(BATTLERS_TABLE)+74,X
@UNKNOWN4:
	LDX $0E
	INX
	STX $0E
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	TXA
	CMP $02
	BCC @UNKNOWN2
	STZ .LOWORD(UNKNOWN_7EADA2)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E89CE)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS