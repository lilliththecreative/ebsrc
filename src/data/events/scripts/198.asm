
EVENT_198:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1838
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0048
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $D4
	EVENT_QUEUE_TEXT MSG_EVT_TBUS_TUNNEL_HWAY_L
	EVENT_HALT
