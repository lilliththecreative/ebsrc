
UNKNOWN_C01B15: ;$C01B15
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	CMP #$467E
	BCC @UNKNOWN3
	CMP #$49FE
	BEQ @UNKNOWN0
	BCS @UNKNOWN3
@UNKNOWN0:
	SEC
	SBC #$467E
	STA $10
	LDA #$0000
	STA $02
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA $10
	CLC
	ADC #$4682
	TAX
	STX $0E
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	TAY
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(SPRITE_TABLE_7E467E),X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(SPRITE_TABLE_7E467E)+1,X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(SPRITE_TABLE_7E467E)+2,X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(SPRITE_TABLE_7E467E)+3,X
	LDX $0E
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	CLC
	ADC #$0005
	STA $10
	TYA
	AND #$0080
	BEQ @UNKNOWN1
	INC $02
@UNKNOWN2:
	LDA $02
	CMP #$0002
	BCC @UNKNOWN1
@UNKNOWN3:
	PLD
	RTL