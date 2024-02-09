
;void Teleport_MainLoop(void)
TELEPORT_MAINLOOP: ;$C0EA99
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	JSL STOP_MUSIC
	JSL WAIT_UNTIL_NEXT_FRAME
	JSR TELEPORT_FREEZEOBJECTS
<<<<<<< HEAD
	LDA #1
	STA UNREAD_7E5DBA
	MOVE_INT_CONSTANT 0, PSI_TELEPORT_SPEED
	STZ PSI_TELEPORT_STATE
=======
	LDA #$0001
	STA UNKNOWN_7E5DBA
	LDA #$0000
	STA UNKNOWN_7E9F45
	LDA #$0000
	STA UNKNOWN_7E9F47
	STZ UNKNOWN_7E9F43
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C07C5B
	JSR UNKNOWN_C0DE46
	LDA PSI_TELEPORT_STYLE
	CMP #TELEPORT_STYLE::PSI_ALPHA
	BEQ @STYLE_1_OR_5
	CMP #TELEPORT_STYLE::UNKNOWN
	BEQ @STYLE_1_OR_5
	CMP #TELEPORT_STYLE::PSI_BETA
	BEQ @STYLE_2
	CMP #TELEPORT_STYLE::INSTANT
	BEQ @STYLE_3
	CMP #TELEPORT_STYLE::PSI_BETTER
	BEQ @STYLE_4
	BRA @STYLE_OTHER
@STYLE_1_OR_5:
	LOADPTR UNKNOWN_C0E28F, $0E
	LOADPTR UNKNOWN_C0E3C1, $12
	LDA #$0017
	JSL SET_PARTY_TICK_CALLBACKS
	BRA @STYLE_OTHER
@STYLE_2:
	LOADPTR UNKNOWN_C0E516, $0E
	LOADPTR UNKNOWN_C0E3C1, $12
	LDA #$0017
	JSL SET_PARTY_TICK_CALLBACKS
	BRA @STYLE_OTHER
@STYLE_3:
<<<<<<< HEAD
	LDA #1
	STA PSI_TELEPORT_STATE
=======
	LDA #$0001
	STA UNKNOWN_7E9F43
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @STYLE_OTHER
@STYLE_4:
	LOADPTR UNKNOWN_C0E516, $0E
	LOADPTR UNKNOWN_C0E3C1, $12
	LDA #$0017
	JSL SET_PARTY_TICK_CALLBACKS
@STYLE_OTHER:
	LDA PSI_TELEPORT_STYLE
	CMP #TELEPORT_STYLE::INSTANT
	BEQ @UNKNOWN6
	LDA #MUSIC::TELEPORT_OUT
	JSL CHANGE_MUSIC
	BRA @UNKNOWN6
@UNKNOWN5:
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	JSR TELEPORT_FREEZEOBJECTS2
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
@UNKNOWN6:
	LDA PSI_TELEPORT_STATE
	BEQ @UNKNOWN5
<<<<<<< HEAD
	LDA PSI_TELEPORT_STATE
	CMP #1
=======
	LDA UNKNOWN_7E9F43
	CMP #$0001
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQ @UNKNOWN7
	CMP #$0002
	BEQ @UNKNOWN8
	BRA @UNKNOWN9
@UNKNOWN7:
	JSR UNKNOWN_C0E815
	JSL UNKNOWN_C0DD79
	JSR UNKNOWN_C0E897
	LDA PSI_TELEPORT_STYLE
	CMP #TELEPORT_STYLE::UNKNOWN
	BNE @UNKNOWN9
	LOADPTR MSG_EVT_MASTER_TLPT, $0E
	JSL UNKNOWN_C46881
	BRA @UNKNOWN9
@UNKNOWN8:
	JSR UNKNOWN_C0E9BA
	LDA #$000A
	JSL UNKNOWN_C0DD2C
@UNKNOWN9:
	LOADPTR UNKNOWN_C05200, $0E
	LOADPTR UNKNOWN_C04D78, $12
	LDA #$0017
	JSL SET_PARTY_TICK_CALLBACKS
	JSR UNKNOWN_C0DE7C
	JSL UNKNOWN_C09451
<<<<<<< HEAD
	STZ UNREAD_7E5DBA
	MOVE_INT_CONSTANT NULL, PSI_TELEPORT_SPEED
	STZ PLAYER_INTANGIBILITY_FRAMES
	STZ PSI_TELEPORT_DESTINATION
	END_C_FUNCTION
=======
	STZ UNKNOWN_7E5DBA
	MOVE_INT_CONSTANT NULL, UNKNOWN_7E9F45
	STZ UNKNOWN_7E5D58
	STZ TELEPORT_DESTINATION
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
