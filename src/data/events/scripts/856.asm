
EVENT_856:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $B0*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_HALT
