
SETJMP: ;$C08F42
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	TAY
	PHB
	PEA $0000
	PLB
	PLB
	LDA $01,S
	STA a:.LOWORD(RAM),Y
	LDA $03,S
	STA a:.LOWORD(RAM)+2,Y
	PHP
	PHP
	PLA
	STA a:.LOWORD(RAM)+4,Y
	TDC
	STA a:.LOWORD(RAM)+5,Y
	TSC
	STA a:.LOWORD(RAM)+7,Y
	PLB
	LDA #$0000
	RTL