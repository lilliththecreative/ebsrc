
EVENT_644:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48BE1
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $01F0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0888
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $78*FRAMES
	EVENT_FADE_OUT $01, $07
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C49EC4
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
