
MOVEMENT_DATA_READ8:
	LDA [$80],Y
	INY
	AND #$00FF
	RTL
