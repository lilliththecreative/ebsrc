
EVENT_467:
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A443_ME2
UNKNOWN_C33C3E:
	EVENT_LOOP $0A
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_ANIMATION $01
		EVENT_UNKNOWN_C0A443_ME1
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_ANIMATION $00
		EVENT_UNKNOWN_C0A443_ME3
		EVENT_UNKNOWN_C0C6B6
		EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_35)
	EVENT_LOOP_END
	EVENT_CHOOSE_RANDOM DIRECTION::UP, DIRECTION::RIGHT, DIRECTION::DOWN, DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C33C3E)
