
RECOVER_HP_AMTPERCENT: ;$C18F64
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STY $12
	STX $04
	CMP #$00FF
	BNE @UNKNOWN2
	LDA #$0000
	STA $02
	STA $10
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY $12
	LDX $04
	STX $0E
	LDA $10
	STA $02
	LDX $02
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	LDX $0E
	JSL UNKNOWN_C3EC8B
	INC $02
	LDA $02
	STA $10
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	PHA
	LDA $02
	PLY
	STY $02
	CMP $02
	BCC @UNKNOWN0
	BRA @UNKNOWN3
@UNKNOWN2:
	LDY $12
	LDX $04
	JSL UNKNOWN_C3EC8B
@UNKNOWN3:
	PLD
	RTS
