
	EVENT_WRITE_WORD_TO_9AF9_ENTRY $00, $0000
	EVENT_LOOP $08
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_CALLROUTINE $C0ED41
	EVENT_BINOP_9AF9 $00, $02, $0001
	EVENT_PAUSE 4
	EVENT_LOOP_END
	EVENT_WRITE_WORD_TO_9AF9_ENTRY $00, $0000
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_CALLROUTINE $C0ED41
	EVENT_END_UNKNOWN

UNKNOWN_C4220E: ;$C4220E
	EVENT_WRITE_PTR_UNKNOWN UNKNOWN_E1CF9D
	EVENT_UNKNOWN_WRITE_11E2 .LOWORD(UNKNOWN_C0A0FA)
	EVENT_UNKNOWN_43 $01
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A0BB)
	EVENT_UNKNOWN_C0EE53
	EVENT_SHORT_RETURN
UNKNOWN_C4221F: ;$C4221F
;	EVENT_UNKNOWN_C0EE53
;	EVENT_PAUSE $02
;	EVENT_UNKNOWN_C0EE53
;	EVENT_END_UNKNOWN

;UNKNOWN_C422XX:
;	EVENT_WRITE_WRAM_TEMPVAR $A177
;	EVENT_SHORTCALL_CONDITIONAL $2181
;	EVENT_UNKNOWN_C0EE53
;	EVENT_END
