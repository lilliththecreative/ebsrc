
CHOOSE_RANDOM: ;$C09F82
	LDA [$80],Y
	AND #$00FF
	STA $90
	INY
	STY $94
	TAY
	JSL RAND
	SEP #PROC_FLAGS::ACCUM8
	JSL DIVISION8S_DIVISOR_POSITIVE
	REP #PROC_FLAGS::ACCUM8
	TYA
	ASL
	ADC $94
	TAY
	LDA $90
	ASL
	ADC $94
	STA $94
	LDA [$80],Y
	RTL
