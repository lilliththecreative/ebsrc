
UNKNOWN_C41938:
	EVENT_SET_X $0018
	EVENT_SET_Y $FFE0
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0200
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0AAD5 $03, .LOWORD(@UNKNOWN0)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
@UNKNOWN1:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $0A
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
