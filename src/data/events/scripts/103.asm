
EVENT_103:
	EVENT_UNKNOWN_C46C45
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0068
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0060
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BD03)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_ADD ACTIONSCRIPT_VARS::V7, $FFE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1:
	EVENT_PAUSE 1*FRAME
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_ADD ACTIONSCRIPT_VARS::V7, $FFE8
	EVENT_UNKNOWN_C0A8C6
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_TUNNEL_TWSN_THRK_TR
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR $1A00
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_HALT
