
EVENT_485: ;$C340CE
	EVENT_SET_X $0258
	EVENT_SET_Y $0D98
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A1F3)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $02A0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0D70
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0010
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0010
UNKNOWN_C340F0: ;$C340F0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_159
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_159
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C340F0)
