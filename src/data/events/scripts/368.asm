
EVENT_368:
	EVENT_SET_X $1AA0
	EVENT_SET_Y $2158
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31D4F)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_TICK_CALLBACK UNKNOWN_C476A5
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_LOOP $0B
		EVENT_SHORTCALL .LOWORD(UNKNOWN_C31EC1)
	EVENT_LOOP_END
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_X_VELOCITY $0040
	EVENT_SET_Y_VELOCITY $FFD0
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $16*FRAMES
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_SET_X_VELOCITY $0040
	EVENT_SET_Y_VELOCITY $0030
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $16*FRAMES
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $50*FRAMES
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C425F3
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31EC1)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000F
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SET_X_VELOCITY $0044
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000F
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_X_VELOCITY $FFBC
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000F
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_SET_X_VELOCITY $0044
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000F
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_X_VELOCITY $FFBC
	EVENT_PAUSE 1*SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $001E
	EVENT_SET_Y_VELOCITY $0088
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE 7*FRAMES
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE 7*FRAMES
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $5A*FRAMES
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $5A*FRAMES
	EVENT_PAUSE $5A*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_SET_X_VELOCITY $FFEA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_SET_Y_VELOCITY $FFEA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_SET_X_VELOCITY $0016
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C32138)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31EEF)
	EVENT_PAUSE $16*FRAMES
	EVENT_PAUSE 1*SECOND
	EVENT_PAUSE $B4*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
