
EVENT_170:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_Z $00C0
	EVENT_SET_ANIMATION $00
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_SET_Z_VELOCITY $FF00
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_Z_VELOCITY $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $17A8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0C10
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_START_TASK .LOWORD(UNKNOWN_C3CC94)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $14F8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0C10
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SET_Z_VELOCITY $FFD0
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $13C0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0C48
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_SET_Z_VELOCITY $0000
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $FFF8
	EVENT_UNKNOWN_C474A8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0004
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0003
	EVENT_UNKNOWN_C47A9E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0009
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_PREPARE_NEW_ENTITY $0278, $0189, $04
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_WRITE_DWORD_WRAM .LOWORD(UNKNOWN_7E9D1B), UNDRAW_FLYOVER_TEXT
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
