
UNKNOWN_C0778A: ;$C0778A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDA .LOWORD(GAME_STATE)+game_state::current_party_members
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_13),X
	AND #$C000
	BEQ @UNKNOWN0
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_14),X
	BRA @UNKNOWN2
@UNKNOWN0:
	LDX #$3000
	LDA $9F6D
	JSL UNKNOWN_C41FFF
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $10
	AND #$FF00
	XBA
	BPL @UNKNOWN1
	ORA #$FF00
@UNKNOWN1:
	CLC
	ADC .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	PHA
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000A
	SEP #PROC_FLAGS::INDEX8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	JSL ASR16
	STA $02
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	SEC
	SBC #$0008
	CLC
	ADC $02
	REP #PROC_FLAGS::INDEX8
	PLX
	STA .LOWORD(SPRITE_ABS_Y_TABLE),X
	LDA $9F6D
	CLC
	ADC #$0300
	STA $9F6D
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_30X2_TABLE_14),X
@UNKNOWN2:
	PLD
	RTL
