
UNKNOWN_C073C0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL04
	STA @LOCAL02
	LDA NEXT_QUEUED_INTERACTION
	EOR NEXT_QUEUED_INTERACTION
	BNEL @UNKNOWN6
	LDA PSI_TELEPORT_DESTINATION
	BNEL @UNKNOWN6
	LDA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(active_hotspot)
	CLC
	ADC #.LOWORD(ACTIVE_HOTSPOTS)
	TAY
	LDA a:active_hotspot::mode,Y
	STA @LOCAL01
	LDX GAME_STATE+game_state::leader_x_coord
	LDA GAME_STATE+game_state::leader_y_coord
	STA @VIRTUAL02
	LDA @LOCAL01
	CMP #1
	BNE @UNKNOWN4
	TXA
	CMP a:active_hotspot::x1,Y
	BCC @UNKNOWN5
	TXA
	CMP a:active_hotspot::x2,Y
	BGT @UNKNOWN5
	LDA @VIRTUAL02
	CMP a:active_hotspot::y1,Y
	BCC @UNKNOWN5
	LDA @VIRTUAL02
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
	LDA @VIRTUAL02
	CMP a:active_hotspot::y1,Y
	BLTEQ @UNKNOWN6
	LDA @VIRTUAL02
	CMP a:active_hotspot::y2,Y
	BCS @UNKNOWN6
@UNKNOWN5:
	LDA #0
	STA a:active_hotspot::mode,Y
	TYA
	CLC
	ADC #active_hotspot::pointer
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #9
	JSL UNKNOWN_C064E3
	LDA @LOCAL02
	STA @VIRTUAL04
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:game_state::active_hotspot_modes,X
.ELSE
	LDX @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	STZ GAME_STATE + game_state::active_hotspot_modes,X
.ENDIF
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
