
EVENT_633:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_LOOP $1F
		EVENT_ADD ACTIONSCRIPT_VARS::V0, $FFFF
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
