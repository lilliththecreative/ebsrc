
EVENT_32: ;$C3DE01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A401)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0000
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN17)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN3)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN10)
@UNKNOWN0: ;$C3DE18
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
	EVENT_SWITCH_JUMP_TEMPVAR .LOWORD(@UNKNOWN1), .LOWORD(@UNKNOWN1), .LOWORD(@UNKNOWN0)
@UNKNOWN1: ;$C3DE24
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0000
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
@UNKNOWN2: ;$C3DE32
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0001
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
@UNKNOWN3: ;$C3DE39
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
	EVENT_SWITCH_JUMP_TEMPVAR .LOWORD(@UNKNOWN4), .LOWORD(@UNKNOWN8), .LOWORD(@UNKNOWN9)
@UNKNOWN4: ;$C3DE43
	EVENT_CALL_C09F82 $0000, $0001
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN6)
@UNKNOWN5: ;$C3DE4F
	EVENT_UNKNOWN_C0A651 $06
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_X_VELOCITY $FF00
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN7)
@UNKNOWN6: ;$C3DE5E
	EVENT_UNKNOWN_C0A651 $02
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_X_VELOCITY $0100
@UNKNOWN7: ;$C3DE6A
	EVENT_CALL_C09F82 $001E, $003C, $005A, $0078
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN8: ;$C3DE7B
	EVENT_UNKNOWN_C0C4F7
	EVENT_SWITCH_JUMP_TEMPVAR .LOWORD(@UNKNOWN4), .LOWORD(@UNKNOWN5), .LOWORD(@UNKNOWN5), .LOWORD(@UNKNOWN5), .LOWORD(@UNKNOWN4), .LOWORD(@UNKNOWN6), .LOWORD(@UNKNOWN6), .LOWORD(@UNKNOWN6)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN4)
@UNKNOWN9: ;$C3DE94
	EVENT_SET_X_VELOCITY $0000
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN10: ;$C3DE9C
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
	EVENT_SWITCH_JUMP_TEMPVAR .LOWORD(@UNKNOWN11), .LOWORD(@UNKNOWN15), .LOWORD(@UNKNOWN16)
@UNKNOWN11: ;$C3DEA6
	EVENT_CALL_C09F82 $0000, $0001
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN13)
@UNKNOWN12: ;$C3DEB2
	EVENT_SET_Y_VELOCITY $FF00
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN14)
@UNKNOWN13: ;$C3DEB8
	EVENT_SET_Y_VELOCITY $0100
@UNKNOWN14: ;$C3DEBB
	EVENT_CALL_C09F82 $000F, $001E, $002D, $003C
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN10)
@UNKNOWN15: ;$C3DECC
	EVENT_UNKNOWN_C0C4F7
	EVENT_SWITCH_JUMP_TEMPVAR .LOWORD(@UNKNOWN13), .LOWORD(@UNKNOWN13), .LOWORD(@UNKNOWN11), .LOWORD(@UNKNOWN12), .LOWORD(@UNKNOWN12), .LOWORD(@UNKNOWN12), .LOWORD(@UNKNOWN11), .LOWORD(@UNKNOWN13)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN11)
@UNKNOWN16: ;$C3DEE5
	EVENT_SET_Y_VELOCITY $0000
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN10)
@UNKNOWN17: ;$C3DEED
	EVENT_UNKNOWN_C06478
	EVENT_UNKNOWN_C05ECE
	EVENT_UNKNOWN_C0D5B0
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN18)
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN17)
@UNKNOWN18: ;$C3DF01
	EVENT_UNKNOWN_C0D77F
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0002
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0D7B3
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_EXEC_TEXT_BLOCK TEXT_BLOCK_C6A725
	EVENT_UNKNOWN_C020F1
	EVENT_END
