
UNKNOWN_C1C373: ;$C1C373
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY #$000F
	LDX #$0001
	STX $0E
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	LDX $0E
	JSR a:.LOWORD(UNKNOWN_C1C32A)
	CMP #$0000
	BEQ @UNKNOWN1
	LDA $02
	INC
	BRA @UNKNOWN3
@UNKNOWN1:
	INC $02
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $04
	LDA $02
	CMP $04
	BCC @UNKNOWN0
	LDA #$0000
@UNKNOWN3:
	PLD
	RTS
