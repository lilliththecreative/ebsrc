
ENABLE_NMI_JOYPAD:
	PHP
	SEP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7E001E
	ORA #$0081
	STA UNKNOWN_7E001E
	STA f:NMITIMEN
	PLP
	RTL
