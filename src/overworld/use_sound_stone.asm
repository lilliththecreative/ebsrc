
USE_SOUND_STONE: ;$C4ACCE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 54
	STA $34
	JSL UNKNOWN_C08726
	JSL STOP_MUSIC
	JSL LOAD_ENEMY_BATTLE_SPRITES
<<<<<<< HEAD
	LOADPTR BUFFER, @VIRTUAL06
	LOADPTR SOUND_STONE_GFX, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
=======
	LOADPTR UNKNOWN_7F0000, $06
	LOADPTR SOUND_STONE_GFX, $0E
	MOVE_INT $06, $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL DECOMP
	COPY_TO_VRAM1P $06, $2000, $2C00, $00
	.A16
<<<<<<< HEAD
	LOADPTR SOUND_STONE_PALETTE, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 6
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 8
=======
	LOADPTR SOUND_STONE_PALETTE, $0E
	LDX #$00C0
	LDA #$0300
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMCPY16
	JSL UNKNOWN_C47F87
	LDY #$0004
	LDX #BATTLEBG_LAYER::SOUNDSTONE2
	LDA #BATTLEBG_LAYER::SOUNDSTONE1
	JSL LOAD_BATTLE_BG
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #$0005
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_1)
=======
	LDA #.LOWORD(UNKNOWN_7EB3EE) + 0
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #$0005
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_2)
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA #240
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::x_offset
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::y_offset
	LDA #248
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::x_offset
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::y_offset
	LDA #$81
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::special_flags
	LDA #$80
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::special_flags
=======
	LDA #.LOWORD(UNKNOWN_7EB3F3) + 0
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00F0
	STA UNKNOWN_7EB3EE + 3
	STA UNKNOWN_7EB3EE + 0
	LDA #$00F8
	STA UNKNOWN_7EB3F3 + 3
	STA UNKNOWN_7EB3F3 + 0
	LDA #$0081
	STA UNKNOWN_7EB3EE + 4
	LDA #$0080
	STA UNKNOWN_7EB3F3 + 4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	STZ $32
	LDY #$0000
	STY $30
	BRA @UNKNOWN3
@UNKNOWN0:
	TYX
	LDA f:SOUND_STONE_MELODY_FLAGS,X
	AND #$00FF
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN1
	LDY $30
	TYA
	OPTIMIZED_MULT $04, 14
	TAX
<<<<<<< HEAD
	LDA #1
	STA SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::state,X
	INC @LOCAL10
=======
	LDA #$0001
	STA UNKNOWN_7EB37E + 0,X
	INC $32
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN2
@UNKNOWN1:
	LDY $30
	TYA
	OPTIMIZED_MULT $04, 14
	TAX
<<<<<<< HEAD
	STZ SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::state,X
=======
	STZ UNKNOWN_7EB37E + 0,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN2:
	TYA
	OPTIMIZED_MULT $04, 14
	TAX
<<<<<<< HEAD
	LDA #1
	STA SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::unknown2,X
	STZ SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::orbit_sprite_frame,X
=======
	LDA #$0001
	STA UNKNOWN_7EB37E + 2,X
	STZ UNKNOWN_7EB37E + 6,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	INY
	STY $30
@UNKNOWN3:
	CPY #$0008
	BCC @UNKNOWN0
	JSL UNKNOWN_C08744
	LDX #$0001
	TXA
	JSL FADE_IN
	LDA #$000F
	STA $2E
	STZ $30
	LDA #$003C
	STA $2C
	STZ $2A
	STZ $28
	LDA #$0000
	STA $04
	STA $26
	STA $02
	STA $24
@UNKNOWN4:
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA PAD_PRESS
	STA $22
	LDA $26
	STA $04
	BNE @UNKNOWN5
	DEC $2C
	LDA $2C
	BNE @UNKNOWN5
	LDA #$FFFF
	STA $02
	STA $24
	LDA $02
	STA $28
	LDA #$0001
	STA $04
	STA $26
@UNKNOWN5:
	LDA $2A
	BEQ @UNKNOWN7
	DEC $2A
	LDA $2A
	BEQL @UNKNOWN31
	JMP @UNKNOWN19
@UNKNOWN7:
	LDA $04
	BEQL @UNKNOWN19
	LDA $04
	DEC
	STA $04
	STA $26
	LDA $04
	BNEL @UNKNOWN18
	LDA $24
	STA $02
	CMP #$0008
	BCS @UNKNOWN10
	LDA $02
	OPTIMIZED_MULT $04, 14
	CLC
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE)
	TAX
	LDA __BSS_START__,X
	CMP #$0002
	BNE @UNKNOWN10
	LDA #$0001
	STA __BSS_START__,X
@UNKNOWN10:
	LDA $02
	CMP #$0008
	BNE @UNKNOWN14
	LDA $28
	INC
	STA $20
	BRA @UNKNOWN12
@UNKNOWN11:
	OPTIMIZED_MULT $04, 14
	TAX
<<<<<<< HEAD
	LDA SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::state,X
=======
	LDA UNKNOWN_7EB37E,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNE @UNKNOWN13
	LDA $20
	INC
	STA $20
@UNKNOWN12:
	CMP #$0008
	BCC @UNKNOWN11
@UNKNOWN13:
	LDA $20
	CMP #$0008
	BNE @UNKNOWN14
	LDA #$0096
	STA $2A
@UNKNOWN14:
	INC $28
	LDA $28
	CMP #$0008
	BCS @UNKNOWN17
	LDA $28
	STA $02
	STA $24
	LDA $02
	OPTIMIZED_MULT $04, 14
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::state
=======
	ADC #.LOWORD(UNKNOWN_7EB37E)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA __BSS_START__,X
	BEQ @UNKNOWN15
	LDA #$0002
	STA __BSS_START__,X
	BRA @UNKNOWN16
@UNKNOWN15:
	LDA #$0008
	STA $02
	STA $24
@UNKNOWN16:
	LDA $02
	ASL
	TAX
	LDA f:SOUND_STONE_UNKNOWN7,X
	STA $04
	STA $26
	LDX $02
	LDA f:SOUND_STONE_MUSIC,X
	AND #$00FF
	JSL CHANGE_MUSIC
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA #$0096
	STA $2A
@UNKNOWN18:
	LDA $24
	STA $02
	CMP #$0008
	BCS @UNKNOWN19
	LDA $02
	ASL
	TAX
	LDA f:SOUND_STONE_UNKNOWN7,X
	SEC
	SBC #$0009
	STA $02
	LDA $26
	STA $04
	CMP $02
	BNE @UNKNOWN19
	LDA $32
	CLC
	ADC #$0008
	JSL UNKNOWN_C0AC0C
@UNKNOWN19:
	JSL OAM_CLEAR
<<<<<<< HEAD
	LDA #^SOUND_STONE_SPRITEMAP_1
=======
	LDA #$007E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C088A5
	STZ $1E
	JMP @UNKNOWN27
@UNKNOWN20:
	LDA $1E
	OPTIMIZED_MULT $04, 14
	STA $1C
	TAX
<<<<<<< HEAD
	LDA SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::state,X
	CMP #1
=======
	LDA UNKNOWN_7EB37E + 0,X
	CMP #$0001
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQ @UNKNOWN21
	CMP #$0002
	BEQ @UNKNOWN22
	JMP @UNKNOWN26
@UNKNOWN21:
	LDX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN3,X
<<<<<<< HEAD
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::tile
	LDA #$30
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::flags
	LDX @LOCAL06
=======
	STA UNKNOWN_7EB3EE + 1
	LDA #$0030
	STA UNKNOWN_7EB3EE + 2
	LDX $1E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN2,X
	AND #$00FF
	TAY
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN,X
	AND #$00FF
	TAX
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_1)
	JSL UNKNOWN_C08CD5
	JMP @UNKNOWN26
@UNKNOWN22:
	LDA $1C
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::orbit_sprite_position_2
=======
	ADC #.LOWORD(UNKNOWN_7EB37E) + 10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA __BSS_START__,X
	CLC
	ADC #$0CCD
	STA __BSS_START__,X
	LDA $1C
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::unknown2
=======
	ADC #.LOWORD(UNKNOWN_7EB37E) + 2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA __BSS_START__,X
	TAY
	DEY
	TYA
	STA __BSS_START__,X
	BNE @UNKNOWN23
	LDA #$0002
	STA __BSS_START__,X
	LDA $1C
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::orbit_sprite_frame
=======
	ADC #.LOWORD(UNKNOWN_7EB37E) + 6
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	STX $20
	LDA $1C
	PHA
	LOADPTR UNKNOWN_C4AC57, $06
	LDA $1E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	LDA __BSS_START__,X
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	PLX
<<<<<<< HEAD
	STA SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::orbit_sprite_position_1,X
	LDX @LOCAL07
=======
	STA UNKNOWN_7EB37E + 8,X
	LDX $20
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	LDA $1C
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::unknown4
=======
	ADC #.LOWORD(UNKNOWN_7EB37E) + 4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA __BSS_START__,X
	STA $02
	LDA #$0002
	SEC
	SBC $02
	STA __BSS_START__,X
@UNKNOWN23:
	LDA $1E
	OPTIMIZED_MULT $04, 14
	STA $20
	PHA
	LDX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN5,X
	PLX
	CLC
<<<<<<< HEAD
	ADC SOUND_STONE_PLAYBACK_STATE + sound_stone_playback_state::unknown4,X
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::tile
	LDX @LOCAL06
	LDA f:SOUND_STONE_UNKNOWN6,X
	ASL
	CLC
	ADC #$31
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::flags
=======
	ADC UNKNOWN_7EB37E + 4,X
	STA UNKNOWN_7EB3F3 + 1
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN6,X
	ASL
	CLC
	ADC #$0031
	STA UNKNOWN_7EB3F3 + 2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $20
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::orbit_sprite_position_1
	STA @LOCAL04
	LDA (@LOCAL04)
=======
	ADC #.LOWORD(UNKNOWN_7EB37E) + 8
	STA $1A
	LDA ($1A)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAY
	BEQL @UNKNOWN25
	LOADPTR SOUND_STONE_UNKNOWN, $0A
	LDA $1E
	CLC
	ADC $0A
	STA $0A
	LDA $20
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(SOUND_STONE_PLAYBACK_STATE) + sound_stone_playback_state::orbit_sprite_position_2
	STA @LOCAL03
	LOADPTR SOUND_STONE_UNKNOWN2, @VIRTUAL06
	LDA @LOCAL06
=======
	ADC #.LOWORD(UNKNOWN_7EB37E) + 10
	STA $18
	LOADPTR SOUND_STONE_UNKNOWN2, $06
	LDA $1E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $06
	STA $06
	LDA ($18)
	XBA
	AND #$00FF
	TAX
	TYA
	JSL COSINE_SINE
	STA $16
	LDA ($18)
	XBA
	AND #$00FF
	TAX
	LDA ($1A)
	JSL COSINE
	STA $02
	LDA [$06]
	AND #$00FF
	CLC
	ADC $02
	TAY
	LDA [$0A]
	AND #$00FF
	CLC
	ADC $16
	TAX
<<<<<<< HEAD
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_2) + spritemap::y_offset
=======
	LDA #.LOWORD(UNKNOWN_7EB3F3) + 0
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C08CD5
	LDA ($18)
	XBA
	AND #$00FF
	CLC
	ADC #$0080
	AND #$00FF
	TAX
	LDA ($1A)
	JSL COSINE_SINE
	STA $16
	LDA ($18)
	XBA
	AND #$00FF
	CLC
	ADC #$0080
	AND #$00FF
	TAX
	LDA ($1A)
	JSL COSINE
	STA $02
	LDA [$06]
	AND #$00FF
	CLC
	ADC $02
	TAY
	LDA [$0A]
	AND #$00FF
	CLC
	ADC $16
	TAX
<<<<<<< HEAD
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_2) + spritemap::y_offset
=======
	LDA #.LOWORD(UNKNOWN_7EB3F3) + 0
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C08CD5
@UNKNOWN25:
	LDX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN3,X
	CLC
<<<<<<< HEAD
	ADC #128
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::tile
	LDX @LOCAL06
	LDA f:SOUND_STONE_UNKNOWN4,X
	ASL
	CLC
	ADC #$30
	STA SOUND_STONE_SPRITEMAP_1 + spritemap::flags
	LDX @LOCAL06
=======
	ADC #$0080
	STA UNKNOWN_7EB3EE + 1
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN4,X
	ASL
	CLC
	ADC #$0030
	STA UNKNOWN_7EB3EE + 2
	LDX $1E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN2,X
	AND #$00FF
	TAY
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN,X
	AND #$00FF
	TAX
<<<<<<< HEAD
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_1)
=======
	LDA #.LOWORD(UNKNOWN_7EB3EE) + 0
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C08CD5
@UNKNOWN26:
	INC $1E
@UNKNOWN27:
	LDA $1E
	CMP #$0008
	BCCL @UNKNOWN20
	DEC $2E
	LDA $2E
	BNE @UNKNOWN29
	LDA #$000F
	STA $2E
	LDA $30
	INC
	AND #$0003
	STA $30
@UNKNOWN29:
	LDA $30
	SEP #PROC_FLAGS::ACCUM8
	ASL
	CLC
<<<<<<< HEAD
	ADC #64
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::tile
	LDA #$3B
	STA SOUND_STONE_SPRITEMAP_2 + spritemap::flags
	LDY #112
	LDX #128
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(SOUND_STONE_SPRITEMAP_2)
=======
	ADC #$0040
	STA UNKNOWN_7EB3F3 + 1
	LDA #$003B
	STA UNKNOWN_7EB3F3 + 2
	LDY #$0070
	LDX #$0080
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EB3F3) + 0
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C08CD5
	JSL UPDATE_SCREEN
	LDX #$0000
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL GENERATE_BATTLEBG_FRAME
	LDX #$0001
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2)
	JSL GENERATE_BATTLEBG_FRAME
	LDA $34
	BEQL @UNKNOWN4
	LDA $22
	AND #$80C0
	BEQL @UNKNOWN4
@UNKNOWN31:
	LDX #$0001
	TXA
	JSL FADE_OUT
	BRA @UNKNOWN33
@UNKNOWN32:
	JSL WAIT_UNTIL_NEXT_FRAME
@UNKNOWN33:
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN32
	JSL UNKNOWN_C08726
	LDA #$0001
	JSL UNKNOWN_C0AFCD
	JSL RELOAD_MAP
	LDX #$0001
	TXA
	JSL FADE_IN
	PLD
	RTL
