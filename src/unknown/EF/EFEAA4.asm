
UNKNOWN_EFEAA4:
	SEP #PROC_FLAGS::ACCUM8
	LDA INIDISP_MIRROR
	PHA
	LDA #$0080
	STA INIDISP_MIRROR
	STA f:INIDISP
	LDX #$0000
@UNKNOWN0:
	LDA UNKNOWN_7F0000,X
	INX
	BNE @UNKNOWN0
	PLA
	STA INIDISP_MIRROR
	STA f:INIDISP
	REP #PROC_FLAGS::ACCUM8
	RTL
