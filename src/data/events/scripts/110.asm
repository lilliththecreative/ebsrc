
EVENT_110:
	EVENT_SET_X $1FF0
	EVENT_SET_Y $1D68
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000E
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1F80
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1D68
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1F68
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1D58
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7E5D9A), $0000
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
