
UNKNOWN_C30A1F: ;$C30A1F
	EVENT_SET_Z_VELOCITY $0200
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0000
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $FF00
	EVENT_PAUSE $06*FRAMES
	EVENT_SET_Z_VELOCITY $0000
	EVENT_END_UNKNOWN
