
UNKNOWN_EFD95E:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LOADPTR UNKNOWN_7F0000, @VIRTUAL06
	JSL UNKNOWN_C200D9
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA DEBUG_MODE_NUMBER
	CMP #1
	BNE @UNKNOWN0
	JSL LOAD_WINDOW_GFX
.IF .DEFINED(JPN)
	COPY_TO_VRAM1P @VIRTUAL06, VRAM::TEXT_LAYER_TILES, 14336, 0
.ELSE
	LDA #1
	JSL UNKNOWN_C44963
.ENDIF
	JSL UNKNOWN_C47F87
	BRA @UNKNOWN2
@UNKNOWN0:
	COPY_TO_VRAM1 DEBUG_MENU_FONT, VRAM::TEXT_LAYER_TILES + $100, 4096, 0
	LDA #0
	STA [@VIRTUAL06]
	COPY_TO_VRAM1P @VIRTUAL06, VRAM::TEXT_LAYER_TILEMAP, 2048, 3
	LDA DEBUG_MODE_NUMBER
	CMP #3
	BEQ @UNKNOWN1
	LDA #.LOWORD(-1)
	STA CUR_TEXT_PAL+4
	BRA @UNKNOWN2
@UNKNOWN1:
	LOADPTR UNKNOWN_EFEF9F, @LOCAL00
	LDX #BPP2PALETTE_SIZE * 3
	LDA #.LOWORD(CUR_TEXT_PAL)
	JSL MEMCPY16
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #24
	STA UNKNOWN_7E0030
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
