
UNKNOWN_C04F9F: ;$C04F9F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
.IF .DEFINED(JPN)
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::player_controlled_party_members,X
.ELSE
	LDA GAME_STATE+game_state::player_controlled_party_members,Y
.ENDIF
	AND #$00FF
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	STX $0E
	LDY #$0064
	LDA a:char_struct::max_hp,X
	STA $04
	ASL
	ASL
	ADC $04
	ASL
	ASL
	JSL DIVISION16S_DIVISOR_POSITIVE
	CMP a:char_struct::current_hp,X
	BLTEQ @UNKNOWN1
	LDY $10
	TYA
	ASL
	TAX
	LDA HP_ALERT_SHOWN,X
	BNE @UNKNOWN0
	LDX $0E
	LDA a:char_struct::unknown53,X
	INC
	JSL SHOW_HP_ALERT
@UNKNOWN0:
	LDY $10
	TYA
	ASL
	TAX
<<<<<<< HEAD
	LDA #1
	STA HP_ALERT_SHOWN,X
=======
	LDA #$0001
	STA UNKNOWN_7E5D8C,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN2
@UNKNOWN1:
	LDY $10
	TYA
	ASL
	TAX
	STZ HP_ALERT_SHOWN,X
@UNKNOWN2:
	PLD
	RTS
