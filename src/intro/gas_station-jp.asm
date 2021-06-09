
GAS_STATION: ;$C0F33C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 19
	JSL UNKNOWN_C0927C
	JSR a:.LOWORD(GAS_STATION_LOAD)
	LDX #$000B
	LDA #$0001
	JSL UNKNOWN_C0886C
	JSR a:.LOWORD(UNKNOWN_C0F21E)
	TAY
	STY $11
	BEQ @UNKNOWN0
	LDA #$0001
	BRA @UNKNOWN5
@UNKNOWN0:
	LDX #$0000
	STX $0F
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA a:.LOWORD(PAD_1_PRESS)
	BEQ @UNKNOWN2
	LDA #$0001
	BRA @UNKNOWN5
@UNKNOWN2:
	JSL UNKNOWN_C426ED
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX $0F
	INX
	STX $0F
@UNKNOWN3:
	CPX #$014A
	BCC @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(TM_MIRROR)
	LDA #$00
	STA $0E
	LDX #$0200
	REP #PROC_FLAGS::ACCUM8
	LDA #$0200
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E0030)
	LDY $11
	BNE @UNKNOWN4
	REP #PROC_FLAGS::ACCUM8
	LDA #$001E
	JSR a:.LOWORD(UNKNOWN_C0EFE1)
@UNKNOWN4:
	LDY $11
	REP #PROC_FLAGS::ACCUM8
	TYA
@UNKNOWN5:
	PLD
	RTL
