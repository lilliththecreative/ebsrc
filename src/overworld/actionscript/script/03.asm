
MOVEMENT_CODE_03:
	LDA [$80],Y
	TAX
	INY
	INY
	LDA [$80],Y
	STA $82
	TXY
	RTS
