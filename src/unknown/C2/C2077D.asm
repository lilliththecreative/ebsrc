
<<<<<<< HEAD
UNKNOWN_C2077D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDY CURRENTLY_DRAWN_HPPP_WINDOWS
	STY @LOCAL01
	LDX #0
	STX @LOCAL00
=======
UNKNOWN_C2077D: ;$C2077D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY UNKNOWN_7E9647
	STY $10
	LDX #$0000
	STX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN2
@UNKNOWN0:
	TYA
	AND #$0001
	BEQ @UNKNOWN1
	TXA
	JSR DRAW_HP_PP_WINDOW
@UNKNOWN1:
	LDY $10
	TYA
	LSR
	TAY
	STY $10
	LDX $0E
	INX
	STX $0E
@UNKNOWN2:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	TXA
	CMP $02
	BNE @UNKNOWN0
	PLD
	RTS
