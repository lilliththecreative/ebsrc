
MOVEMENT_CODE_04:
	LDA [$80],Y
	STA $8C
	INY
	INY
	LDA [$80],Y
	STA $8E
	INY
	TYA
	LDX $8A
	LDY UNKNOWN_7E12E6,X
	STA ($84),Y
	INY
	INY
	LDA $82
	STA ($84),Y
	INY
	TYA
	STA UNKNOWN_7E12E6,X
	LDA $8E
	STA $82
	LDY $8C
	RTS
