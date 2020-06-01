
CHAR_SELECT_PROMPT: ;$C127EF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 52
	STX $32
	STA $30
	MOVE_INT $46, $06
	MOVE_INT $06, $2C
	MOVE_INT $42, $0A
	MOVE_INT $0A, $28
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $26
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	MOVE_INT $06, $22
	LDA $30
	CMP #$0001
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN0:
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN1
	LDX #$0033
	BRA @UNKNOWN2
@UNKNOWN1:
	CLC
	ADC #$0028
	TAX
	DEX
@UNKNOWN2:
	STX $20
	CREATE_WINDOW_NEAR $20
	LDA #$0000
	STA $02
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE) + game_state::party_members
	STA $04
	STA $1E
	LDX $04
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	JSL GET_PARTY_CHARACTER_NAME
	MOVE_INT $06, $0E
	LDX #$0006
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CA2)+2
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0000
	LDA $02
	STA $04
	ASL
	ADC $04
	ASL
	TAX
	STX $1C
	LDA $1E
	STA $04
	LDX $04
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDX $1C
	JSR a:.LOWORD(UNKNOWN_C1153B)
	INC $02
@UNKNOWN4:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC $02
	BVS @UNKNOWN5
	BMI @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN5:
	BPL @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN6:
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	LDA $32
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $1E
	JSR a:.LOWORD(UNKNOWN_C11F8A)
	LDA $20
	JSL CLOSE_WINDOW
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN7:
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	CMP #$FFFF
	BEQ @UNKNOWN8
	LDA $30
	CMP #$0002
	BNE @UNKNOWN9
@UNKNOWN8:
	LDX #$0000
	BRA @UNKNOWN10
@UNKNOWN9:
	LDX .LOWORD(PSI_WINDOW_CHARACTER)
@UNKNOWN10:
	STX $04
	MOVE_INT_CONSTANT NULL, $06
	LDA $0C
	CMP $08
	BNE @UNKNOWN11
	LDA $0A
	CMP $06
@UNKNOWN11:
	BEQ @UNKNOWN12
	LDX $04
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	PHA
	MOVE_INT $0A, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN12:
	STZ .LOWORD(UNKNOWN_7E5E7C)
	LDA #$000A
	STA $02
	STA $20
@UNKNOWN13:
	LDA $30
	BNE @UNKNOWN14
	LDA $04
	JSL UNKNOWN_C43573
@UNKNOWN14:
	JSL CLEAR_9622
	JSL UNKNOWN_C12DD5
	LDA $04
	STA $1A
	LDA .LOWORD(UNKNOWN_7E5E7A)
	CMP #$FFFF
	BEQ @UNKNOWN15
	LDA .LOWORD(UNKNOWN_7E5E7A)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	CMP #$FFFF
	BEQ @UNKNOWN15
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $18
@UNKNOWN15:
	LDA .LOWORD(UNKNOWN_7E5E7A)
	CMP #$FFFF
	BEQ @UNKNOWN16
	LDA .LOWORD(UNKNOWN_7E5E7A)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	CMP #$FFFF
	BEQ @UNKNOWN16
	LOADPTR UNKNOWN_C3E3F8+68, $06
	LDA .LOWORD(UNKNOWN_7E5E7C)
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDY #$0008
	LDA ($18),Y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDY #$0006
	LDA ($18),Y
	LDY #$000A
	CLC
	ADC ($18),Y
	DEC
	DEC
	DEC
	CLC
	ADC $02
	CLC
	ADC #$7C00
	TAY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL PREPARE_VRAM_COPY
	.A16
@UNKNOWN16:
	LDA #$0000
	STA $1E
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN17:
	JSL UNKNOWN_C12E42
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::LEFT
	BEQ @UNKNOWN20
	LDX $1A
	DEX
	STX $1A
	LDA $30
	BEQ @UNKNOWN18
	LDY #SFX::CURSOR2
	BRA @UNKNOWN19
@UNKNOWN18:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN19:
	STY $16
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E5E7C)
	JMP a:.LOWORD(@UNKNOWN32)
@UNKNOWN20:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::RIGHT
	BEQ @UNKNOWN23
	LDX $1A
	INX
	STX $1A
	LDA $30
	BEQ @UNKNOWN21
	LDY #SFX::CURSOR2
	BRA @UNKNOWN22
@UNKNOWN21:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN22:
	STY $16
	LDA #$0003
	STA .LOWORD(UNKNOWN_7E5E7C)
	BRA @UNKNOWN32
@UNKNOWN23:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN24
	LDX $04
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	TAX
	STX $1E
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN24:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN27
	LDA $32
	CMP #$0001
	BNE @UNKNOWN27
	LDX #$0000
	STX $1E
	LDA $30
	BEQ @UNKNOWN25
	LDY #SFX::CURSOR2
	BRA @UNKNOWN26
@UNKNOWN25:
	LDY #SFX::MENU_OPEN_CLOSE
@UNKNOWN26:
	TYA
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP a:.LOWORD(@UNKNOWN44)
@UNKNOWN27:
	LDA $1E
	INC
	STA $1E
@UNKNOWN28:
	LDX $20
	STX $02
	CMP $02
	BCS @UNKNOWN29
	BEQ @UNKNOWN29
	JMP a:.LOWORD(@UNKNOWN17)
@UNKNOWN29:
	LDA .LOWORD(UNKNOWN_7E5E7C)
	BNE @UNKNOWN30
	LDX #$0001
	BRA @UNKNOWN31
@UNKNOWN30:
	LDX #$0000
@UNKNOWN31:
	STX .LOWORD(UNKNOWN_7E5E7C)
	LDA #$000A
	STA $02
	STA $20
	JMP a:.LOWORD(@UNKNOWN15)
@UNKNOWN32:
	TXA
	SEC
	SBC $04
	STA $02
	STA $20
@UNKNOWN33:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $1E
	STX $02
	CLC
	SBC $02
	BVS @UNKNOWN34
	BPL @UNKNOWN36
	BRA @UNKNOWN35
@UNKNOWN34:
	BMI @UNKNOWN36
@UNKNOWN35:
	LDX #$0000
	STX $1A
	BRA @UNKNOWN39
@UNKNOWN36:
	STX $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN37
	BPL @UNKNOWN39
	BRA @UNKNOWN38
@UNKNOWN37:
	BMI @UNKNOWN39
@UNKNOWN38:
	LDA $1E
	TAX
	DEX
	STX $1A
@UNKNOWN39:
	MOVE_INT_CONSTANT NULL, $0A
	MOVE_INT $2C, $06
	CMP $0C
	BNE @UNKNOWN40
	LDA $06
	CMP $0A
@UNKNOWN40:
	BEQ @UNKNOWN41
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	PHA
	MOVE_INT $06, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
	CMP #$0000
	BNE @UNKNOWN41
	LDA $20
	STA $02
	LDX $1A
	TXA
	CLC
	ADC $02
	TAX
	STX $1A
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN41:
	LDX $1A
	TXA
	CMP $04
	BEQ @UNKNOWN43
	LDY $16
	TYA
	JSL PLAY_SOUND
	LDX $1A
	STX $04
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT $28, $0A
	CMP $08
	BNE @UNKNOWN42
	LDA $0A
	CMP $06
@UNKNOWN42:
	BEQ @UNKNOWN43
	LDX $04
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	PHA
	MOVE_INT $0A, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN43:
	LDA #$0004
	STA $02
	STA $20
	JMP a:.LOWORD(@UNKNOWN13)
@UNKNOWN44:
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5E7C)
	MOVE_INT $22, $06
	LDA $26
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDX $1E
	TXA
	PLD
	RTS
