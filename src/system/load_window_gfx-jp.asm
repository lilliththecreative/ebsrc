
LOAD_WINDOW_GFX: ;$C47C3F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 40
	LOADPTR TEXT_WINDOW_GFX, $0E
	LOADPTR UNKNOWN_7F0000, $12
	JSL DECOMP
	LOADPTR UNKNOWN_7F3200, $0E
	LDX #$0600
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
	.A16
	LDA .LOWORD(GAME_STATE)+game_state::text_flavour
	AND #$00FF
	DEC
	OPTIMIZED_MULT $04, 3
	TAX
	INX
	INX
	LDA f:TEXT_WINDOW_PROPERTIES,X
	AND #$00FF
	BEQ @UNKNOWN1
	LOADPTR FLAVOURED_TEXT_GFX, $0E
	LOADPTR UNKNOWN_7F0100, $12
	JSL DECOMP
	.A16
@UNKNOWN1:
	LOADPTR UNKNOWN_7F2A00, $24
	LDA #$0000
	STA $22
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN2:
@UNKNOWN3:
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $1E
	LDY #$0000
	STY $1C
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN5:
	LDA [$1E]
	AND #$00FF
	TAX
	STX $02
	TXA
	AND #$00F0
	CLC
	ADC $02
	ASL
	ASL
	ASL
	ASL
	STA $0A
	STZ $0C
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0000, $0A
	LOADPTR UNKNOWN_7F0070, $06
	MOVE_INT $06, $18
	LDX #$0000
	BRA @UNKNOWN5___
@UNKNOWN5__:
	LDA [$0A]
	STA $02
	XBA
	AND #$00FF
	EOR #$00FF
	PHA
	LDA [$06]
	AND #$00FF
	STA $04
	LDA $02
	AND #$FF00
	ORA $04
	PLY
	STY $02
	ORA $02
	STA [$24]
	LDY #$0100
	LDA [$0A],Y
	STA $02
	XBA
	AND #$00FF
	EOR #$00FF
	PHA
	LDA [$06],Y
	AND #$00FF
	STA $04
	LDA $02
	AND #$FF00
	ORA $04
	PLY
	STY $02
	ORA $02
	LDY #$0100
	STA [$24],Y
	MOVE_INT $24, $06
	INC $06
	INC $06
	MOVE_INT $06, $24
	INC $0A
	INC $0A
	MOVE_INT $18, $06
	INC $06
	INC $06
	MOVE_INT $06, $18
	INX
@UNKNOWN5___:
	CPX #$0008
	BCS @UNKNOWN5_
	BEQ @UNKNOWN5_
	JMP @UNKNOWN5__
@UNKNOWN5_:
	MOVE_INT $1E, $06
	INC $06
	MOVE_INT $06, $1E
	LDY $1C
	INY
	STY $1C
@UNKNOWN6:
	CPY #$0004
	BCS @UNKNOWN7
	BEQ @UNKNOWN7
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN7:
	LDA $22
	INC
	STA $22
@UNKNOWN8:
	CMP #$0004
	BCS @UNKNOWN9
	BEQ @UNKNOWN9
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN9:
	LOADPTR UNKNOWN_7F2C00, $1E
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_2, $24
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN14:
	CMP #$0020
	BNE @UNKNOWN15
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN15:
	STA $02
	AND #$FFF0
	CLC
	ADC $02
	ASL
	ASL
	ASL
	ASL
	STA $0A
	STZ $0C
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0000, $0A
	LOADPTR UNKNOWN_7F0070, $06
	MOVE_INT $06, $18
	LDX #$0000
	BRA @UNKNOWN17
@UNKNOWN16:
	LDA [$0A]
	STA $16
	XBA
	AND #$00FF
	EOR #$00FF
	STA $02
	LDA [$06]
	AND #$00FF
	STA $04
	LDA $16
	AND #$FF00
	ORA $04
	ORA $02
	STA [$1E]
	LDY #$0100
	LDA [$0A],Y
	STA $16
	XBA
	AND #$00FF
	EOR #$00FF
	STA $02
	LDA [$06],Y
	AND #$00FF
	STA $04
	LDA $16
	AND #$FF00
	ORA $04
	ORA $02
	STA [$1E],Y
	MOVE_INT $1E, $06
	INC $06
	INC $06
	MOVE_INT $06, $1E
	INC $0A
	INC $0A
	MOVE_INT $18, $06
	INC $06
	INC $06
	MOVE_INT $06, $18
	INX
@UNKNOWN17:
	CPX #$0008
	BCC @UNKNOWN16
@UNKNOWN18:
	MOVE_INT $24, $06
	INC $06
	INC $06
	MOVE_INT $06, $24
@UNKNOWN19:
	LDA [$24]
	BEQ @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN20:
	PLD
	RTL
