
MOVEMENT_CODE_10:
	LDX $8A
	LDA ENTITY_TEMPVARS,X
	STA $90
	LDA [$80],Y
	AND #$00FF
	INY
	STY $94
	CMP $90
	BCC MOVEMENT_CODE_10_UNKNOWN0
	BNE MOVEMENT_CODE_10_UNKNOWN1
MOVEMENT_CODE_10_UNKNOWN0:
	ASL
	ADC $94
	TAY
	RTS
MOVEMENT_CODE_10_UNKNOWN1:
	LDA $90
	ASL
	CLC
	ADC $94
	TAY
	LDA [$80],Y
	TAY
	RTS
