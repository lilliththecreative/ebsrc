
EVENT_886: ;$C39933
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C39936
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_PHOTO_SUMS_BEACH
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $17CC
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0BB0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0024
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0018
	EVENT_TEST_PLAYER_IN_AREA
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_QUEUE_TEXT MSG_GLOBAL_PHOTO_25
	EVENT_HALT
