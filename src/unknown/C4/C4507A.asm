
UNKNOWN_C4507A: ;$C4507A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 40
	MOVE_INT $36, $06
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQL @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA VWF_INDENT_NEW_LINE
	STA @VIRTUAL00
	STZ VWF_INDENT_NEW_LINE
=======
	LDA UNKNOWN_7E5E75
	STA $00
	STZ UNKNOWN_7E5E75
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAY
	STY $26
	MOVE_INT $06, $0E
	JSL UNKNOWN_C10C55
	STA $02
	STA $24
	LDA #$0007
	SEC
	SBC $02
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(NUMBER_TEXT_BUFFER)
	STA @LOCAL07
	STA @LOCAL06
	LDY @LOCAL09
=======
	ADC #.LOWORD(UNKNOWN_7E895A)
	STA $22
	STA $20
	LDY $26
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA a:window_stats::text_x,Y
	STA $1E
	LDA a:window_stats::text_y,Y
<<<<<<< HEAD
	STA @LOCAL04
	LDX #4
	LDA CHARACTER_PADDING
=======
	STA $1C
	LDX #$0004
	LDA UNKNOWN_7E5E6D
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	STA $02
	LOADPTR FONT_PTR_TABLE, $06
	LDA a:window_stats::font,Y
	OPTIMIZED_MULT $04, 12
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	TXA
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	CLC
	ADC $02
	STA $04
	LDX #$0000
	STX $1A
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA $22
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	CLC
	ADC #$0060
	LDX $1A
	STA $12,X
	REP #PROC_FLAGS::ACCUM8
	LDA $22
	INC
	STA $22
	INX
	STX $1A
@UNKNOWN2:
	LDA $24
	STA $02
	TXA
	CMP $02
	BCC @UNKNOWN1
	TDC
	CLC
	ADC #$0012
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDY $26
	LDA a:window_stats::font,Y
	TAX
	LDA $02
	JSL UNKNOWN_C44FF3
	PHA
	LDA $04
	PLY
	STY $04
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL04
	STA @LOCAL02
	LDA CHARACTER_PADDING
=======
	ADC $04
	STA $18
	LDA UNKNOWN_7E5E6D
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	STA $04
	LDA $18
	CLC
	ADC $04
	STA $18
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	STA FORCE_LEFT_TEXT_ALIGNMENT
	LDY @LOCAL09
=======
	LDA #$0001
	STA UNKNOWN_7E5E71
	LDY $26
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA a:window_stats::text_y,Y
	TAX
	LDA $18
	STA $04
	LDA a:window_stats::width,Y
	DEC
	ASL
	ASL
	ASL
	SEC
	SBC $04
	JSL UNKNOWN_C43D75
	LDA #$0054
	JSL REDIRECT_PRINT_LETTER
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA ($20)
	AND #$00FF
	CLC
	ADC #$0060
	INC $20
	JSL REDIRECT_PRINT_LETTER
	LDA $02
	DEC
	STA $02
@UNKNOWN4:
	LDA $02
	BNE @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	STZ FORCE_LEFT_TEXT_ALIGNMENT
	LDY @LOCAL09
=======
	STZ UNKNOWN_7E5E71
	LDY $26
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA a:window_stats::text_y,Y
	TAX
	LDA a:window_stats::width,Y
	DEC
	JSL REDIRECT_C438A5
	LDA #$0024
	JSL UNKNOWN_C43F77
	LDX $1C
	LDA $1E
	JSL REDIRECT_C438A5
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA @VIRTUAL00
	STA VWF_INDENT_NEW_LINE
=======
	LDA $00
	STA UNKNOWN_7E5E75
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
