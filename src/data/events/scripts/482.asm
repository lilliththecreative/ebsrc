
EVENT_482:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_START_TASK .LOWORD(@UNKNOWN3)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_GET_POSITION_OF_PARTY_MEMBER $09
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1:
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A8DC
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
@UNKNOWN2:
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
@UNKNOWN3:
	EVENT_SET_Z_VELOCITY $FE00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0001
	EVENT_END_TASK
