
UNKNOWN_C436D7: ;$C436D7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	ASL
	TAX
<<<<<<< HEAD
	LDY OPEN_WINDOW_TABLE,X
	STY @LOCAL01
=======
	LDY WINDOW_EXISTENCE_TABLE,X
	STY $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TYA
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	PHA
	TAX
<<<<<<< HEAD
	LDY WINDOW_STATS+window_stats::width,X
	LDX @LOCAL02
=======
	LDY WINDOW_STATS_TABLE+window_stats::width,X
	LDX $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TXA
	JSL MULT16
	ASL
	ASL
	PLX
	CLC
	ADC WINDOW_STATS+window_stats::tilemap_address,X
	TAX
	STX $0E
	LDA #$0000
	STA $12
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0040
	LDX $0E
	STA __BSS_START__,X
	INX
	INX
	STX $0E
	LDA $12
	INC
	STA $12
@UNKNOWN1:
	LDY $10
	TYA
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS+window_stats::width,X
	ASL
	STA $02
	LDA $12
	CMP $02
	BNE @UNKNOWN0
	PLD
	RTL
