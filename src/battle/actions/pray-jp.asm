
BTLACT_PRAY: ;$C2AD1B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0010
	JSR a:.LOWORD(RAND_LIMIT)
	TAX
	LDA f:PRAYER_LIST,X
	AND #$00FF
	STA $16
	LOADPTR PRAYER_TEXT_PTRS, $06
	LDA $16
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $0A, $0E
	JSL DISPLAY_IN_BATTLE_TEXT
	LDA $16
	BEQ @UNKNOWN7
	CMP #$0001
	BEQ @UNKNOWN8
	CMP #$0002
	BEQ @UNKNOWN9
	CMP #$0003
	BNE @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN0:
	CMP #$0004
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN11)
@UNKNOWN1:
	CMP #$0005
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN2:
	CMP #$0006
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN3:
	CMP #$0007
	BNE @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN4:
	CMP #$0008
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN15)
@UNKNOWN5:
	CMP #$0009
	BNE @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN16)
@UNKNOWN6:
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN7:
	JSL TARGET_ALLIES
	JSL REMOVE_NPC_TARGETTING
	LOADPTR BTLACT_PRAY_SUBTLE, $06
	MOVE_INT $06, $12
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN8:
	JSL TARGET_ALLIES
	JSL REMOVE_NPC_TARGETTING
	LOADPTR BTLACT_PRAY_WARM, $06
	MOVE_INT $06, $12
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN9:
	JSL TARGET_ALLIES
	JSL REMOVE_NPC_TARGETTING
	LOADPTR BTLACT_PRAY_MYSTERIOUS, $06
	MOVE_INT $06, $12
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN10:
	JSL TARGET_ALLIES
	JSL REMOVE_NPC_TARGETTING
	JSR a:.LOWORD(REMOVE_DEAD_TARGETTING)
	MOVE_INT .LOWORD(BATTLER_TARGET_FLAGS), $06
	MOVE_INT $06, $0E
	JSL RANDOM_TARGETTING
	MOVE_INT $06, .LOWORD(BATTLER_TARGET_FLAGS)
	LOADPTR BTLACT_PRAY_GOLDEN, $06
	MOVE_INT $06, $12
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN11:
	JSL TARGET_ALL_ENEMIES
	JSL REMOVE_NPC_TARGETTING
	JSR a:.LOWORD(REMOVE_DEAD_TARGETTING)
	MOVE_INT .LOWORD(BATTLER_TARGET_FLAGS), $06
	MOVE_INT $06, $0E
	JSL RANDOM_TARGETTING
	MOVE_INT $06, .LOWORD(BATTLER_TARGET_FLAGS)
	LOADPTR BTLACT_PSI_ROCKIN_B, $06
	MOVE_INT $06, $12
	BRA @UNKNOWN17
@UNKNOWN12:
	JSL TARGET_ALL
	LOADPTR BTLACT_PSI_FLASH_A, $06
	MOVE_INT $06, $12
	BRA @UNKNOWN17
@UNKNOWN13:
	JSL TARGET_ALL
	LOADPTR BTLACT_PRAY_RAINBOW, $06
	MOVE_INT $06, $12
	BRA @UNKNOWN17
@UNKNOWN14:
	JSL TARGET_ALL
	LOADPTR BTLACT_PRAY_AROMA, $06
	MOVE_INT $06, $12
	BRA @UNKNOWN17
@UNKNOWN15:
	JSL TARGET_ALL
	LOADPTR BTLACT_PRAY_RENDING_SOUND, $06
	MOVE_INT $06, $12
	BRA @UNKNOWN17
@UNKNOWN16:
	JSL TARGET_ALL
	LOADPTR BTLACT_DEFENSE_DOWN_A, $06
	MOVE_INT $06, $12
@UNKNOWN17:
	LDA $16
	CMP #$0006
	BEQ @UNKNOWN18
	JSR a:.LOWORD(REMOVE_DEAD_TARGETTING)
@UNKNOWN18:
	MOVE_INT $12, $06
	MOVE_INT $06, $0E
	JSL UNKNOWN_C240A4
	MOVE_INT_CONSTANT 0, .LOWORD(BATTLER_TARGET_FLAGS)
	PLD
	RTL
