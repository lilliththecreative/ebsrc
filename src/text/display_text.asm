
DISPLAY_TEXT: ;$C186B1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 36
	MOVE_INT $32, $06
	MOVE_INT $06, $20
	LDY #$0000
	STY $1E
	LOADPTR BATTLE_BACK_ROW_TEXT+12, $0A
	MOVE_INT $0A, $1A
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT $06, $16
	MOVE_INT $06, $0A
	MOVE_INT $20, $06
	CMP $0C
	BNE @UNKNOWN0
	LDA $06
	CMP $0A
@UNKNOWN0:
	BNE @UNKNOWN1
	MOVE_INT $20, $06
	MOVE_INT $06, $2A
	JMP a:.LOWORD(@UNKNOWN74)
@UNKNOWN1:
	JSR a:.LOWORD(UNKNOWN_C14012)
	STA $14
	MOVE_INT $20, $06
	MOVE_INT $06, $0E
	LDA $14
	JSR a:.LOWORD(UNKNOWN_C1866D)
	STA $02
	STA $12
	LDA $02
	BNE @UNKNOWN2
	MOVE_INT $16, $06
	MOVE_INT $06, $2A
	JMP a:.LOWORD(@UNKNOWN74)
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E5E6E)
	BEQ @UNKNOWN4
	LDY $1E
	BNE @UNKNOWN4
	LDA .LOWORD(UNKNOWN_7E9660)
	BNE @UNKNOWN3
	MOVE_INT $1A, $0A
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LDA $12
	STA $02
	JSL UNKNOWN_C445E1
	BRA @UNKNOWN4
@UNKNOWN3:
	DEC .LOWORD(UNKNOWN_7E9660)
@UNKNOWN4:
	MOVE_INT $1A, $0A
	LDA [$0A]
	AND #$00FF
	BEQ @UNKNOWN5
	AND #$00FF
	STA $14
	INC $0A
	MOVE_INT $0A, $1A
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA $12
	STA $02
	LDX $02
	TXY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA [$06]
	AND #$00FF
	STA $14
	INC $06
	TXY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
@UNKNOWN6:
	LDY $1E
	BEQ @UNKNOWN7
	LDA $14
	TAX
	LDA $12
	STA $02
	STY $02
	STA a:.LOWORD(UNKNOWN_7E00C0)
	PEA $87E6
	LDA $02
	DEC
	PHA
	LDA a:.LOWORD(UNKNOWN_7E00C0)
	RTS
	TAY
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN7:
	LDA $14
	CMP #$0015
	BEQ @COMPRESSION_BANK_ONE
	CMP #$0016
	BEQ @COMPRESSION_BANK_TWO
	CMP #$0017
	BNE @UNKNOWN8
	JMP a:.LOWORD(@COMPRESSION_BANK_THREE)
@UNKNOWN8:
	JMP a:.LOWORD(@UNKNOWN12)
@COMPRESSION_BANK_ONE:
	LDA $12
	STA $02
	LDX $02
	TXY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $0A
	LOADPTR COMPRESSED_TEXT_PTRS, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	INC $0A
	TXY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	LDA [$06]
	AND #$00FF
	MOVE_INTX $06, $0A
	INC $0A
	MOVE_INTX $0A, $1A
	JMP a:.LOWORD(@UNKNOWN12)
@COMPRESSION_BANK_TWO:
	LDA $12
	STA $02
	LDX $02
	TXY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $0A
	LOADPTR COMPRESSED_TEXT_PTRS+1024, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	INC $0A
	TXY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	LDA [$06]
	AND #$00FF
	MOVE_INTX $06, $0A
	INC $0A
	MOVE_INTX $0A, $1A
	BRA @UNKNOWN12
@COMPRESSION_BANK_THREE:
	LDA $12
	STA $02
	LDX $02
	TXY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $0A
	LOADPTR COMPRESSED_TEXT_PTRS+2048, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	INC $0A
	TXY
	MOVE_INT_YPTRDEST $0A, a:.LOWORD(RAM)
	LDA [$06]
	AND #$00FF
	MOVE_INTX $06, $0A
	INC $0A
	MOVE_INTX $0A, $1A
@UNKNOWN12:
	CMP #$0020
	BCC @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN72)
@UNKNOWN13:
	STZ .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	CMP #$0000
	BNE @UNKNOWN14
	JMP a:.LOWORD(@CC_00)
@UNKNOWN14:
	CMP #$0001
	BNE @UNKNOWN15
	JMP a:.LOWORD(@CC_01)
@UNKNOWN15:
	CMP #$0002
	BNE @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN73)
@UNKNOWN16:
	CMP #$0003
	BNE @UNKNOWN17
	JMP a:.LOWORD(@UNKNOWN46)
@UNKNOWN17:
	CMP #$0004
	BNE @UNKNOWN18
	JMP a:.LOWORD(@UNKNOWN47)
@UNKNOWN18:
	CMP #$0005
	BNE @UNKNOWN19
	JMP a:.LOWORD(@UNKNOWN48)
@UNKNOWN19:
	CMP #$0006
	BNE @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN49)
@UNKNOWN20:
	CMP #$0007
	BNE @UNKNOWN21
	JMP a:.LOWORD(@UNKNOWN50)
@UNKNOWN21:
	CMP #$0008
	BNE @UNKNOWN22
	JMP a:.LOWORD(@UNKNOWN51)
@UNKNOWN22:
	CMP #$0009
	BNE @UNKNOWN23
	JMP a:.LOWORD(@UNKNOWN52)
@UNKNOWN23:
	CMP #$000A
	BNE @UNKNOWN24
	JMP a:.LOWORD(@UNKNOWN53)
@UNKNOWN24:
	CMP #$000B
	BNE @UNKNOWN25
	JMP a:.LOWORD(@UNKNOWN54)
@UNKNOWN25:
	CMP #$000C
	BNE @UNKNOWN26
	JMP a:.LOWORD(@UNKNOWN55)
@UNKNOWN26:
	CMP #$000D
	BNE @UNKNOWN27
	JMP a:.LOWORD(@UNKNOWN56)
@UNKNOWN27:
	CMP #$000E
	BNE @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN57)
@UNKNOWN28:
	CMP #$000F
	BNE @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN58)
@UNKNOWN29:
	CMP #$0010
	BNE @UNKNOWN30
	JMP a:.LOWORD(@UNKNOWN59)
@UNKNOWN30:
	CMP #$0011
	BNE @UNKNOWN31
	JMP a:.LOWORD(@UNKNOWN60)
@UNKNOWN31:
	CMP #$0012
	BNE @UNKNOWN32
	JMP a:.LOWORD(@UNKNOWN61)
@UNKNOWN32:
	CMP #$0013
	BNE @UNKNOWN33
	JMP a:.LOWORD(@UNKNOWN62)
@UNKNOWN33:
	CMP #$0014
	BNE @UNKNOWN34
	JMP a:.LOWORD(@UNKNOWN63)
@UNKNOWN34:
	CMP #$0018
	BNE @UNKNOWN35
	JMP a:.LOWORD(@UNKNOWN64)
@UNKNOWN35:
	CMP #$0019
	BNE @UNKNOWN36
	JMP a:.LOWORD(@UNKNOWN65)
@UNKNOWN36:
	CMP #$001A
	BNE @UNKNOWN37
	JMP a:.LOWORD(@UNKNOWN66)
@UNKNOWN37:
	CMP #$001B
	BNE @UNKNOWN38
	JMP a:.LOWORD(@UNKNOWN67)
@UNKNOWN38:
	CMP #$001C
	BNE @UNKNOWN39
	JMP a:.LOWORD(@UNKNOWN68)
@UNKNOWN39:
	CMP #$001D
	BNE @UNKNOWN40
	JMP a:.LOWORD(@UNKNOWN69)
@UNKNOWN40:
	CMP #$001E
	BNE @UNKNOWN41
	JMP a:.LOWORD(@UNKNOWN70)
@UNKNOWN41:
	CMP #$001F
	BNE @UNKNOWN42
	JMP a:.LOWORD(@UNKNOWN71)
@UNKNOWN42:
	JMP a:.LOWORD(@UNKNOWN2)
@CC_00:
	JSL PRINT_NEWLINE
	JMP a:.LOWORD(@UNKNOWN2)
@CC_01:
	JSR a:.LOWORD(GET_TEXT_X)
	CMP #$0000
	BNE @UNKNOWN45
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN45:
	JSL PRINT_NEWLINE
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN46:
	LDX #$0000
	LDA #$0001
	JSR a:.LOWORD(CC_13_14)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN47:
	LDY #.LOWORD(CC_04)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN48:
	LDY #.LOWORD(CC_05)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN49:
	LDY #.LOWORD(CC_06)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN50:
	LDY #.LOWORD(CC_07)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN51:
	LDY #.LOWORD(CC_08)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN52:
	LDY #.LOWORD(CC_09)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN53:
	LDY #.LOWORD(CC_0A)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN54:
	LDY #.LOWORD(CC_0B)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN55:
	LDY #.LOWORD(CC_0C)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN56:
	LDY #.LOWORD(CC_0D)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN57:
	LDY #.LOWORD(CC_0E)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN58:
	JSR a:.LOWORD(INCREMENT_SECONDARY_MEMORY)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN59:
	LDY #.LOWORD(CC_10)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN60:
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	JSR a:.LOWORD(UNKNOWN_C11383)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN61:
	JSR a:.LOWORD(CC_12)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN62:
	LDX #$0000
	TXA
	JSR a:.LOWORD(CC_13_14)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN63:
	LDX #$0001
	TXA
	JSR a:.LOWORD(CC_13_14)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN64:
	LDY #.LOWORD(CC_18_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN65:
	LDY #.LOWORD(CC_19_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN66:
	LDY #.LOWORD(CC_1A_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN67:
	LDY #.LOWORD(CC_1B_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN68:
	LDY #.LOWORD(CC_1C_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN69:
	LDY #.LOWORD(CC_1D_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN70:
	LDY #.LOWORD(CC_1E_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN71:
	LDY #.LOWORD(CC_1F_TREE)
	STY $1E
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN72:
	JSR a:.LOWORD(PRINT_LETTER)
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN73:
	LDA $12
	STA $02
	LDY $02
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C1869D)
	JSR a:.LOWORD(UNKNOWN_C14049)
	MOVE_INT $06, $2A
@UNKNOWN74:
	PLD
	RTL
