
EVENT_340: ;$C318FD
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*SECOND
	EVENT_LOOP $3C
		EVENT_UNKNOWN_C468A9
		EVENT_AND_TEMPVAR $0F00
		EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
		EVENT_WRITE_WORD_TEMPVAR $0001
		EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_002
		EVENT_UNKNOWN_C46E46
		EVENT_HALT
@UNKNOWN0: ;$C31931
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_LOOP $0A
		EVENT_LOOP $3C
			EVENT_UNKNOWN_C468A9
			EVENT_AND_TEMPVAR $0F00
			EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
			EVENT_WRITE_WORD_TEMPVAR $0001
			EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_002
			EVENT_UNKNOWN_C46E46
			EVENT_HALT
@UNKNOWN1: ;$C31957
			EVENT_PAUSE 1*FRAME
		EVENT_LOOP_END
	EVENT_LOOP_END
	EVENT_FADE_OUT_WITH_MOSAIC $0001, $0001, $0000
	EVENT_LOAD_BATTLEBGS BATTLEBG_LAYER::MU_TRAINING, BATTLEBG_LAYER::NONE
	EVENT_SET_X $0080
	EVENT_SET_Y $0070
	EVENT_FADE_IN $01, $01
	EVENT_UNKNOWN_08 UNKNOWN_C48BDA
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
@UNKNOWN2: ;$C31983
	EVENT_UNKNOWN_C468A9
	EVENT_AND_TEMPVAR $0F00
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN3)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_002
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN6)
@UNKNOWN3: ;$C3199E
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_003
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SET_10F2 $FF
	EVENT_FADE_IN $01, $01
@UNKNOWN4: ;$C319C0
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN6)
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_005
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN4)
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_UNKNOWN_C4978E
	EVENT_UNKNOWN_C0AAB5 $FFFC, $00, $64
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
@UNKNOWN5: ;$C319E7
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_003
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN5)
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN6)
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_RELOAD_MAP
	EVENT_PAUSE $96*FRAMES
	EVENT_FADE_IN $01, $01
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
@UNKNOWN6: ;$C31A17
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_RELOAD_MAP
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_004
@UNKNOWN7: ;$C31A2E
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN7)
	EVENT_FADE_IN $01, $01
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
