
EVENT_34:
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FF1)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A12E)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0006
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION2
	EVENT_SET_Z $0005
	EVENT_UNKNOWN_C0D7C7
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PLAY_SOUND SFX::MAGIC_BUTTERFLY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_ADD ACTIONSCRIPT_VARS::V7, $0001
	EVENT_UNKNOWN_C0A685 $20, $00
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_Z_VELOCITY $0040
	EVENT_PAUSE 1*SECOND
	EVENT_SET_Z_VELOCITY $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000A
	EVENT_PAUSE 1*SECOND
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C2654C
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
