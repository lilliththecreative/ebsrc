
UNKNOWN_C04C45: ;$C04C45
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	LDX #$9885
	LDA a:.LOWORD(RAM),X
	STA $14
	LDA #$0000
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(UNKNOWN_7E5D58)
	BEQ @UNKNOWN0
	JSL UNKNOWN_C07C5B
	DEC .LOWORD(UNKNOWN_7E5D58)
@UNKNOWN0:
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN1
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN1
	LDA a:.LOWORD(UNKNOWN_7E0002)
	AND #$00FF
	AND #$000F
	BEQ @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN10)
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE)+game_state::current_party_members
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_4),X
	ASL
	TAX
	LDA .LOWORD(CHOSEN_FOUR_PTRS),X
	TAX
	LDA .LOWORD(GAME_STATE)+136
	STA a:.LOWORD(RAM)+61,X
	LDA .LOWORD(GAME_STATE)+176
	BEQ @UNKNOWN2
	JSR a:.LOWORD(UNKNOWN_C04B53)
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #WALKING_STYLE::ESCALATOR
	BEQ @UNKNOWN3
	CMP #WALKING_STYLE::BICYCLE
	BEQ @UNKNOWN4
	BRA @UNKNOWN5
@UNKNOWN3:
	JSR a:.LOWORD(UNKNOWN_C047CF)
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA $14
	JSR a:.LOWORD(UNKNOWN_C048D3)
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(UNKNOWN_C0449B)
@UNKNOWN6:
	LDA #$987D
	STA $14
	LDA ($14)
	STA $12
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$5156
	STA $10
	LDA #$9877
	STA $04
	LDA #$987B
	STA $02
	LDY .LOWORD(GAME_STATE)+game_state::current_party_members
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAX
	STX $0E
	LDX $04
	LDA a:.LOWORD(RAM),X
	LDX $0E
	JSL UNKNOWN_C05F82
	STA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	LDA .LOWORD(GAME_STATE)+144
	BEQ @UNKNOWN7
	LDX $04
	LDA a:.LOWORD(RAM),X
	STA ($10)
	LDX $02
	LDA a:.LOWORD(RAM),X
	LDY #$0002
	STA ($10),Y
	LDA $12
	INC
	AND #$00FF
	STA ($14)
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAX
	STX $0E
	LDX $04
	LDA a:.LOWORD(RAM),X
	LDX $0E
	JSL CENTER_SCREEN
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E4DD4)
	BRA @UNKNOWN8
@UNKNOWN7:
	STZ .LOWORD(UNKNOWN_7E4DD4)
@UNKNOWN8:
	LDX #.LOWORD(GAME_STATE)+game_state::trodden_tile_type
	LDA a:.LOWORD(RAM),X
	LDY #$0004
	STA ($10),Y
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	LDY #$0006
	STA ($10),Y
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	LDY #$0008
	STA ($10),Y
	LDY #.LOWORD(UNKNOWN_7E289C)
	LDA #$0000
	STA a:.LOWORD(RAM),Y
	LDA a:.LOWORD(RAM),X
	STA $14
	AND #$0008
	BEQ @UNKNOWN10
	LDA $14
	AND #$0004
	BEQ @UNKNOWN9
	LDA #$0010
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #$0012
	STA a:.LOWORD(RAM),Y
@UNKNOWN10:
	PLD
	RTL