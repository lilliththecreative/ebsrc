
EVENT_23:
	EVENT_START_TASK .LOWORD(@UNKNOWN5)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A42D)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EVENT_UNKNOWN_C0A685 $00, $02
@UNKNOWN1:
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_CHOOSE_RANDOM DIRECTION::UP, DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A6A2 $0020
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
@UNKNOWN2:
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_LOOP $0F
		EVENT_SET_Y_RELATIVE $FFFF
		EVENT_PAUSE $01
		EVENT_SET_Y_RELATIVE $0001
		EVENT_PAUSE $01
	EVENT_LOOP_END
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A360)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN4)
@UNKNOWN3:
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
@UNKNOWN4:
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A6AD $0020
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN5:
	EVENT_LOOP $10
		EVENT_SET_X_VELOCITY_RELATIVE $0080
		EVENT_PAUSE $01
	EVENT_LOOP_END
	EVENT_LOOP $10
		EVENT_SET_X_VELOCITY_RELATIVE $FF80
		EVENT_PAUSE $01
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN5)
