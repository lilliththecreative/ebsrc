
UNKNOWN_C209A0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	CMP #$FFFF
	BNE @UNKNOWN4
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAX
	STX @LOCAL01
	LDY a:window_stats::tilemap_address,X
	STY @LOCAL00
	LDY a:window_stats::height,X
	LDA a:window_stats::width,X
	JSL MULT16
	STA @VIRTUAL02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY @LOCAL00
	LDA __BSS_START__,Y
	BEQ @UNKNOWN1
	JSL FREE_TILE_SAFE
@UNKNOWN1:
	LDA #64
	LDY @LOCAL00
	STA __BSS_START__,Y
	INY
	INY
	STY @LOCAL00
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
@UNKNOWN2:
	LDA @VIRTUAL02
	BNE @UNKNOWN0
	LDX @LOCAL01
	LDA a:window_stats::unknown59,X
	AND #$00FF
	BEQ @UNKNOWN3
	AND #$00FF
	DEC
	ASL
	TAX
	LDA #$FFFF
	STA TITLED_WINDOWS,X
@UNKNOWN3:
	LDX @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	STZ a:window_stats::title,X
	STZ a:window_stats::unknown59,X
	LDA #1
	STA REDRAW_ALL_WINDOWS
	JSL UNKNOWN_C07C5B
@UNKNOWN4:
	END_C_FUNCTION
