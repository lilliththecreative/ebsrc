
MOVEMENT_218: ;$C3DAF8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EBMOVE_UNKNOWN_C0A685 $80, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0003
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $01B0
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $2718
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_EXEC_TEXT_BLOCK TEXT_BLOCK_C78CC0
	EBMOVE_HALT