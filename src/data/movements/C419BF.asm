
UNKNOWN_C419BF: ;$C419BF
	EBMOVE_SET_X $0018
	EBMOVE_SET_Y $0020
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $05
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $01
	EBMOVE_PAUSE $05
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $05
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $05
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $01
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $01
	EBMOVE_PAUSE $01
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $02
	EBMOVE_CALLROUTINE UNKNOWN_C0AAD5, $03, $E9, $19
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $01
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $01
	EBMOVE_CALLROUTINE UNKNOWN_C0AAD5, $01, $04, $1A
@UNKNOWN0:
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $01
	EBMOVE_PAUSE $0A
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)
