
EVENT_742: ;$C38F39
	EVENT_SET_X $11D0
	EVENT_SET_Y $0DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $000B
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A685 $20, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $11D0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0DE0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37545)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN1)
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1138
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0D90
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_UNKNOWN2
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_END_UNKNOWN2
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
@UNKNOWN1: ;$C38F86
	EVENT_UNKNOWN_C0A94E $0456
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
