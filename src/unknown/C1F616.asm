
UNKNOWN_C1F616: ;$C1F616
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	TAX
	STX $16
	LDA #$0019
	STA .LOWORD(CURRENT_FOCUS_WINDOW)
	JSL SET_9622_ONE
	LDX $16
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN0:
	JSR a:.LOWORD(OPEN_SOUND_MENU)
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+43,X
	LDY #$002D
	JSL MULT168
	CLC
	ADC #$89D4
	TAY
	STY $14
	LDA .LOWORD(GAME_STATE)+game_state::sound_setting
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA a:.LOWORD(RAM)+2,Y
	LDY #$002D
	JSL MULT168
	CLC
	ADC #$89D4
	TAY
	STY $14
	DEX
@UNKNOWN2:
	BNE @UNKNOWN1
	LDA #$0006
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDY $14
	LDA a:.LOWORD(RAM)+10,Y
	TAX
	LDA a:.LOWORD(RAM)+8,Y
	INC
	JSL UNKNOWN_C438A5
	LDY $14
	TYA
	CLC
	ADC #$0013
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0001
	LDA #$FFFF
	JSL UNKNOWN_C43BB9
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA .LOWORD(GAME_STATE)+game_state::sound_setting
	AND #$00FF
	TAX
	STX $12
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $12
	BEQ @UNKNOWN4
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA .LOWORD(GAME_STATE)+game_state::sound_setting
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	DEC
	JSL SAVE_GAME_SLOT
@UNKNOWN5:
	LDX $12
	TXA
	PLD
	RTS