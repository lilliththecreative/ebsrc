
NULL_C4E366: ;$C4E366
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	JSL $C4B0A9
	LDX #$0000
	STX $0E
@UNKNOWN0:
	STZ a:$0033
	STZ a:$0031
	JSL $C08B17
	JSL $C0874C
	LDA a:$0065
	AND #$0010
	BNE @UNKNOWN0
	LDX $0E
	TXA
	JSL $C4B4E8
	JSL $C4B0E1
	LDX $0E
	INX
	STX $0E
	CPX #$0008
	BNE @UNKNOWN0
	LDX #$0000
	STX $0E
	BRA @UNKNOWN0