
EVENT_391: ;$C32878
	EVENT_SET_X $1260
	EVENT_SET_Y $1668
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_PAUSE $5A*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
