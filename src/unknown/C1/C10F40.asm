
UNKNOWN_C10F40:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
.IF .DEFINED(JPN)
	@TMP00 := @LOCAL00
	@TMP01 := @LOCAL01
.ELSE
	@TMP00 := @VIRTUAL02
	@TMP01 := @LOCAL00
.ENDIF
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN3
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
.IF .DEFINED(USA)
	STX @LOCAL01
.ENDIF
	LDY a:window_stats::tilemap_address,X
	STY @TMP01
	LDY a:window_stats::height,X
	LDA a:window_stats::width,X
	JSL MULT16
	STA @TMP00
	BRA @UNKNOWN2
@UNKNOWN0:
.IF .DEFINED(USA)
	LDY @LOCAL00
	LDA __BSS_START__,Y
	BEQ @UNKNOWN1
	JSL FREE_TILE_SAFE
.ENDIF
@UNKNOWN1:
	LDA #64
	LDY @TMP01
	STA __BSS_START__,Y
	INY
	INY
	STY @TMP01
	LDA @TMP00
	DEC
	STA @TMP00
@UNKNOWN2:
.IF .DEFINED(JPN)
	CMP #0
	BNE @UNKNOWN0
.ELSE
	LDA @TMP00
	BNE @UNKNOWN0
	JSL UNKNOWN_C45E96
	LDX @LOCAL01
.ENDIF
	STZ a:window_stats::text_y,X
	STZ a:window_stats::text_x,X
@UNKNOWN3:
	END_C_FUNCTION
