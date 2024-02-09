
CLOSE_WINDOW: ;$C3E521
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STA $16
	CMP #$FFFF
	BEQL @UNKNOWN18
	LDA $16
	ASL
	TAX
<<<<<<< HEAD
	LDA OPEN_WINDOW_TABLE,X
	STA @VIRTUAL04
	CMP #.LOWORD(-1)
=======
	LDA WINDOW_EXISTENCE_TABLE,X
	STA $04
	CMP #$FFFF
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQL @UNKNOWN18
	LDA CURRENT_FOCUS_WINDOW
	CMP $16
	BNE @UNKNOWN2
	LDA #$FFFF
	STA CURRENT_FOCUS_WINDOW
@UNKNOWN2:
	LDA $16
	JSL UNKNOWN_C3E7E3
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDY WINDOW_STATS + window_stats::next,X
	STY @LOCAL03
	LDA WINDOW_STATS + window_stats::prev,X
	STA @LOCAL02
	CPY #.LOWORD(-1)
=======
	LDY WINDOW_STATS_TABLE+window_stats::next,X
	STY $14
	LDA WINDOW_STATS_TABLE+window_stats::prev,X
	STA $12
	CPY #$FFFF
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNE @UNKNOWN3
	STA WINDOW_TAIL
	BRA @UNKNOWN4
@UNKNOWN3:
	TYA
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA @LOCAL02
	STA WINDOW_STATS + window_stats::prev,X
=======
	LDA $12
	STA WINDOW_STATS_TABLE+window_stats::prev,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN4:
	CMP #$FFFF
	BNE @UNKNOWN5
	LDY $14
	STY WINDOW_HEAD
	BRA @UNKNOWN6
@UNKNOWN5:
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY $14
	TYA
<<<<<<< HEAD
	STA WINDOW_STATS + window_stats::next,X
=======
	STA WINDOW_STATS_TABLE+window_stats::next,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN6:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	STX @LOCAL01
	LDA #.LOWORD(-1)
	STA WINDOW_STATS + window_stats::id,X
	LDA @LOCAL04
	ASL
	TAX
	LDA #.LOWORD(-1)
	STA OPEN_WINDOW_TABLE,X
	LDX @LOCAL01
	LDA WINDOW_STATS + window_stats::window_x,X
	ASL
	STA @VIRTUAL02
	LDA WINDOW_STATS + window_stats::window_y,X
	OPTIMIZED_MULT @VIRTUAL04, 64
=======
	STX $10
	LDA #$FFFF
	STA WINDOW_STATS_TABLE+window_stats::id,X
	LDA $16
	ASL
	TAX
	LDA #$FFFF
	STA WINDOW_EXISTENCE_TABLE,X
	LDX $10
	LDA WINDOW_STATS_TABLE+window_stats::window_x,X
	ASL
	STA $02
	LDA WINDOW_STATS_TABLE+window_stats::window_y,X
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(BG2_BUFFER)
<<<<<<< HEAD
.IF .DEFINED(JPN)
	TAY
	STY @LOCAL00
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL01
.ELSE
	STA @VIRTUAL02
	STA @LOCAL00
	LDY WINDOW_STATS + window_stats::tilemap_address,X
	STY @LOCAL03
	LDX #0
	STX @LOCAL01
=======
	STA $02
	STA $0E
	LDY WINDOW_STATS_TABLE+window_stats::tilemap_address,X
	STY $14
	LDX #$0000
	STX $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN10
@UNKNOWN7:
	LDY $14
	LDA __BSS_START__,Y
	CMP #$0040
	BNE @UNKNOWN8
	CMP #$0000
	BEQ @UNKNOWN9
@UNKNOWN8:
	LDA __BSS_START__,Y
	JSL FREE_TILE
@UNKNOWN9:
	LDA #$0040
	LDY $14
	STA __BSS_START__,Y
	INY
	INY
	STY $14
	LDX $10
	INX
	STX $10
@UNKNOWN10:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDY WINDOW_STATS + window_stats::width,X
	TAX
	LDA WINDOW_STATS + window_stats::height,X
=======
	LDY WINDOW_STATS_TABLE+window_stats::width,X
	TAX
	LDA WINDOW_STATS_TABLE+window_stats::height,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MULT16
	STA $02
	LDX $10
	TXA
	CMP $02
	BCC @UNKNOWN7
	LDY #$0000
	STY $10
	BRA @UNKNOWN14
@UNKNOWN11:
	LDA #$0000
	STA $12
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA #$0000
	LDX $0E
	STX $02
	STA __BSS_START__,X
	INC $02
	INC $02
	LDA $02
	STA $0E
	LDA $12
	INC
	STA $12
@UNKNOWN13:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
	LDA WINDOW_STATS + window_stats::width,X
.IF .DEFINED(JPN)
	STA @LOCAL02
	STA @VIRTUAL02
.ELSE
=======
	LDA WINDOW_STATS_TABLE+window_stats::width,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	STX $02
	INC $02
	INC $02
	LDA $12
	CMP $02
	BNE @UNKNOWN12
	STX $02
	LDA #$0020
	SEC
	SBC $02
	DEC
	DEC
	ASL
	PHA
	LDA $0E
	STA $02
	PLY
	STY $02
	CLC
	ADC $02
	STA $02
	STA $0E
	LDY $10
	INY
	STY $10
@UNKNOWN14:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
<<<<<<< HEAD
.IF .DEFINED(JPN)
	LDA @VIRTUAL02
	PHA
.ELSE
	STX @LOCAL02
.ENDIF
	LDA WINDOW_STATS + window_stats::height,X
	STA @VIRTUAL02
	INC @VIRTUAL02
	INC @VIRTUAL02
.IF .DEFINED(JPN)
	PLA
.ELSE
	LDY @LOCAL01
=======
	STX $12
	LDA WINDOW_STATS_TABLE+window_stats::height,X
	STA $02
	INC $02
	INC $02
	LDY $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TYA
	CMP $02
	BNE @UNKNOWN11
	JSL UNKNOWN_C45E96
<<<<<<< HEAD
	LDX @LOCAL02
.ENDIF
	LDA WINDOW_STATS + window_stats::unknown59,X
=======
	LDX $12
	LDA WINDOW_STATS_TABLE+window_stats::unknown59,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BEQ @UNKNOWN15
	AND #$00FF
	DEC
	ASL
	TAX
<<<<<<< HEAD
	LDA #.LOWORD(-1)
	STA TITLED_WINDOWS,X
=======
	LDA #$FFFF
	STA UNKNOWN_7E894E,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN15:
	LDA $04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	STZ WINDOW_STATS + window_stats::unknown59,X
	LDA #1
	STA REDRAW_ALL_WINDOWS
	REP #PROC_FLAGS::ACCUM8
	LDA PAGINATION_WINDOW
	CMP @LOCAL04
	BNE @UNKNOWN16
	LDA #.LOWORD(-1)
	STA PAGINATION_WINDOW
@UNKNOWN16:
.IF .DEFINED(USA)
	LDA EXTRA_TICK_ON_WINDOW_CLOSE
=======
	STZ WINDOW_STATS_TABLE+window_stats::unknown59,X
	LDA #$0001
	STA UNKNOWN_7E9623
	REP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7E5E7A
	CMP $16
	BNE @UNKNOWN16
	LDA #$FFFF
	STA UNKNOWN_7E5E7A
@UNKNOWN16:
	LDA UNKNOWN_7E5E70
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BNE @UNKNOWN17
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
	JSL CLEAR_INSTANT_PRINTING
@UNKNOWN17:
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	STZ VWF_INDENT_NEW_LINE
.ENDIF
.ENDIF
=======
	STZ UNKNOWN_7E5E75
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN18:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
