
UNKNOWN_C073C0: ;$C073C0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $04
	STA $14
	LDA NEXT_QUEUED_INTERACTION
	EOR NEXT_QUEUED_INTERACTION
	BNEL @UNKNOWN6
	LDA PSI_TELEPORT_DESTINATION
	BNEL @UNKNOWN6
	LDA $04
	OPTIMIZED_MULT $04, .SIZEOF(active_hotspot)
	CLC
	ADC #.LOWORD(ACTIVE_HOTSPOTS)
	TAY
	LDA __BSS_START__,Y
	STA $12
	LDX GAME_STATE+game_state::leader_x_coord
	LDA GAME_STATE+game_state::leader_y_coord
	STA $02
	LDA $12
	CMP #$0001
	BNE @UNKNOWN4
	TXA
	CMP a:active_hotspot::x1,Y
	BCC @UNKNOWN5
	TXA
	CMP a:active_hotspot::x2,Y
	BGT @UNKNOWN5
	LDA $02
	CMP a:active_hotspot::y1,Y
	BCC @UNKNOWN5
	LDA $02
	CMP a:active_hotspot::y2,Y
	BGT @UNKNOWN5
	BRA @UNKNOWN6
@UNKNOWN4:
	TXA
	CMP a:active_hotspot::x1,Y
	BLTEQ @UNKNOWN6
	TXA
	CMP a:active_hotspot::x2,Y
	BCS @UNKNOWN6
	LDA $02
	CMP a:active_hotspot::y1,Y
	BLTEQ @UNKNOWN6
	LDA $02
	CMP a:active_hotspot::y2,Y
	BCS @UNKNOWN6
@UNKNOWN5:
	LDA #$0000
	STA a:active_hotspot::mode,Y
	TYA
	CLC
	ADC #active_hotspot::pointer
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	MOVE_INT $06, $0E
	LDA #$0009
	JSL UNKNOWN_C064E3
	LDA $14
	STA $04
	LDX $04
	SEP #PROC_FLAGS::ACCUM8
	STZ GAME_STATE + game_state::active_hotspot_modes,X
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
