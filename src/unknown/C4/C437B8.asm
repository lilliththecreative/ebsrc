
UNKNOWN_C437B8: ;$C437B8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 26
	STA $18
	ASL
	TAX
<<<<<<< HEAD
	LDA OPEN_WINDOW_TABLE,X
	STA @LOCAL04
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::tilemap_address,X
	STA @LOCAL03
	LDA WINDOW_STATS+window_stats::width,X
=======
	LDA WINDOW_EXISTENCE_TABLE,X
	STA $16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS_TABLE+window_stats::tilemap_address,X
	STA $14
	LDA WINDOW_STATS_TABLE+window_stats::width,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	ASL
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $04
	LDA $14
	STA $02
	LDX $02
	STX $12
	TAY
	STY $14
	LDX #$0000
	STX $10
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY $14
	LDA __BSS_START__,Y
	INY
	INY
	STY $14
	JSL FREE_TILE
	LDX $10
	INX
	STX $10
@UNKNOWN1:
	LDA $16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::width,X
	ASL
	STA $02
	LDX $10
	TXA
	CMP $02
	BNE @UNKNOWN0
	LDX #$0000
	STX $14
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX $04
	LDA __BSS_START__,X
	LDX $12
	STX $02
	STA __BSS_START__,X
	INC $04
	INC $04
	INC $02
	INC $02
	LDA $02
	STA $12
	LDX $14
	INX
	STX $14
@UNKNOWN3:
	LDA $16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAY
<<<<<<< HEAD
	LDA WINDOW_STATS+window_stats::height,Y
	STA @LOCAL00
	LDA WINDOW_STATS+window_stats::width,Y
=======
	LDA WINDOW_STATS_TABLE+window_stats::height,Y
	STA $0E
	LDA WINDOW_STATS_TABLE+window_stats::width,Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAY
	LDA $0E
	DEC
	DEC
	JSL MULT16
	STA $02
	TXA
	CMP $02
	BNE @UNKNOWN2
	LDA $0E
	LSR
	TAX
	DEX
	LDA $18
	JSL UNKNOWN_C436D7
	PLD
	RTL
