
EVENT_754: ;$C391E3
	EVENT_SET_X $0180
	EVENT_SET_Y $1E58
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000C
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0180
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1DF0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
