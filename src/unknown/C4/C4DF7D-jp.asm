
UNKNOWN_C4DF7D: ;$C4DF7D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 25
	STY $17
	SEC
	SBC #$0010
	STA $15
	TXA
	SEC
	SBC #$000E
	STA $13
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$0800
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EF000)
	JSL MEMSET16
	LOADPTR UNKNOWN_7F0000, $06
	LDY $17
	TYA
	LDY #$0800
	JSL MULT16
	CLC
	ADC $06
	STA $06
	LDA #$0000
	STA $04
	JMP @UNKNOWN6
@UNKNOWN0:
	LDA #$0000
	STA $02
	STA $11
	JMP @UNKNOWN4
@UNKNOWN1:
	LDA $04
	CLC
	ADC $13
	LSR
	LSR
	STA $0F
	LDA $02
	CLC
	ADC $15
	LSR
	LSR
	TAY
	LSR
	LSR
	LSR
	STA $02
	LDA $0F
	AND #$FFFC
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	LSR
	LSR
	LSR
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP .LOWORD(UNKNOWN_7E436E)
	BNE @UNKNOWN2
	LDA $0F
	TAX
	TYA
	JSL REDIRECT_C0A156
	STA $0F
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #$0000
	STA $0F
@UNKNOWN3:
	LDA $11
	STA $02
	CLC
	ADC $15
	AND #$0003
	PHA
	LDA $04
	CLC
	ADC $13
	AND #$0003
	ASL
	ASL
	STA $02
	LDA $0F
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	PLY
	STY $02
	CLC
	ADC $02
	STA $0F
	LOADPTR UNKNOWN_7F8000, $0A
	LDA $0F
	ASL
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$03FF
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EF000),X
	LDA [$0A]
	STA [$06]
	INC $06
	INC $06
	LDA $11
	STA $02
	INC $02
	LDA $02
	STA $11
@UNKNOWN4:
	LDA $02
	CMP #$0020
	BCCL @UNKNOWN1
	INC $04
@UNKNOWN6:
	LDA $04
	CMP #$001E
	BCCL @UNKNOWN0
	PLD
	RTS
