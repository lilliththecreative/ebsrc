
UNKNOWN_C202AC:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
.IF .DEFINED(JPN)
	STACK_RESERVE_INT32 "LOCALM20"
	STACK_RESERVE_INT8 "LOCALM21"
.ENDIF
	STACK_RESERVE_INT16 "LOCAL00"
	STACK_RESERVE_INT16 "LOCAL01"
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAY
	CLC
	ADC #window_stats::title
	STA @VIRTUAL04
	LDA a:window_stats::unknown59,Y
	AND #$00FF
	BNE @UNKNOWN3
	LDA #0
	STA @LOCAL01
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E894E)
	TAX
	STX @LOCAL00
	LDA __BSS_START__,X
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDA @LOCAL01
	INC
	STA @LOCAL01
@UNKNOWN1:
.IF .DEFINED(JPN)
	CMP #4
.ELSE
	CMP #5
.ENDIF
	BNE @UNKNOWN0
	BRA @RETURN
@UNKNOWN2:
	LDA @VIRTUAL02
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDX @LOCAL00
	STA __BSS_START__,X
	LDA @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA a:window_stats::unknown59,Y
@UNKNOWN3:
	REP #PROC_FLAGS::ACCUM8
	LDA a:window_stats::unknown59,Y
	AND #$00FF
	DEC
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7700
.IF .DEFINED(JPN) ;mother 2 had some extra logic here
	STA @VIRTUAL02
	BRA @UNKNOWN5
@UNKNOWN4:
	LOADPTR MOTHER2_ROMAJI_FONT, @VIRTUAL06
	LDA @LOCALM21
	AND #$00FF
	SEC
	SBC #32
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCALM20
	LDA @VIRTUAL06+2
	STA @LOCALM20+2
	LDY @VIRTUAL02
	LDX #16
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL PREPARE_VRAM_COPY
	.A16
	LDA @VIRTUAL02
	CLC
	ADC #8
	STA @VIRTUAL02
	INC @VIRTUAL04
@UNKNOWN5:
	LDX @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA @LOCALM21
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN4
.ELSE
	TAX
	LDA @VIRTUAL04
	JSL UNKNOWN_C444FB
.ENDIF
@RETURN:
	END_C_FUNCTION
