
EVENT_64:
	EVENT_SET_X $08A8
	EVENT_SET_Y $1BE8
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_ANIMATION $00
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A09F)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0968
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB67)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_65)
