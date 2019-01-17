
UNKNOWN_C107AF: ;$C107AF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFDE
	TCD
	PLA
	STA $20
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAY
	LDA .LOWORD(WINDOW_STATS_TABLE)+53,Y
	STA $1E
	LDA .LOWORD(WINDOW_STATS_TABLE)+6,Y
	ASL
	STA $02
	LDA .LOWORD(WINDOW_STATS_TABLE)+8,Y
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #$7DFE
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+10,Y
	STA $04
	STA $1C
	LDA .LOWORD(WINDOW_STATS_TABLE)+12,Y
	STA $1A
	LDA a:.LOWORD(RAM),X
	BEQ @UNKNOWN0
	CMP #$3C10
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA #$3C10
	STA a:.LOWORD(RAM),X
	TXY
	INY
	INY
	STY $18
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #$3C13
	STA a:.LOWORD(RAM),X
	TXY
	INY
	INY
	STY $18
@UNKNOWN2:
	LDA $20
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	STA $16
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(WINDOW_STATS_TABLE)+59,X
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN3:
	LDA $16
	CLC
	ADC #$868C
	STA $14
	LDA $00
	AND #$00FF
	DEC
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$02E0
	STA $02
	LDA #$3C16
	LDY $18
	STA a:.LOWORD(RAM),Y
	TYX
	INX
	INX
	STX $18
	LDA $04
	DEC
	STA $04
	STA $12
	LDA $14
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
	JSL STRLEN
	STA $04
	ASL
	ADC $04
	ASL
	CLC
	ADC #$0007
	LSR
	LSR
	LSR
	STA $14
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $02
	CLC
	ADC #$2000
	LDX $18
	STA a:.LOWORD(RAM),X
	INC $02
	INX
	INX
	STX $18
	LDA $12
	STA $04
	DEC
	STA $04
	STA $12
	LDA $14
	DEC
	STA $14
@UNKNOWN5:
	BNE @UNKNOWN4
	LDA #$7C16
	LDX $18
	STA a:.LOWORD(RAM),X
	TXY
	INY
	INY
	STY $18
	LDA $12
	STA $04
	DEC
	STA $04
@UNKNOWN6:
	LDA $20
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+4,X
	CMP .LOWORD(UNKNOWN_7E5E7A)
	BNE @UNKNOWN7
	LDA .LOWORD(UNKNOWN_7E5E7C)
	CMP #$FFFF
	BEQ @UNKNOWN7
	LDA $04
	SEC
	SBC #$0004
	STA $04
@UNKNOWN7:
	LDX $04
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA #$3C11
	LDY $18
	STA a:.LOWORD(RAM),Y
	INY
	INY
	STY $18
	DEX
@UNKNOWN9:
	BNE @UNKNOWN8
	LDA $20
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+4,X
	CMP .LOWORD(UNKNOWN_7E5E7A)
	BNE @UNKNOWN12
	LDA .LOWORD(UNKNOWN_7E5E7C)
	CMP #$FFFF
	BEQ @UNKNOWN12
	LOADPTR UNKNOWN_C3E3F8+68, $0A
	LDA .LOWORD(UNKNOWN_7E5E7C)
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	LDY #$0002
	LDA [$0A],Y
	TAY
	LDA [$0A]
	STA $06
	STY $08
	LDX #$0000
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA [$06]
	LDY $18
	STA a:.LOWORD(RAM),Y
	INC $06
	INC $06
	INY
	INY
	STY $18
	INX
@UNKNOWN11:
	CPX #$0004
	BCC @UNKNOWN10
@UNKNOWN12:
	LDY $18
	LDA a:.LOWORD(RAM),Y
	BEQ @UNKNOWN13
	CMP #$7C10
	BNE @UNKNOWN14
@UNKNOWN13:
	LDA #$7C10
	STA a:.LOWORD(RAM),Y
	TYA
	INC
	INC
	STA $20
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA #$7C13
	STA a:.LOWORD(RAM),Y
	TYA
	INC
	INC
	STA $20
@UNKNOWN15:
	LDA #$0020
	SEC
	SBC $1C
	DEC
	DEC
	ASL
	STA $02
	LDA $20
	CLC
	ADC $02
	TAX
	LDY $1A
	BRA @UNKNOWN19
@UNKNOWN16:
	LDA #$3C12
	STA a:.LOWORD(RAM),X
	INX
	INX
	LDA $1C
	STA $18
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA ($1E)
	CLC
	ADC #$2000
	STA a:.LOWORD(RAM),X
	INC $1E
	INC $1E
	INX
	INX
	LDA $18
	DEC
	STA $18
@UNKNOWN18:
	BNE @UNKNOWN17
	LDA #$7C12
	STA a:.LOWORD(RAM),X
	TXA
	INC
	INC
	STA $16
	LDA #$0020
	SEC
	SBC $1C
	DEC
	DEC
	ASL
	STA $02
	LDA $16
	CLC
	ADC $02
	TAX
	DEY
@UNKNOWN19:
	BNE @UNKNOWN16
	LDA a:.LOWORD(RAM),X
	BEQ @UNKNOWN20
	CMP #$BC10
	BNE @UNKNOWN21
@UNKNOWN20:
	LDA #$BC10
	STA a:.LOWORD(RAM),X
	TXY
	INY
	INY
	BRA @UNKNOWN22
@UNKNOWN21:
	LDA #$BC13
	STA a:.LOWORD(RAM),X
	TXY
	INY
	INY
@UNKNOWN22:
	LDX $1C
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA #$BC11
	STA a:.LOWORD(RAM),Y
	INY
	INY
	DEX
@UNKNOWN24:
	BNE @UNKNOWN23
	LDA a:.LOWORD(RAM),Y
	BEQ @UNKNOWN25
	CMP #$FC10
	BNE @UNKNOWN26
@UNKNOWN25:
	LDA #$FC10
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA #$FC13
	STA a:.LOWORD(RAM),Y
@UNKNOWN27:
	PLD
	RTL
