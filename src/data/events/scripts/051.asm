
EVENT_51:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3B0B6)
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_UNKNOWN_C0A864 $01
	EVENT_SET_Z $0010
	EVENT_UNKNOWN_C0A685 $00, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B51
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
@UNKNOWN1:
	EVENT_PAUSE 1*FRAME
	EVENT_ADD ACTIONSCRIPT_VARS::V0, $0800
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_C0A8E7
	EVENT_UNKNOWN_C4730E
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
