
UNKNOWN_C0F41E: ;$C0F41E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFDB
	TCD
	LDA a:.LOWORD(BG3_Y_POS)
	CMP .LOWORD(UNKNOWN_7EB4E3)
	BEQ @UNKNOWN0
	BCS @UNKNOWN1
@UNKNOWN0:
	JMP @UNKNOWN37
@UNKNOWN1:
	LDA $B4F7
	STA $23
	LDA $B4F7
	INC
	STA $21
	LDA $B4F7
	INC
	INC
	AND #$000F
	STA $B4F7
	LDA a:.LOWORD(BG3_Y_POS)
	LSR
	LSR
	LSR
	CLC
	ADC #$001D
	AND #$001F
	STA $04
	LDA #$0000
	STA $02
	STA $1F
	LDA $B4E7
	STA $06
	LDA $B4E9
	STA $08
	LDA $06
	STA $1B
	LDA $08
	STA $1D
	LDA $23
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $17
	LDA $08
	STA $19
	LDA $21
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
	STA $0A
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $0C
	STZ $0D
	REP #PROC_FLAGS::ACCUM8
	LDA [$1B]
	AND #$00FF
	STA $15
	LDA $1B
	STA $06
	LDA $1D
	STA $08
	INC $06
	LDA $06
	STA $1B
	LDA $08
	STA $1D
	LDA $15
	CMP #$0001
	BEQ @UNKNOWN6
	CMP #$0002
	BNE @UNKNOWN2
	JMP @UNKNOWN9
@UNKNOWN2:
	CMP #$0003
	BNE @UNKNOWN3
	JMP @UNKNOWN14
@UNKNOWN3:
	CMP #$0004
	BNE @UNKNOWN4
	JMP @UNKNOWN15
@UNKNOWN4:
	CMP #$00FF
	BNE @UNKNOWN5
	JMP @UNKNOWN35
@UNKNOWN5:
	JMP @UNKNOWN36
@UNKNOWN6:
	LDA .LOWORD(UNKNOWN_7EB4E3)
	CLC
	ADC #$0008
	STA .LOWORD(UNKNOWN_7EB4E3)
	BRA @UNKNOWN8
@UNKNOWN7:
	AND #$00FF
	CLC
	ADC #$2000
	LDX $17
	STX $06
	LDX $19
	STX $08
	STA [$06]
	LDA $1B
	STA $06
	LDA $1D
	STA $08
	INC $06
	LDA $06
	STA $1B
	LDA $08
	STA $1D
	LDA $17
	STA $06
	LDA $19
	STA $08
	INC $06
	INC $06
	LDA $06
	STA $17
	LDA $08
	STA $19
	INC $02
@UNKNOWN8:
	LDA [$1B]
	AND #$00FF
	BNE @UNKNOWN7
	LDA $02
	LSR
	PHA
	LDA $04
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C10
	PLY
	STY $04
	SEC
	SBC $04
	STA $15
	LDA $23
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
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
	LDA $15
	TAY
	LDA $02
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	JMP @UNKNOWN36
@UNKNOWN9:
	.A16
	LDA .LOWORD(UNKNOWN_7EB4E3)
	CLC
	ADC #$0010
	STA .LOWORD(UNKNOWN_7EB4E3)
	BRA @UNKNOWN11
@UNKNOWN10:
	AND #$00FF
	CLC
	ADC #$2400
	LDX $17
	STX $06
	LDX $19
	STX $08
	STA [$06]
	INC $06
	INC $06
	LDA $06
	STA $17
	LDA $08
	STA $19
	LDA [$1B]
	AND #$00FF
	CLC
	ADC #$2410
	STA [$0A]
	LDA $1B
	STA $06
	LDA $1D
	STA $08
	INC $06
	LDA $06
	STA $1B
	LDA $08
	STA $1D
	INC $0A
	INC $0A
	INC $02
	LDA $02
	STA $1F
@UNKNOWN11:
	LDA [$1B]
	AND #$00FF
	BNE @UNKNOWN10
	LDA $02
	LSR
	STA $02
	LDA $04
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C10
	SEC
	SBC $02
	STA $13
	LDA $23
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
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
	LDY $13
	LDA $1F
	STA $02
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	LDA $04
	.A16
	CMP #$001F
	BEQ @UNKNOWN12
	LDA $13
	CLC
	ADC #$0020
	STA $23
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA $13
	SEC
	SBC #$03E0
	STA $23
@UNKNOWN13:
	LDA $21
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
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
	LDA $23
	TAY
	LDA $02
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	JMP @UNKNOWN36
@UNKNOWN14:
	.A16
	LDA [$1B]
	AND #$00FF
	ASL
	ASL
	ASL
	CLC
	ADC .LOWORD(UNKNOWN_7EB4E3)
	STA .LOWORD(UNKNOWN_7EB4E3)
	JMP @UNKNOWN36
@UNKNOWN15:
	LDX #$9801
	STX $15
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BNE @UNKNOWN16
	JMP @UNKNOWN34
@UNKNOWN16:
	LDY #$B4F9
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $12
	JMP @UNKNOWN27
@UNKNOWN17:
	.A16
	LDA $00
	AND #$00FF
	STA $13
	CMP #$00AC
	BEQ @UNKNOWN18
	CMP #$00AE
	BEQ @UNKNOWN19
	CMP #$00AF
	BEQ @UNKNOWN20
	BRA @UNKNOWN21
@UNKNOWN18:
	.A16
	LDA $12
	AND #$00FF
	STA $02
	TYA
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007C
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN26
@UNKNOWN19:
	.A16
	LDA $12
	AND #$00FF
	STA $02
	TYA
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007E
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN26
@UNKNOWN20:
	.A16
	LDA $12
	AND #$00FF
	STA $02
	TYA
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007F
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN26
@UNKNOWN21:
	.A16
	LDA $13
	CLC
	SBC #$0090
	BVC @UNKNOWN22
	BPL @UNKNOWN24
	BRA @UNKNOWN23
@UNKNOWN22:
	BMI @UNKNOWN24
@UNKNOWN23:
	LDA $13
	SEC
	SBC #$0050
	STA $13
	BRA @UNKNOWN25
@UNKNOWN24:
	LDA $13
	SEC
	SBC #$0030
	STA $13
@UNKNOWN25:
	LDA $12
	AND #$00FF
	STA $02
	TYA
	CLC
	ADC $02
	TAX
	LDA $13
	SEP #PROC_FLAGS::ACCUM8
	STA a:.LOWORD(RAM),X
@UNKNOWN26:
	LDX $15
	INX
	STX $15
	LDA $12
	INC
	STA $12
@UNKNOWN27:
	LDA a:.LOWORD(RAM),X
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN28:
	LDA .LOWORD(UNKNOWN_7EB4E3)
	CLC
	ADC #$0010
	STA .LOWORD(UNKNOWN_7EB4E3)
	LDX #$0000
	BRA @UNKNOWN30
@UNKNOWN29:
	AND #$00FF
	STA $02
	AND #$00F0
	CLC
	ADC $02
	CLC
	ADC #$2400
	PHA
	LDA $17
	STA $06
	LDA $19
	STA $08
	PLA
	STA [$06]
	INC $06
	INC $06
	LDA $06
	STA $17
	LDA $08
	STA $19
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	STA $02
	AND #$00F0
	CLC
	ADC $02
	CLC
	ADC #$2410
	STA [$0A]
	INC $0A
	INC $0A
	INY
	LDA $1F
	STA $02
	INC $02
	LDA $02
	STA $1F
	INX
@UNKNOWN30:
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	BEQ @UNKNOWN31
	CPX #$0018
	BCC @UNKNOWN29
@UNKNOWN31:
	LDA $1F
	STA $02
	LSR
	STA $02
	LDA $04
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C10
	SEC
	SBC $02
	STA $13
	LDA $23
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
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
	LDY $13
	LDA $1F
	STA $02
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
	.A16
	LDA $04
	CMP #$001F
	BEQ @UNKNOWN32
	LDA $13
	CLC
	ADC #$0020
	STA $23
	BRA @UNKNOWN33
@UNKNOWN32:
	.A16
	LDA $13
	SEC
	SBC #$03E0
	STA $23
@UNKNOWN33:
	LDA $21
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7DFE
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
	LDA $23
	TAY
	LDA $02
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C4EFC4
@UNKNOWN34:
	LDA $1B
	STA $06
	LDA $1D
	STA $08
	DEC $06
	LDA $06
	STA $1B
	LDA $08
	STA $1D
	BRA @UNKNOWN36
@UNKNOWN35:
	.A16
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EB4E3)
@UNKNOWN36:
	LDA $1B
	STA $06
	LDA $1D
	STA $08
	INC $06
	LDA $06
	STA $B4E7
	LDA $08
	STA $B4E9
@UNKNOWN37:
	LDA $B4E5
	CMP a:.LOWORD(BG3_Y_POS)
	BCS @UNKNOWN38
	LDA $B4E5
	CLC
	ADC #$0008
	STA $B4E5
	LOADPTR UNKNOWN_C40BE8, $0E
	LDA a:.LOWORD(BG3_Y_POS)
	LSR
	LSR
	LSR
	DEC
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$6C00
	TAY
	LDX #$0040
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	JSL UNKNOWN_C4EFC4
@UNKNOWN38:
	.A16
	LDA $B4EB
	STA $06
	LDA $B4ED
	STA $08
	CLC
	LDA $06
	ADC #$4000

UNKNOWN_C0F8AA: ;$C0F8AA
	STA $06
	BCC @UNKNOWN0
	INC $08
@UNKNOWN0:
	LDA $06
	STA $B4EB
	LDA $08
	STA $B4ED
	STA a:.LOWORD(BG3_Y_POS)
	JSR a:.LOWORD(UNKNOWN_C0AD9F)
	PLD
	RTS