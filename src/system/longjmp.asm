
LONGJMP:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	TAY
	PEA $0000
	PLB
	PLB
	LDA __BSS_START__+7,Y
	TCS
	LDA __BSS_START__+5,Y
	TCD
	LDA __BSS_START__+3,Y
	PHA
	PLP
	PLP
	LDA __BSS_START__,Y
	STA $01,S
	LDA __BSS_START__+2,Y
	STA $03,S
	PLB
	TXA
	RTL
