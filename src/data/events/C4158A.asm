
UNKNOWN_C4158A: ;$C4158A
	EVENT_SET_X $0019
	EVENT_SET_Y $000F
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $FF
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $33
@UNKNOWN0:
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $FF
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $F9
@UNKNOWN1:
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $05, .LOWORD(@UNKNOWN1)
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $D4
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
