
UNKNOWN_C2E0E7: ;$C2E0E7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ GREEN_FLASH_DURATION
	STZ RED_FLASH_DURATION
	SEP #PROC_FLAGS::ACCUM8
	STZ FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	REP #PROC_FLAGS::ACCUM8
	LDA HP_PP_BOX_BLINK_DURATION
	BEQ @UNKNOWN0
	LDA HP_PP_BOX_BLINK_TARGET
	JSL UNKNOWN_C207B6
	STZ HP_PP_BOX_BLINK_DURATION
@UNKNOWN0:
	LDY #$0000
	TYX
	TYA
	JSL SET_COLDATA
	LDA #$0001
	JSL UNKNOWN_C0AFCD
	RTL
