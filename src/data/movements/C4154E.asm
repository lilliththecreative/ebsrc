
UNKNOWN_C4154E: ;$C4154E
	EBMOVE_SET_X $000B
	EBMOVE_SET_Y $001F
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $FF
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $33
@UNKNOWN0:
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $FF
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $09
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $01
	EBMOVE_PAUSE $0A
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AAD5, $05, $64, $15
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $FF
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $89
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)