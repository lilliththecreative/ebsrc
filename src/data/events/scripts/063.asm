
EVENT_63:
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_ANIMATION $00
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A09F)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN_LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $2D*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN_LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $86*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
