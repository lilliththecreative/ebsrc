
ENEMY_FLASHING_OFF: ;$EF0000
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E89D0)
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDA.LOWORD(UNKNOWN_7E89D2)
	BEQ @UNKNOWN0
	LDX .LOWORD(UNKNOWN_7E89D0)
	LDA .LOWORD(UNKNOWN_7EAD82),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(BATTLERS_TABLE)+74,X
	BRA @UNKNOWN1
@UNKNOWN0:
	.A16
	LDX .LOWORD(UNKNOWN_7E89D0)
	LDA .LOWORD(UNKNOWN_7EAD7A),X
	AND #$00FF
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(BATTLERS_TABLE)+74,X
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7EADA2)
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E89D0)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	RTS
