
EVENT_256:
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_0144
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_8)
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_START_TASK .LOWORD(EVENT_8_ENTRY_2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $13E8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $2720
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0008
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0028
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_QUEUE_TEXT MSG_YUNBO_APPEAR
	EVENT_PAUSE 1*FRAME
	EVENT_CLEAR_CURRENT_ENTITY_COLLISION2
	EVENT_SET_X $1340
	EVENT_SET_Y $2710
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1390
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2710
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
