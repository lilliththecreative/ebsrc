
EVENT_327:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $13D0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $20D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
