
CC_1B_TREE: ;$C17C36
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TAY
	STY $16
	TXA
	BEQ @UNKNOWN3
	CMP #$0001
	BEQ @UNKNOWN4
	CMP #$0002
	BEQ @UNKNOWN5
	CMP #$0003
	BEQ @UNKNOWN8
	CMP #$0004
	BEQL @UNKNOWN11
	CMP #$0005
	BEQL @UNKNOWN12
	CMP #$0006
	BEQL @UNKNOWN13
	JMP @UNKNOWN14
@UNKNOWN3:
	JSR TRANSFER_ACTIVE_MEM_STORAGE
	JMP @UNKNOWN14
@UNKNOWN4:
	JSR TRANSFER_STORAGE_MEM_ACTIVE
	JMP @UNKNOWN14
@UNKNOWN5:
	JSR GET_WORKING_MEMORY
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BNE @UNKNOWN7
	LDA #.LOWORD(CC_0A)
	JMP @UNKNOWN15
@UNKNOWN7:
	LDY $16
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDA #$0004
	CLC
	ADC $06
	STA $06
	STA __BSS_START__,Y
	LDA $08
	STA __BSS_START__+2,Y
	JMP @UNKNOWN14
@UNKNOWN8:
	JSR GET_WORKING_MEMORY
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BEQ @UNKNOWN10
	LDA #.LOWORD(CC_0A)
	JMP @UNKNOWN15
@UNKNOWN10:
	LDY $16
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDA #$0004
	CLC
	ADC $06
	STA $06
	STA __BSS_START__,Y
	LDA $08
	STA __BSS_START__+2,Y
	JMP @UNKNOWN14
@UNKNOWN11:
	JSR GET_WORKING_MEMORY
	MOVE_INT $06, $12
	JSR GET_ARGUMENT_MEMORY
	MOVE_INT $06, $0A
.IF .DEFINED(JPN)
	MOVE_INT $0A, $0E
.ELSE
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
.ENDIF
	JSR SET_WORKING_MEMORY
	MOVE_INT $12, $06
	MOVE_INT $06, $0E
	JSR SET_ARGUMENT_MEMORY
	BRA @UNKNOWN14
@UNKNOWN12:
	JSR GET_WORKING_MEMORY
<<<<<<< HEAD
	MOVE_INT @VIRTUAL06, TEXT_MAIN_REGISTER_BACKUP
	JSR GET_ARGUMENT_MEMORY
	MOVE_INT @VIRTUAL06, TEXT_SUB_REGISTER_BACKUP
=======
	MOVE_INT $06, WRAM_SCRIPT_WORK_MEMORY
	JSR GET_ARGUMENT_MEMORY
	MOVE_INT $06, WRAM_SCRIPT_ARG_MEMORY
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR GET_SECONDARY_MEMORY
	SEP #PROC_FLAGS::ACCUM8
	STA TEXT_LOOP_REGISTER_BACKUP
	BRA @UNKNOWN14
@UNKNOWN13:
	.A16
<<<<<<< HEAD
	MOVE_INT TEXT_MAIN_REGISTER_BACKUP, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	MOVE_INT TEXT_SUB_REGISTER_BACKUP, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
=======
	MOVE_INT WRAM_SCRIPT_WORK_MEMORY, $06
	MOVE_INT $06, $0E
	JSR SET_WORKING_MEMORY
	MOVE_INT WRAM_SCRIPT_ARG_MEMORY, $06
	MOVE_INT $06, $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR SET_ARGUMENT_MEMORY
	LDA TEXT_LOOP_REGISTER_BACKUP
	AND #$00FF
	JSR SET_SECONDARY_MEMORY
@UNKNOWN14:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
@UNKNOWN15:
	PLD
	RTS
