
UNKNOWN_C0DD0F:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
@UNKNOWN1:
	LDA UNKNOWN_7E0028
	AND #$00FF
	BNE @UNKNOWN0
	RTS
