
UNKNOWN_C121B8: ;$C121B8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	STX $1C
	STA $1A
	STZ $18
	STZ $16
	LDA .LOWORD(UNKNOWN_7EAD56)
	BEQ @UNKNOWN0
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$0001
@UNKNOWN1:
	STX $04
	LDA .LOWORD(GIYGAS_PHASE)
	BEQ @UNKNOWN2
	LDA #$0001
	STA $04
@UNKNOWN2:
	LDX $16
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C11FBC)
	STA $14
	LDX $16
	LDA $04
	JSR ENEMY_FLASHING_ON
	LDA $18
	BNE @UNKNOWN3
	LDX $16
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C120D6)
@UNKNOWN3:
	INC $18
	JSL WINDOW_TICK
@UNKNOWN4:
	JSL UNKNOWN_C12E42
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::UP
	BEQ @UNKNOWN5
	LDA $04
	BNE @UNKNOWN5
	LDA .LOWORD(UNKNOWN_7EAD58)
	BNEL @UNKNOWN16
@UNKNOWN5:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::DOWN
	BEQ @UNKNOWN6
	LDA $04
	CMP #$0001
	BNE @UNKNOWN6
	LDA .LOWORD(UNKNOWN_7EAD56)
	BNEL @UNKNOWN16
@UNKNOWN6:
	LDA #SFX::CURSOR2
	STA $12
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::LEFT
	BEQ @UNKNOWN9
	LDA $04
	STA $02
	LDY $1C
	LDX $14
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C12070)
	TAX
	STX $10
	CPX #$FFFF
	BNEL @UNKNOWN17
	LDA $04
	EOR #$0001
	STA $02
	LDY $1C
	LDX $14
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C12070)
	TAX
	STX $10
	CPX #$FFFF
	BEQL @UNKNOWN2
	JMP @UNKNOWN17
@UNKNOWN9:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::RIGHT
	BEQ @UNKNOWN12
	LDA $04
	STA $02
	LDY $1C
	LDX $14
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C12012)
	TAX
	STX $10
	CPX #$FFFF
	BNEL @UNKNOWN17
	LDA $04
	EOR #$0001
	STA $02
	LDY $1C
	LDX $14
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C12012)
	TAX
	STX $10
	CPX #$FFFF
	BEQL @UNKNOWN2
	JMP @UNKNOWN17
@UNKNOWN12:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN13
	JSR ENEMY_FLASHING_OFF
	LDY .LOWORD(UNKNOWN_7EAD56)
	LDA $04
	JSL MULT16
	CLC
	ADC $16
	TAX
	INX
	STX $0E
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JMP @UNKNOWN18
@UNKNOWN13:
	LDA a:.LOWORD(PAD_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQL @UNKNOWN4
	LDA $1A
	CMP #$0001
	BNEL @UNKNOWN4
	JSR ENEMY_FLASHING_OFF
	LDX #$0000
	STX $0E
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	BRA @UNKNOWN18
@UNKNOWN16:
	LDA #SFX::CURSOR3
	STA $12
	LDA $04
	EOR #$0001
	STA $02
	LDY $1C
	LDX $14
	DEX
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C12012)
	TAX
	STX $10
	CPX #$FFFF
	BNE @UNKNOWN17
	LDY $1C
	LDX $14
	INX
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C12070)
	TAX
	STX $10
	CPX #$FFFF
	BEQL @UNKNOWN2
@UNKNOWN17:
	STZ $18
	JSL CLEAR_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN31
	JSL WINDOW_TICK
	JSL SET_INSTANT_PRINTING
	LDX $10
	STX $16
	LDA $02
	STA $04
	LDA $12
	JSL PLAY_SOUND
	JMP @UNKNOWN2
@UNKNOWN18:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDX $0E
	TXA
	PLD
	RTS
