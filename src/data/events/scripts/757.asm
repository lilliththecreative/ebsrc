
EVENT_757: ;$C39213
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_START_TASK .LOWORD(EVENT_757_ENTRY_2)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $FF
	EVENT_UNKNOWN_C49841
@UNKNOWN1: ;$C39225
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_ANIM_PORT_0
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C2EA74
@UNKNOWN2: ;$C39234
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C2EACF
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN2)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
EVENT_757_ENTRY_2: ;$C39244
	EVENT_UNKNOWN_C4A7B0
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(EVENT_757_ENTRY_2)
