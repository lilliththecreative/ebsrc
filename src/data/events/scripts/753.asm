
EVENT_753:
	EVENT_SET_X $0218
	EVENT_SET_Y $1DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000C
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $01C0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0190
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1DD8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_HALT
