
EVENT_410: ;$C33063
	EVENT_SET_X $1220
	EVENT_SET_Y $1660
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31D4F)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_UNKNOWN_08 UNKNOWN_C476A5
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_LOOP $0B
		EVENT_SHORTCALL .LOWORD(UNKNOWN_C31EC1)
	EVENT_LOOP_END
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_X_VELOCITY $0040
	EVENT_SET_Y_VELOCITY $FFD0
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $16*FRAMES
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_X_VELOCITY $0040
	EVENT_SET_Y_VELOCITY $0030
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $16*FRAMES
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $50*FRAMES
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C425F3
	EVENT_UNKNOWN_08_3B_94_C0
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31ED8)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $001E
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_X_VELOCITY $FFBC
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $001E
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_SET_X_VELOCITY $0044
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $001E
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_SET_X_VELOCITY $0044
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_X_VELOCITY $FFBC
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $001E
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_X_VELOCITY $FFBC
	EVENT_PAUSE 1*SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0008
	EVENT_SET_X_VELOCITY $FE89
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_PAUSE 1*QUARTER_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0008
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_SET_X_VELOCITY $01D0
	EVENT_SET_Y_VELOCITY $001B
	EVENT_PAUSE $4B*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $B4*FRAMES
	EVENT_SET_X $1298
	EVENT_SET_Y $1668
	EVENT_SET_X_VELOCITY $FFD3
	EVENT_SET_Y_VELOCITY $FFD3
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C333BB)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $2D*FRAMES
	EVENT_SET_X $1288
	EVENT_SET_Y $1668
	EVENT_SET_X_VELOCITY $FFD3
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C333CC)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $2D*FRAMES
	EVENT_SET_X $1278
	EVENT_SET_Y $1668
	EVENT_SET_X_VELOCITY $FFD3
	EVENT_SET_Y_VELOCITY $002D
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C333CC)
	EVENT_SET_X_VELOCITY $FFD3
	EVENT_SET_Y_VELOCITY $FFD3
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33399)
	EVENT_SET_X_VELOCITY $FFD3
	EVENT_SET_Y_VELOCITY $0000
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C333CC)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $E1*FRAMES
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_X $1270
	EVENT_SET_Y $1668
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $5A*FRAMES
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $5A*FRAMES
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $2D*FRAMES
	EVENT_SET_Y_VELOCITY $FFD3
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C333BB)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
