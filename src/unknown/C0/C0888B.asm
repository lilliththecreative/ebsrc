
UNKNOWN_C0888B:
	SEP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7E0028
	BEQ @UNKNOWN0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	JSL OAM_CLEAR
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	BRA UNKNOWN_C0888B
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
