
UNKNOWN_C3A17B:
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_UNKNOWN_C40015
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A17B)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
