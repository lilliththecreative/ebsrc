
EVENT_569: ;$C34CE0
	EVENT_UNKNOWN_C0A864 $02
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_08 UNKNOWN_C48B3B
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_UNKNOWN_C0A943 $01
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_9, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0850
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $1BA0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0850
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $1B90
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)