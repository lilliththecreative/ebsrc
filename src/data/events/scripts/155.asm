
EVENT_155:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_ANIMATION $00
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $09F8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1028
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $60*FRAMES
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $BC
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
