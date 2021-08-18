
ENEMY_SELECT_MODE: ;$C1E1A5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 38
	STA $04
	STA $24
	LDA $04
	STA $22
	JSR SET_9622_ONE
	CREATE_WINDOW_NEAR #WINDOW::TEXT_BATTLE
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE)+28
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	LDA a:window_stats::text_x,X
	STA $20
	LDA a:window_stats::text_y,X
	STA $1E
	LDA #$0001
	STA $1C
	STA $1A
@UNKNOWN0:
	JSR SET_9622_ONE
	LDX $1E
	LDA $20
	JSR UNKNOWN_C438A5
	LDA $24
	STA $04
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C10D7C)
	STA $02
	LDA #$0007
	SEC
	SBC $02
	CLC
	ADC #.LOWORD(UNKNOWN_7E895A)
	TAY
	STY $18
	LDX #$0003
	STX $16
	BRA @UNKNOWN4
@UNKNOWN1:
	CPX $1C
	BNE @UNKNOWN2
.IF CLEAN_ROM
	LDA #$0010
.ELSE
	LDA #$0060
.ENDIF
	BRA @UNKNOWN3
@UNKNOWN2:
.IF CLEAN_ROM
	LDA #$0030
.ELSE
	LDA #$0060
.ENDIF
@UNKNOWN3:
	JSR a:.LOWORD(PRINT_LETTER)
	LDX $16
	DEX
	STX $16
@UNKNOWN4:
	TXA
	CMP $02
	BEQ @UNKNOWN5
	BCS @UNKNOWN1
@UNKNOWN5:
	BRA @UNKNOWN9
@UNKNOWN6:
	CPX $1C
	BNE @UNKNOWN7
.IF CLEAN_ROM
	LDA #$0010
.ELSE
	LDA #$0060
.ENDIF
	BRA @UNKNOWN8
@UNKNOWN7:
.IF CLEAN_ROM
	LDA #$0030
.ELSE
	LDA #$0060
.ENDIF
@UNKNOWN8:
	STA $02
	LDY $18
	LDA a:.LOWORD(RAM),Y
	AND #$00FF
	CLC
	ADC $02
	INY
	STY $18
	JSR a:.LOWORD(PRINT_LETTER)
	LDX $16
	DEX
	STX $16
@UNKNOWN9:
	CPX #$0000
	BNE @UNKNOWN6
	JSR CLEAR_9622
	JSL UNKNOWN_C12DD5
@UNKNOWN10:
	JSL UNKNOWN_C12DD5
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::LEFT
	BEQ @UNKNOWN11
	LDA $1C
	CMP #$0003
	BCS @UNKNOWN11
	INC $1C
	LDA $1A
	OPTIMIZED_MULT $04, 10
	STA $1A
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN11:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::RIGHT
	BEQ @UNKNOWN12
	LDA $1C
	CMP #$0001
	BCC @UNKNOWN12
	BEQ @UNKNOWN12
	DEC $1C
	MOVE_INT_CONSTANT 10, $0A
	MOVE_INT832 $1A, $06
	JSL DIVISION32
	LDA $06
	STA $1A
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN12:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::UP
	BEQ @UNKNOWN15
	MOVE_INT_CONSTANT 10, $0A
	LDY $1A
	LDA $04
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $06
	STZ $08
	JSL MODULUS32S
	MOVE_INT_CONSTANT 9, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN13
	LDA $06
	CMP $0A
@UNKNOWN13:
	BEQ @UNKNOWN14
	LDA $04
	CLC
	ADC $1A
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN14:
	LDA $1A
	OPTIMIZED_MULT $04, 9
	STA $02
	LDA $24
	STA $04
	SEC
	SBC $02
	STA $04
	STA $24
	JMP a:.LOWORD(@UNKNOWN21)
@UNKNOWN15:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::DOWN
	BEQ @UNKNOWN18
	MOVE_INT_CONSTANT 10, $0A
	LDY $1A
	LDA $04
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA $06
	STZ $08
	JSL MODULUS32S
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN16
	LDA $06
	CMP $0A
@UNKNOWN16:
	BEQ @UNKNOWN17
	LDA $04
	SEC
	SBC $1A
	STA $04
	STA $24
	BRA @UNKNOWN21
@UNKNOWN17:
	LDA $1A
	OPTIMIZED_MULT $04, 9
	STA $02
	LDA $24
	STA $04
	CLC
	ADC $02
	STA $04
	STA $24
	BRA @UNKNOWN21
@UNKNOWN18:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN19
	LDX $04
	STX $16
	JMP a:.LOWORD(@UNKNOWN31)
@UNKNOWN19:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BNE @UNKNOWN20
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN20:
	LDX $22
	STX $16
	JMP a:.LOWORD(@UNKNOWN31)
@UNKNOWN21:
	LDA $04
	BNE @UNKNOWN22
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN22:
	LDA $04
	CMP #$01E2
	BCC @UNKNOWN23
	BEQ @UNKNOWN23
	LDA #$01E2
	STA $04
	STA $24
@UNKNOWN23:
	LDA $04
	STA .LOWORD(CURRENT_BATTLE_GROUP)
	LOADPTR BTL_ENTRY_PTR_TABLE, $0A
	LDA $04
	ASL
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	LDY #battle_entry_ptr_entry::pointer+2
	LDA [$0A],Y
	TAY
	LDA [$0A]
	STA $06
	STY $08
	STZ .LOWORD(ENEMIES_IN_BATTLE)
	BRA @UNKNOWN26
@UNKNOWN24:
	LDA .LOWORD(ENEMIES_IN_BATTLE)
	ASL
	TAX
	LDY #$0001
	LDA [$06],Y
	STA .LOWORD(UNKNOWN_7E9F8C),X
	INC .LOWORD(ENEMIES_IN_BATTLE)
@UNKNOWN25:
	LDX $14
	TXY
	DEX
	STX $14
	CPY #$0000
	BNE @UNKNOWN24
	LDA #$0003
	CLC
	ADC $06
	STA $06
@UNKNOWN26:
	MOVE_INT $06, $0A
	LDA [$0A]
	AND #$00FF
	TAX
	STX $14
	CPX #$00FF
	BNE @UNKNOWN25
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C2EEE7
	LDY #$0008
	STY $16
	BRA @UNKNOWN28
@UNKNOWN27:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$004E
	REP #PROC_FLAGS::ACCUM8
	TYA
	TXY
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	JSL MEMSET16
	LDY $16
	INY
	STY $16
@UNKNOWN28:
	CPY #$0020
	BCC @UNKNOWN27
	LDY #$0000
	STY $18
	BRA @UNKNOWN30
@UNKNOWN29:
	TYA
	LDY #$004E
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	TAX
	STX $12
	LDY $18
	TYA
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_7E9F8C),X
	LDX $12
	JSL BATTLE_INIT_ENEMY_STATS
	LDY $18
	INY
	STY $18
@UNKNOWN30:
	CPY .LOWORD(ENEMIES_IN_BATTLE)
	BCC @UNKNOWN29
	JSL UNKNOWN_C2F121
	LDA #$0018
	JSL UNKNOWN_C0856B
	JSL UNKNOWN_C08744
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN31:
	LDA #$000E
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDX $16
	TXA
	PLD
	RTL
