
CC_1C_TREE: ;$C17D94
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXA
	BEQL @UNKNOWN21
	CMP #$0001
	BEQL @UNKNOWN22
	CMP #$0002
	BEQL @UNKNOWN23
	CMP #$0003
	BEQL @UNKNOWN24
	CMP #$0004
	BEQL @UNKNOWN25
	CMP #$0005
	BEQL @UNKNOWN26
	CMP #$0006
	BEQL @UNKNOWN27
	CMP #$0007
	BEQL @UNKNOWN28
	CMP #$0008
	BEQL @UNKNOWN29
	CMP #$0009
	BEQL @UNKNOWN30
	CMP #$000A
	BEQL @UNKNOWN31
	CMP #$000B
	BEQL @UNKNOWN32
	CMP #$000C
	BEQL @UNKNOWN33
.IF .DEFINED(USA)
	CMP #$0014
	BEQL @UNKNOWN34
	CMP #$0015
	BEQL @UNKNOWN35
.ENDIF
	CMP #$000D
	BEQL @UNKNOWN36
	CMP #$000E
	BEQL @UNKNOWN37
	CMP #$000F
	BEQL @UNKNOWN38
	CMP #$0011
	BEQL @UNKNOWN39
	CMP #$0012
	BEQL @UNKNOWN40
	CMP #$0013
	BEQL @UNKNOWN41
	JMP @UNKNOWN42
@UNKNOWN21:
	LDA #.LOWORD(CC_1C_00)
	JMP @UNKNOWN43
@UNKNOWN22:
	LDA #.LOWORD(CC_1C_01)
	JMP @UNKNOWN43
@UNKNOWN23:
	LDA #.LOWORD(CC_1C_02)
	JMP @UNKNOWN43
@UNKNOWN24:
	LDA #.LOWORD(CC_1C_03)
	JMP @UNKNOWN43
@UNKNOWN25:
	JSR SHOW_HPPP_WINDOWS
	JMP @UNKNOWN42
@UNKNOWN26:
	LDA #.LOWORD(CC_1C_05)
	JMP @UNKNOWN43
@UNKNOWN27:
	LDA #.LOWORD(CC_1C_06)
	JMP @UNKNOWN43
@UNKNOWN28:
	LDA #.LOWORD(CC_1C_07)
	JMP @UNKNOWN43
@UNKNOWN29:
	LDA #.LOWORD(CC_1C_08)
	JMP @UNKNOWN43
@UNKNOWN30:
	LDA #.LOWORD(CC_1C_09)
	JMP @UNKNOWN43
@UNKNOWN31:
	LDA #.LOWORD(CC_1C_0A)
	JMP @UNKNOWN43
@UNKNOWN32:
	LDA #.LOWORD(CC_1C_0B)
	JMP @UNKNOWN43
@UNKNOWN33:
	LDA #.LOWORD(CC_1C_0C)
	JMP @UNKNOWN43
@UNKNOWN34:
.IF .DEFINED(USA)
	LDA #.LOWORD(CC_1C_14)
	.IF .DEFINED(PROTOTYPE19950327)
		JMP @UNKNOWN43
	.ELSE
		BRA @UNKNOWN43
	.ENDIF
@UNKNOWN35:
	LDA #.LOWORD(CC_1C_15)
	.IF .DEFINED(PROTOTYPE19950327)
		JMP @UNKNOWN43
	.ELSE
		BRA @UNKNOWN43
	.ENDIF
.ENDIF
@UNKNOWN36:
.IF .DEFINED(USA)
	LDA #$0000
	JSL UNKNOWN_C3E75D
.ENDIF
	JSR RETURN_BATTLE_ATTACKER_ADDRESS
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$0050
.IF .DEFINED(JPN)
	JSR PRINT_STRING
.ELSE
	JSL UNKNOWN_C447FB
.ENDIF
	BRA @UNKNOWN42
@UNKNOWN37:
.IF .DEFINED(USA)
	LDA #$0001
	JSL UNKNOWN_C3E75D
.ENDIF
	JSR RETURN_BATTLE_TARGET_ADDRESS
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$0050
.IF .DEFINED(JPN)
	JSR PRINT_STRING
.ELSE
	JSL UNKNOWN_C447FB
.ENDIF
	BRA @UNKNOWN42
@UNKNOWN38:
	JSR UNKNOWN_C1AD26
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	BRA @UNKNOWN42
@UNKNOWN39:
.IF .DEFINED(PROTOTYPE19950327) || .DEFINED(JPN)
	JSL UPDATE_PARTY
	JSL UNKNOWN_C2277C
	JSR UNKNOWN_C1931B
	JSL UNKNOWN_C2272F
.IF .DEFINED(JPN)
	CMP #$0001
	BLTEQ @UNKNOWN42
	LDA #$0066
	JSR PRINT_LETTER
	LDA #$0076
	JSR PRINT_LETTER
.ENDIF
	BRA @UNKNOWN42
.ELSE
	LDA #.LOWORD(CC_1C_11)
	BRA @UNKNOWN43
.ENDIF
@UNKNOWN40:
	LDA #.LOWORD(CC_1C_12)
	BRA @UNKNOWN43
@UNKNOWN41:
	LDA #.LOWORD(CC_1C_13)
	BRA @UNKNOWN43
@UNKNOWN42:
	LDA #$0000
@UNKNOWN43:
	PLD
	RTS
