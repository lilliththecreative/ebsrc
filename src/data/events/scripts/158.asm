
EVENT_158:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_Z $00C0
	EVENT_SET_ANIMATION $00
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $00, $04
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0004
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_SET_Z_VELOCITY $FF00
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_Z_VELOCITY $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0DD0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2480
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_SET_Z_VELOCITY $0100
	EVENT_PAUSE $80*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
