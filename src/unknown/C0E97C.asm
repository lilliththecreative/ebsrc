
UNKNOWN_C0E97C: ;$C0E97C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $04
	ASL
	STA $02
	LDY $04
	LDX $02
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	TAX
	STX $0E
	LDX $02
	LDA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDX $0E
	JSL UNKNOWN_C05F33
	LDX $02
	STA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	LDY $04
	LDX #$FFFF
	STX $0E
	LDX $02
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	LDX $0E
	JSL UNKNOWN_C07A56
	PLD
	RTL
