
UNKNOWN_C10A85: ;$C10A85
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STY $18
	STX $02
	STX $16
	STA $14
	ASL
	TAX
<<<<<<< HEAD
	LDA OPEN_WINDOW_TABLE,X
	STA @LOCAL02
	CMP #.LOWORD(-1)
=======
	LDA WINDOW_EXISTENCE_TABLE,X
	STA $12
	CMP #$FFFF
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQL @UNKNOWN10
	LDA $12
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDY WINDOW_STATS + window_stats::text_x,X
	STY @LOCAL01
	LDA WINDOW_STATS + window_stats::text_y,X
	STA @VIRTUAL04
	TYA
	CMP WINDOW_STATS + window_stats::width,X
	BNE @UNKNOWN3
	LDA WINDOW_STATS + window_stats::height,X
=======
	LDY WINDOW_STATS_TABLE+window_stats::text_x,X
	STY $10
	LDA WINDOW_STATS_TABLE+window_stats::text_y,X
	STA $04
	TYA
	CMP WINDOW_STATS_TABLE+window_stats::width,X
	BNE @UNKNOWN3
	LDA WINDOW_STATS_TABLE+window_stats::height,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LSR
	DEC
	STA $02
	LDA $04
	CMP $02
	BEQ @UNKNOWN1
	INC $04
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA $14
	JSL UNKNOWN_C437B8
@UNKNOWN2:
	LDY #$0000
	STY $10
@UNKNOWN3:
	LDA BLINKING_TRIANGLE_FLAG
	BEQ @UNKNOWN6
	CPY #$0000
	BNE @UNKNOWN6
	LDA $16
	STA $02
	CMP #$0020
	BEQ @UNKNOWN4
	LDA $02
	CMP #$0040
	BNE @UNKNOWN6
@UNKNOWN4:
	LDA BLINKING_TRIANGLE_FLAG
	CMP #$0001
	BEQL @UNKNOWN9
	CMP #$0002
	BNE @UNKNOWN6
	LDA #$0020
	STA $02
	STA $16
@UNKNOWN6:
	LDA $12
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	TYA
	ASL
<<<<<<< HEAD
	STA @VIRTUAL02
	LDY WINDOW_STATS + window_stats::width,X
	LDA @VIRTUAL04
=======
	STA $02
	LDY WINDOW_STATS_TABLE+window_stats::width,X
	LDA $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MULT16
	ASL
	ASL
	CLC
<<<<<<< HEAD
	ADC WINDOW_STATS + window_stats::tilemap_address,X
=======
	ADC WINDOW_STATS_TABLE+window_stats::tilemap_address,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $02
	STA $0E
	LDA $16
	STA $02
	CMP #$0022
	BNE @UNKNOWN7
	LDX #$0C00
	BRA @UNKNOWN8
@UNKNOWN7:
	LDX $18
@UNKNOWN8:
	LDA $02
	AND #$000F
	PHA
	LDA $02
	AND #$FFF0
	ASL
	PLY
	STY $02
	CLC
	ADC $02
	STX $02
	CLC
	ADC $02
	STA $02
	STA $18
	LDA $0E
	TAX
	LDA $02
	STA __BSS_START__,X
	LDA $12
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS + window_stats::width,X
=======
	LDA WINDOW_STATS_TABLE+window_stats::width,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	STA $02
	LDA $0E
	CLC
	ADC $02
	TAX
	LDA $18
	STA $02
	CLC
	ADC #$0010
	STA __BSS_START__,X
	LDY $10
	INY
	STY $10
@UNKNOWN9:
	LDA $12
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $10
	TYA
<<<<<<< HEAD
	STA WINDOW_STATS + window_stats::text_x,X
	LDA @VIRTUAL04
	STA WINDOW_STATS + window_stats::text_y,X
=======
	STA WINDOW_STATS_TABLE+window_stats::text_x,X
	LDA $04
	STA WINDOW_STATS_TABLE+window_stats::text_y,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN10:
	PLD
	RTS
