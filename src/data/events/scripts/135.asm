
EVENT_135: ;$C3C427
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A360)
	EVENT_SET_ANIMATION $00
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A12E)
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A262)
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $80, $01
UNKNOWN_C3C43C: ;$C3C43C
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_CHOOSE_RANDOM $0014, $0028, $003C
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0007
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0012
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
	EVENT_LOOP $3C
		EVENT_PAUSE 1*FRAME
		EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
		EVENT_UNKNOWN_C0A8C6
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3C43C)
