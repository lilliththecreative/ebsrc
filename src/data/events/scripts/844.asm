
EVENT_844:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 12*MILLISECONDS
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_HALT
