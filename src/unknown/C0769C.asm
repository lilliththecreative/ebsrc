
UNKNOWN_C0769C: ;$C0769C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(GAME_STATE)+75
	REP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	TAX
	LDA #$0008
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$001D
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	PLD
	RTL
