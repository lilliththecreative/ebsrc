
UNKNOWN_C09F3B: ;$C09F3B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E1A44)
UNKNOWN_C09F3B_ENTRY2: ;$C09F43
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	PHA
	LDX #$0000
@UNKNOWN0:
	LDA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	STA .LOWORD(UNKNOWN_7E284C),X
	INX
	INX
	CPX #$003C
	BNE @UNKNOWN0
	PLA
	LDX .LOWORD(UNKNOWN_7E0A50)
	BMI @UNKNOWN3
@UNKNOWN1:
	CPX .LOWORD(UNKNOWN_7E1A44)
	BEQ @UNKNOWN2
	LDA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA .LOWORD(ENTITY_TICK_CALLBACK_HIGH),X
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	TAX
	BPL @UNKNOWN1
@UNKNOWN3:
	RTL
