
EVENT_586:
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_ONET_DOOR_CLOSE
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_35)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C36A41)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY
	EVENT_UNKNOWN_C0A685 $C0, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0570
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $06E8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_HALT
