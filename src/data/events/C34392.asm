
UNKNOWN_C34392:
	EVENT_START_TASK .LOWORD(UNKNOWN_C343AE)
	EVENT_SET_X_VELOCITY $FF00
	EVENT_LOOP $05
		EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
		EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
		EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
		EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
