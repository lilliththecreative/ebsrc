
EVENT_471: ;$C3C11F
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 9*MILLISECONDS
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3C143)
	EVENT_PAUSE 104*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_HALT
