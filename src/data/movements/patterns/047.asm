
MOVEMENT_47: ;$C3AFD8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $04, $0012
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0001
	EBMOVE_CALLROUTINE UNKNOWN_C0A943, $FE
	EBMOVE_UNKNOWN_C0A685 $80, $00
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $04, $0000
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_HALT
