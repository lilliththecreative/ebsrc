
UNKNOWN_C0E516: ;$C0E516
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0001
	STA GAME_STATE + game_state::unknown90
	JSR UNKNOWN_C0E44D
	LDX PSI_TELEPORT_BETA_PROGRESS
	LDA PSI_TELEPORT_BETA_ANGLE
	JSL UNKNOWN_C41FFF
	MOVE_INT $06, $12
	AND #$FF00
	XBA
	BPL @UNKNOWN0
	ORA #$FF00
@UNKNOWN0:
	CLC
	ADC PSI_TELEPORT_BETA_X_ADJUSTMENT
	TAX
<<<<<<< HEAD
	STX PSI_TELEPORT_NEXT_X + fixed_point::integer
	LDA @LOCAL02
=======
	STX UNKNOWN_7E9F51 + 2
	LDA $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$FF00
	XBA
	BPL @UNKNOWN1
	ORA #$FF00
@UNKNOWN1:
	CLC
<<<<<<< HEAD
	ADC PSI_TELEPORT_BETA_Y_ADJUSTMENT
	STA @LOCAL03
	STA PSI_TELEPORT_NEXT_Y + fixed_point::integer
	LDA PSI_TELEPORT_STYLE
=======
	ADC UNKNOWN_7E9F69
	STA $16
	STA UNKNOWN_7E9F55 + 2
	LDA TELEPORT_STYLE
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CMP #TELEPORT_STYLE::PSI_BETTER
	BEQ @UNKNOWN4
	LDA $16
	STA $0E
	LDA GAME_STATE+game_state::leader_direction
	STA $10
	TXY
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSR UNKNOWN_C0DED9
	AND #$00C0
	BEQ @UNKNOWN2
<<<<<<< HEAD
	LDA #2
	STA PSI_TELEPORT_STATE
@UNKNOWN2:
	LDA BATTLE_SWIRL_COUNTDOWN
	BEQ @UNKNOWN3
	LDA #2
	STA PSI_TELEPORT_STATE
	LDA #1
	STA BATTLE_MODE
=======
	LDA #$0002
	STA UNKNOWN_7E9F43
@UNKNOWN2:
	LDA BATTLE_SWIRL_COUNTDOWN
	BEQ @UNKNOWN3
	LDA #$0002
	STA UNKNOWN_7E9F43
	LDA #$0001
	STA BATTLE_DEBUG
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN3:
	LDY GAME_STATE+game_state::current_party_members
	LDX PSI_TELEPORT_NEXT_Y + fixed_point::integer
	LDA PSI_TELEPORT_NEXT_X + fixed_point::integer
	JSL NPC_COLLISION_CHECK
	CMP #$FFFF
	BEQ @UNKNOWN4
<<<<<<< HEAD
	LDA #2
	STA PSI_TELEPORT_STATE
@UNKNOWN4:
	LDA PSI_TELEPORT_STATE
	CMP #2
=======
	LDA #$0002
	STA UNKNOWN_7E9F43
@UNKNOWN4:
	LDA UNKNOWN_7E9F43
	CMP #$0002
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQ @UNKNOWN5
	LDA PSI_TELEPORT_NEXT_X + fixed_point::integer
	STA GAME_STATE+game_state::leader_x_coord
	LDA PSI_TELEPORT_NEXT_Y + fixed_point::integer
	STA GAME_STATE+game_state::leader_y_coord
@UNKNOWN5:
	SEP #PROC_FLAGS::INDEX8
<<<<<<< HEAD
	LDY #13
	LDA PSI_TELEPORT_BETA_ANGLE
=======
	LDY #$000D
	LDA UNKNOWN_7E9F61
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL ASR8_UNKNOWN1
	INC
	INC
	AND #$0007
	STA GAME_STATE+game_state::leader_direction
	REP #PROC_FLAGS::INDEX8
<<<<<<< HEAD
	LDY #.LOWORD(PSI_TELEPORT_SPEED)
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
=======
	LDY #.LOWORD(UNKNOWN_7E9F45)
	MOVE_INT_YPTRSRC __BSS_START__, $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	LDA $06
	ADC #$1851
	STA $06
	BCC @UNKNOWN6
	INC $08
@UNKNOWN6:
<<<<<<< HEAD
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA PSI_TELEPORT_STYLE
=======
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA TELEPORT_STYLE
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CMP #TELEPORT_STYLE::PSI_BETA
	BNE @UNKNOWN7
	LDA PSI_TELEPORT_BETA_ANGLE
	CLC
	ADC #$0A00
	STA PSI_TELEPORT_BETA_ANGLE
	LDA PSI_TELEPORT_BETA_PROGRESS
	CLC
<<<<<<< HEAD
	ADC #12
	STA PSI_TELEPORT_BETA_PROGRESS
=======
	ADC #$000C
	STA UNKNOWN_7E9F63
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA PSI_TELEPORT_BETTER_PROGRESS
	CLC
<<<<<<< HEAD
	ADC #32
	STA PSI_TELEPORT_BETTER_PROGRESS
=======
	ADC #$0020
	STA UNKNOWN_7E9F65
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC PSI_TELEPORT_BETA_ANGLE
	STA PSI_TELEPORT_BETA_ANGLE
	LDA PSI_TELEPORT_BETA_PROGRESS
	CLC
<<<<<<< HEAD
	ADC #16
	STA PSI_TELEPORT_BETA_PROGRESS
=======
	ADC #$0010
	STA UNKNOWN_7E9F63
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN8:
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL CENTER_SCREEN
	JSR UNKNOWN_C0E196
	JSR UNKNOWN_C0E254
	LDA PSI_TELEPORT_STYLE
	CMP #TELEPORT_STYLE::PSI_BETA
	BNE @UNKNOWN9
	LDA PSI_TELEPORT_BETA_PROGRESS
	CMP #$1000
	BLTEQ @UNKNOWN10
<<<<<<< HEAD
	LDA #1
	STA PSI_TELEPORT_STATE
=======
	LDA #$0001
	STA UNKNOWN_7E9F43
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR UNKNOWN_C0E48A
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA PSI_TELEPORT_BETTER_PROGRESS
	CMP #$1800
	BLTEQ @UNKNOWN10
<<<<<<< HEAD
	LDA #1
	STA PSI_TELEPORT_STATE
=======
	LDA #$0001
	STA UNKNOWN_7E9F43
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR UNKNOWN_C0E48A
@UNKNOWN10:
	PLD
	RTL
