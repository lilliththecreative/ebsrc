
EVENT_707_708_709_710_COMMON:
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN2)
@UNKNOWN1:
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
@UNKNOWN2:
	EVENT_SET_DIRECTION
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SHORTJUMP .LOWORD(EVENT_8_ENTRY_2)
