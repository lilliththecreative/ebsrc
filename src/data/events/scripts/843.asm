
EVENT_843:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $B4*FRAMES
	EVENT_LOOP $02
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A443_ME2
		EVENT_PAUSE $14*FRAMES
		EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
		EVENT_SET_DIRECTION
		EVENT_UNKNOWN_C0A443_ME2
		EVENT_PAUSE $28*FRAMES
	EVENT_LOOP_END
	EVENT_HALT
