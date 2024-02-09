
UNKNOWN_C1FF2C: ;$C1FF2C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	TAX
	DEX
	LDA GAME_STATE+game_state::player_controlled_party_members,X
	AND #$00FF
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__+14,X
	LDX #$0000
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	CMP #$0002
	BNE @UNKNOWN1
@UNKNOWN0:
	LDX #$0001
@UNKNOWN1:
<<<<<<< HEAD
	LDA #0
	CPX LAST_PARTY_MEMBER_STATUS_LAST_CHECK
=======
	LDA #$0000
	CPX UNKNOWN_7EB4A2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQ @UNKNOWN2
	LDA #$0001
@UNKNOWN2:
<<<<<<< HEAD
	STX LAST_PARTY_MEMBER_STATUS_LAST_CHECK
	END_C_FUNCTION
=======
	STX UNKNOWN_7EB4A2
	RTS
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
