
EVENT_291: ;$C30E99
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_WRITE_WORD_TEMPVAR $0005
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $96*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
