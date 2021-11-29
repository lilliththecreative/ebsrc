
TEXT_INPUT_DIALOG: ;$C1E57F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 44
	STY $2A
	STX $28
	STA $26
	LDX $3C
	STX $24
	LDY $3A
	TYX
	STX $22
	LDA #$FFFF
	STA $20
	LDA #$0000
	STA $04
	STA $1E
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_NAMING_KEYBOARD
	LDA $8C96
	ASL
	TAX
	LDA $8C26,X
	LDY #$004C
	JSL MULT168
	CLC
	ADC #$89C2
	STA $1C
	LDA $24
	CMP #$FFFF
	BNE @UNKNOWN2
	LOADPTR NAME_INPUT_WINDOW_SELECTION_LAYOUT_POINTERS, $0A
	LDX $22
	TXA
	ASL
	ASL
	CLC
	ADC #$000C
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	BRA @UNKNOWN3
@UNKNOWN2:
	LOADPTR NAME_INPUT_WINDOW_SELECTION_LAYOUT_POINTERS, $0A
	LDX $22
	TXA
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
@UNKNOWN3:
	LDX #$0003
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDA #$001A
	JSR PRINT_LETTER
	LDX #$0004
	LDA #$0019
	JSR UNKNOWN_C438A5
	LDA #$001B
	JSR $11EC
	JSR $00ED
	LDX $04
	LDA $1E
	JSR $1169
	LDA #$0001
	JSR $15A4
	LDA #$0021
	JSR $12AE
	LDA #$0000
	JSR $15A4
	JSL $C13502
	LDA #$0001
	STA $1A
	LDA $1A
	EOR #$0001
	STA $1A
	LDY #$0010
	LDA ($1C),Y
	ASL
	LDY #$0008
	CLC
	ADC ($1C),Y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDY #$0006
	LDA ($1C),Y
	LDY #$000E
	CLC
	ADC ($1C),Y
	CLC
	ADC $02
	CLC
	ADC #$7C20
	STA $22
	LDA $1A
	ASL
	STA $02
	LOADPTR $C3E3E8, $06
	LDA $02
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDY $22
	LDX #$0002
	SEP #%00100000
	LDA #$0000
	JSL $C08616
	.A16
	LOADPTR $C3E3EC, $06
	LDA $02
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $22
	CLC
	ADC #$0020
	TAY
	LDX #$0002
	SEP #%00100000
	LDA #$0000
	JSL $C08616
	.A16
	LDX #$0000
	STX $18
	JMP $E84F
	JSL $C100C4
	LDA a:$006D
	AND #$0800
	BEQ @UNKNOWN2_
	LDA #$0000
	STA $0E
	LDA #$007C
	STA $10
	LDA $1E
	STA $12
	LDY #$000C
	LDA ($1C),Y
	LSR
	STA $14
	LDY #$FFFF
	LDX $04
	LDA $1E
	JSL $C12086
	TAY
	STY $16
	JMP $E866
@UNKNOWN2_:
	LDA a:$006D
	AND #$0200
	BEQ @UNKNOWN3_
	MOVE_INT_CONSTANT $7BFFFF, $0E
	LDY #$000A
	LDA ($1C),Y
	STA $12
	LDA $04
	STA $14
	LDY #$0000
	LDX $04
	LDA $1E
	JSL $C12086
	TAY
	STY $16
	JMP $E866
@UNKNOWN3_:
	LDA a:$006D
	AND #$0400
	BEQ @UNKNOWN3_2
	MOVE_INT_CONSTANT $7C0000, $0E
	LDA $1E
	STA $12
	LDA #$FFFF
	STA $14
	LDY #$0001
	LDX $04
	LDA $1E
	JSL $C12086
	TAY
	STY $16
	JMP $E866
@UNKNOWN3_2:
	LDA a:$006D
	AND #$0100
	BEQ @UNKNOWN3_3
	MOVE_INT_CONSTANT $7B0001, $0E
	LDA #$FFFF
	STA $12
	LDA $04
	STA $14
	LDY #$0000
	LDX $04
	LDA $1E
	JSL $C12086
	TAY
	STY $16
	JMP $E866
@UNKNOWN3_3:
	LDA a:$0069
	AND #$0800
	BEQ @UNKNOWN4
	MOVE_INT_CONSTANT $7C0000, $0E
	LDY #$FFFF
	LDX $04
	LDA $1E
	JSL $C209F6
	TAY
	STY $16
	JMP $E866
@UNKNOWN4:
	LDA a:$0069
	AND #$0400
	BEQ @UNKNOWN4_2
	MOVE_INT_CONSTANT $7C0000, $0E
	LDY #$0001
	LDX $04
	LDA $1E
	JSL $C209F6
	TAY
	STY $16
	JMP $E866
@UNKNOWN4_2:
	LDA a:$0069
	AND #$0200
	BEQ @UNKNOWN5
	MOVE_INT_CONSTANT $7BFFFF, $0E
	LDY #$0000
	LDX $04
	LDA $1E
	JSL $C209F6
	TAY
	STY $16
	JMP $E866
@UNKNOWN5:
	LDA a:$0069
	AND #$0100
	BEQ @UNKNOWN5_2
	MOVE_INT_CONSTANT $7B0001, $0E
	LDY #$0000
	LDX $04
	LDA $1E
	JSL $C209F6
	TAY
	STY $16
	JMP $E866
@UNKNOWN5_2:
	LDA a:$006D
	AND #$00A0
	BEQL $E808
	LDA $04
	CMP #$0008
	BNE @UNKNOWN11
	LDA $1E
	BEQ @UNKNOWN7
	CMP #$0013
	BEQ @UNKNOWN8
	CMP #$0018
	BEQ @UNKNOWN10
	JMP $E84A
@UNKNOWN7:
	LDA #$007A
	JSL $C0ABBF
	LDY $20
	LDX $24
	LDA $26
	JSR $E3B1
	STA $20
	JMP $E55E
@UNKNOWN8:
	LDA #$007A
	JSL $C0ABBF
	LDY #$FFFF
	LDX $28
	LDA $26
	JSR $E24F
	CMP #$0000
	BEQL $E55E
	LDA $24
	CMP #$FFFF
	BEQL $E55E
	LDA #$0001
	JMP $E8F4
@UNKNOWN10:
	LDA #$005E
	JSL $C0ABBF
	JMP $E890
@UNKNOWN11:
	LDA #$007A
	JSL $C0ABBF
	LDA $04
	CMP #$0006
	BNE @UNKNOWN15
	LDA $1E
	CMP #$0008
	BEQ @UNKNOWN12
	CMP #$000E
	BEQ @UNKNOWN13
	CMP #$0014
	BEQ @UNKNOWN14
	BRA @UNKNOWN18
@UNKNOWN12:
	LDX #$0000
	STX $22
	JMP $E4BD
@UNKNOWN13:
	LDX #$0001
	STX $22
	JMP $E4BD
@UNKNOWN14:
	LDX #$0002
	STX $22
	JMP $E4BD
@UNKNOWN15:
	LDX $04
	LDA $1E
	INC
	JSL $C20859
	TAY
	LDX $28
	LDA $26
	JSR $E24F
	JMP $E55E
	LDA a:$006D
	AND #$A000
	BEQ @UNKNOWN17_
	LDA #$007D
	JSL $C0ABBF
	LDY #$FFFF
	LDX $28
	LDA $26
	JSR $E24F
	CMP #$0000
	BEQL $E55E
	LDA $24
	CMP #$FFFF
	BEQL $E55E
	LDA #$0001
	JMP $E8F4
@UNKNOWN17_:
	LDA a:$006D
	AND #$1000
	BEQ @UNKNOWN18
	LDA #$007E
	JSL $C0ABBF
	BRA @UNKNOWN21_
@UNKNOWN18:
	LDX $18
	INX
	STX $18
	STX $02
	LDA #$000A
	CLC
	SBC $02
	JUMPGTS $E60B
	JMP $E583
	LDX $04
	LDA $1E
	JSR $1169
	LDA #$002F
	JSR $12AE
	LDY $16
	CPY #$FFFF
	BEQL $E55E
	TYA
	AND #$00FF
	STA $1E
	TYA
	AND #$FF00
	XBA
	AND #$00FF
	STA $04
	JMP $E55E
@UNKNOWN21_:
	LDA $26
	ASL
	TAX
	LDA $8C26,X
	LDY #$004C
	JSL $C08FDB
	TAX
	LDA $89D0,X
	BEQL $E55E
	LDA $26
	JSR $013B
	LDY #$0000
	STY $22
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA $89D2,X
	TAX
	TYA
	JSL $C20859
	SEP #%00100000
	STA ($2A)
	REP #%00100000
	INC $2A
	LDY $22
	INY
	STY $22
@UNKNOWN24:
	LDA $26
	ASL
	TAX
	LDA $8C26,X
	LDY #$004C
	JSL $C08FDB
	TAX
	LDY $22
	TYA
	CMP $89D0,X
	BCC @UNKNOWN23
	BRA @UNKNOWN47
@UNKNOWN46:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA ($2A)
	REP #PROC_FLAGS::ACCUM8
	INC $2A
	INY
@UNKNOWN47:
	CPY $28
	BCC @UNKNOWN46
	LDA #$0000
@UNKNOWN48:
	PLD
	RTS
