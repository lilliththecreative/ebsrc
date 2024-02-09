
DOOR_TRANSITION: ;$C06BFF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	MOVE_INT $28, $0A
	MOVE_INT $0A, $16
	MOVE_INT $0A, $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT_CONSTANT NULL, $0A
	CMP32 $06, $0A
	BEQ @UNKNOWN1
	MOVE_INT $06, $0E ;door_data::text
	JSL UNKNOWN_C10004
@UNKNOWN1:
	STZ LADDER_STAIRS_TILE_Y
	STZ LADDER_STAIRS_TILE_X
	LDA #door_data::event_flag
	MOVE_INTX $16, $0A
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	BEQ @UNKNOWN3
	AND #$7FFF
	JSL GET_EVENT_FLAG
	STA $14
	LDX #$0000
	LDA [$06]
	CMP #EVENT_FLAG_UNSET
	BLTEQ @UNKNOWN2
	LDX #$0001
@UNKNOWN2:
	STX $02
	LDA $14
	CMP $02
	BEQ @UNKNOWN3
	STZ USING_DOOR
	JMP @UNKNOWN15
@UNKNOWN3:
	LDY #$0001
	STY $12
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #$0000
	TYA
	JSL SET_EVENT_FLAG
	LDY $12
	INY
	STY $12
@UNKNOWN5:
	CPY #$000A
	BLTEQ @UNKNOWN4
	JSL UNKNOWN_C06B3D
	JSL UNKNOWN_C07C5B
	LDA #$FFFF
	STA ENTITY_FADE_ENTITY
	STZ PLAYER_INTANGIBILITY_FRAMES
	LDA #door_data::unknown10
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDX #$0001
	LDA [$06]
	AND #$00FF
	JSL GET_SCREEN_TRANSITION_SOUND_EFFECT
	JSL PLAY_SOUND
	LDA DISABLED_TRANSITIONS
	BEQ @UNKNOWN6
	LDX #$0001
	TXA
	JSL FADE_OUT
	BRA @UNKNOWN7
@UNKNOWN6:
	LDX #$0001
	LDA [$06]
	AND #$00FF
	JSL SCREEN_TRANSITION
@UNKNOWN7:
	LDY #door_data::unknown8
	LDA [$0A],Y
	ASL
	ASL
	ASL
	STA $02
	LDY #door_data::unknown6
	LDA [$0A],Y
	STA $14
	AND #$3FFF
	ASL
	ASL
	ASL
	STA $04
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000E
	SEP #PROC_FLAGS::INDEX8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA $14
	JSL ASR8_UNKNOWN1
	ASL
	REP #PROC_FLAGS::INDEX8
	TAX
	LDA f:UNKNOWN_C3E1D8,X
	CMP #$0002
	BEQ @UNKNOWN8
	LDA $02
	CLC
	ADC #$0008
	STA $02
@UNKNOWN8:
	LDA DEBUG
	BEQ @UNKNOWN10
	LDA DEBUG_MODE_NUMBER
	CMP #$0006
	BEQ @UNKNOWN9
	LDX $04
	LDA $02
	JSL UNKNOWN_C068F4
@UNKNOWN9:
	LDA REPLAY_MODE_ACTIVE
	BNE @UNKNOWN11
	SEP #PROC_FLAGS::ACCUM8
	LDY #door_data::unknown10
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL UNKNOWN_EFE895
	BRA @UNKNOWN11
@UNKNOWN10:
	LDX $04
	LDA $02
	JSL UNKNOWN_C068F4
@UNKNOWN11:
	LDX $04
	LDA $02
	JSL LOAD_MAP_AT_POSITION
	STZ PLAYER_HAS_MOVED_SINCE_MAP_LOAD
	STZ GAME_STATE+game_state::walking_style
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000E
	PHA
	REP #PROC_FLAGS::ACCUM8
	LDY #door_data::unknown6
	LDA [$0A],Y
	SEP #PROC_FLAGS::INDEX8
	PLY
	JSL ASR8_UNKNOWN1
	ASL
	REP #PROC_FLAGS::INDEX8
	TAX
	LDA f:UNKNOWN_C3E1D8,X
	TAY
	LDX $04
	LDA $02
	JSL UNKNOWN_C03FA9
	LDA DEBUG
	BEQ @UNKNOWN12
	LDA REPLAY_MODE_ACTIVE
	BNE @UNKNOWN12
	JSL SAVE_REPLAY_SAVE_SLOT
@UNKNOWN12:
	JSL UNKNOWN_C069AF
	JSL UNKNOWN_C065A3
	LDA #door_data::unknown10
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	LDX #$0000
	LDA [$06]
	AND #$00FF
	JSL GET_SCREEN_TRANSITION_SOUND_EFFECT
	JSL PLAY_SOUND
	LDA DISABLED_TRANSITIONS
	BEQ @UNKNOWN13
	LDX #$0001
	TXA
	JSL FADE_IN
	BRA @UNKNOWN14
@UNKNOWN13:
	LDX #$0000
	LDA [$06]
	AND #$00FF
	JSL SCREEN_TRANSITION
@UNKNOWN14:
	LDA #$FFFF
	STA STAIRS_DIRECTION
	STZ PLAYER_HAS_DONE_SOMETHING_THIS_FRAME
	JSL SPAWN_BUZZ_BUZZ
	STZ USING_DOOR
@UNKNOWN15:
	PLD
	RTS