
EVENT_681:
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_ANIMATION $00
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A0C5)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $16D5
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BD8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_SET_ANIMATION $00
	EVENT_PAUSE $78*FRAMES
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A0C5)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0012
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $16D0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BD8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
