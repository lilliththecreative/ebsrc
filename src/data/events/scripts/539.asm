
EVENT_539:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_ANIMATION $00
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48BE1
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1400
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2710
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
