
EVENT_306: ;$C312E7
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48BE1
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $000F
	EVENT_UNKNOWN_C0A92D $0362
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
UNKNOWN_C3130B: ;$C3130B
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A92D $0362
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3130B)
