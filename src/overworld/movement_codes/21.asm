
MOVEMENT_CODE_21: ;$C09BB4
	LDA [$80],Y
	AND #$00FF
	ASL
	TAX
	LDA f:UNKNOWN_C09AF9,X
	ADC $88
	TAX
	LDA a:.LOWORD(RAM),X
	LDX $8A
	STA .LOWORD(UNKNOWN_30X2_TABLE_20),X
	INY
	RTS