
EVENT_872:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1:
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_PHOTO_ONSEN
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0234
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $1CB8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0014
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0010
	EVENT_TEST_PLAYER_IN_AREA
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT MSG_GLOBAL_PHOTO_11
	EVENT_HALT
