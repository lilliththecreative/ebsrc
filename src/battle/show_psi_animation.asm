
SHOW_PSI_ANIMATION: ;$C2E116
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 40
	STA $02
	LDA LOADED_BG_DATA_LAYER1 + loaded_bg_data::bitdepth
	AND #$00FF
	CMP #$0002
	BNE @UNKNOWN1
<<<<<<< HEAD
	LOADPTR BUFFER + $8000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	LOADPTR PSI_ANIM_GFX_SET_1 & $FF0000, @VIRTUAL06
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
=======
	LOADPTR UNKNOWN_7F8000, $06
	MOVE_INT $06, $24
	LOADPTR $CC0000, $06
	LDA $02
	OPTIMIZED_MULT $04, 12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA f:PSI_ANIM_CFG,X
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $24, $06
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM3P $06, $0000, $1000, $0000
	.A16
<<<<<<< HEAD
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 3
	STA PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
	JMP @UNKNOWN6
@UNKNOWN1:
	LOADPTR BUFFER, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	LOADPTR PSI_ANIM_GFX_SET_1 & $FF0000, @VIRTUAL06
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
=======
	LDA #$0260
	STA UNKNOWN_7E1BCA
	JMP @UNKNOWN6
@UNKNOWN1:
	LOADPTR UNKNOWN_7F0000, $06
	MOVE_INT $06, $24
	LOADPTR $CC0000, $06
	LDA $02
	OPTIMIZED_MULT $04, 12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	LDA f:PSI_ANIM_CFG,X
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $24, $06
	MOVE_INT $06, $12
	JSL DECOMP
<<<<<<< HEAD
	LOADPTR BUFFER + $8000, @VIRTUAL0A
	LDX #0
=======
	LOADPTR UNKNOWN_7F8000, $0A
	LDX #$0000
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JMP @UNKNOWN4
@UNKNOWN2:
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA [$06]
	STA [$0A]
	INC $06
	INC $06
	MOVE_INT $06, $24
	MOVE_INT $0A, $06
	INC $06
	INC $06
	LDA [$24]
	STA [$06]
	MOVE_INT $24, $0A
	INC $0A
	INC $0A
	INC $06
	INC $06
	LDA [$0A]
	STA [$06]
	INC $0A
	INC $0A
	INC $06
	INC $06
	MOVE_INT $06, $20
	LDA [$0A]
	STA [$06]
	MOVE_INT $0A, $06
	INC $06
	INC $06
	MOVE_INT $06, $1C
	MOVE_INT $20, $06
	MOVE_INT $06, $0A
	INC $0A
	INC $0A
	LDA [$1C]
	STA [$0A]
	MOVE_INT $1C, $06
	INC $06
	INC $06
	INC $0A
	INC $0A
	LDA #$0000
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	STA [$0A]
	INC $0A
	INC $0A
	INX
@UNKNOWN4:
	CPX #$0100
	BCCL @UNKNOWN2
<<<<<<< HEAD
	COPY_TO_VRAM3 BUFFER + $8000, $0000, $2000, 0
	.A16
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 4
	STA PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
=======
	COPY_TO_VRAM3 UNKNOWN_7F8000, $0000, $2000, $0000
	.A16
	LDA #$0280
	STA UNKNOWN_7E1BCA
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN6:
	JSL WAIT_UNTIL_NEXT_FRAME
	LOADPTR PSI_ANIM_PALETTES, $06
	LDA $02
	ASL
	ASL
	ASL
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #8
	LDA #.LOWORD(PSI_ANIMATION_STATE) + psi_animation_state::palette
	JSL MEMCPY16
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #8
	LDA PSI_ANIMATION_STATE + psi_animation_state::displayed_palette
	JSL MEMCPY16
	LOADPTR BUFFER, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, PSI_ANIMATION_STATE + psi_animation_state::frame_data
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA PSI_ANIMATION_STATE + psi_animation_state::time_until_next_frame
=======
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0008
	LDA #$1BAA
	JSL MEMCPY16
	MOVE_INT $06, $0E
	LDX #$0008
	LDA UNKNOWN_7E1BCA
	JSL MEMCPY16
	LOADPTR UNKNOWN_7F0000, $0A
	MOVE_INT $0A, $06
	MOVE_INT $06, UNKNOWN_7E1BA1
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E1B9E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LOADPTR PSI_ANIM_CFG, $06
	MOVE_INT $06, $24
	LDA $02
	OPTIMIZED_MULT $04, 12
	STA $1A
	INC
	INC
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::frame_hold_frames
=======
	LDA [$06]
	STA UNKNOWN_7E1B9E+1
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	CLC
	ADC #$0006
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::total_frames
=======
	LDA [$06]
	STA UNKNOWN_7E1BA0
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	INC
	INC
	INC
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_frames
=======
	LDA [$06]
	STA UNKNOWN_7E1BA8
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	INC
	INC
	INC
	INC
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_lower_index
=======
	LDA [$06]
	STA UNKNOWN_7E1BA5
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	CLC
	ADC #$0005
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA [@VIRTUAL06]
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_upper_index
	STZ PSI_ANIMATION_STATE + psi_animation_state::palette_animation_current_index
	LDA #1
	STA PSI_ANIMATION_STATE + psi_animation_state::palette_animation_time_until_next_frame
=======
	LDA [$06]
	STA UNKNOWN_7E1BA6
	STZ UNKNOWN_7E1BA7
	LDA #$0001
	STA UNKNOWN_7E1BA9
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $1A
	CLC
	ADC #$0008
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
<<<<<<< HEAD
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_start_frames_left
	LDA @LOCAL04
=======
	STA UNKNOWN_7E1BCC
	LDA $1A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #$0009
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
<<<<<<< HEAD
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_frames_left
	LDA @LOCAL04
=======
	STA UNKNOWN_7E1BCE
	LDA $1A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #$000A
	MOVE_INTX $24, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$001F
<<<<<<< HEAD
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_red
	LDA [@VIRTUAL06]
=======
	STA UNKNOWN_7E1BD0
	LDA [$06]
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LSR
	LSR
	LSR
	LSR
	LSR
	AND #$001F
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_green
	SEP #PROC_FLAGS::INDEX8
	LDY #$000A
	LDA [$06]
	JSL ASR8_UNKNOWN1
	AND #$001F
<<<<<<< HEAD
	STA PSI_ANIMATION_STATE + psi_animation_state::enemy_colour_change_blue
	LOADPTR PSI_ANIM_POINTERS, @VIRTUAL06
	LDA @VIRTUAL02
=======
	STA UNKNOWN_7E1BD4
	LOADPTR PSI_ANIM_POINTERS, $06
	LDA $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	REP #PROC_FLAGS::INDEX8
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $0A, $06
	MOVE_INT $06, $12
	JSL DECOMP
	JSL UNKNOWN_C2DE0F
<<<<<<< HEAD
	PROMOTENEARPTR PALETTES + BPP4PALETTE_SIZE * 8, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #128
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 12
=======
	PROMOTENEARPTR CUR_SPRITE_PALS, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0080
	LDA #$0380
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMCPY16
	LDA #$0000
	STA $1A
	BRA @UNKNOWN8
@UNKNOWN7:
	ASL
	TAX
<<<<<<< HEAD
	STZ PSI_ANIMATION_ENEMY_TARGETS,X
	LDA @LOCAL04
=======
	STZ UNKNOWN_7EAEE7,X
	LDA $1A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	INC
	STA $1A
@UNKNOWN8:
	CMP #$0004
	BCC @UNKNOWN7
	LDX CURRENT_TARGET
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQL @UNKNOWN26
	LDX CURRENT_TARGET
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNEL @UNKNOWN26
<<<<<<< HEAD
	STZ PSI_ANIMATION_X_OFFSET
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 12
=======
	STZ UNKNOWN_7EAD9A
	LDA $02
	OPTIMIZED_MULT $04, 12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #$0007
	TAX
	LDA f:PSI_ANIM_CFG,X
	AND #$00FF
	BEQ @UNKNOWN12
	CMP #$0003
	BEQ @UNKNOWN12
	CMP #$0001
	BEQ @UNKNOWN14
	CMP #$0002
	BEQL @UNKNOWN20
	JMP @UNKNOWN24
@UNKNOWN12:
	LDX CURRENT_TARGET
	LDA a:battler::sprite_x,X
	AND #$00FF
	STA $02
	LDA #$0080
	SEC
<<<<<<< HEAD
	SBC @VIRTUAL02
	STA PSI_ANIMATION_X_OFFSET
=======
	SBC $02
	STA UNKNOWN_7EAD9A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDX CURRENT_TARGET
	LDA a:battler::sprite_y,X
	AND #$00FF
	STA $02
	LDA #$0090
	SEC
<<<<<<< HEAD
	SBC @VIRTUAL02
	STA PSI_ANIMATION_Y_OFFSET
=======
	SBC $02
	STA UNKNOWN_7EAD9C
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDX CURRENT_TARGET
	LDA a:battler::sprite,X
	JSR GET_BATTLE_SPRITE_HEIGHT
	CMP #$0008
	BNE @UNKNOWN13
	LDA PSI_ANIMATION_Y_OFFSET
	CLC
<<<<<<< HEAD
	ADC #16
	STA PSI_ANIMATION_Y_OFFSET
=======
	ADC #$0010
	STA UNKNOWN_7EAD9C
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN13:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX CURRENT_TARGET
	STA a:battler::use_alt_spritemap,X
	LDX CURRENT_TARGET
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	TAX
<<<<<<< HEAD
	LDA #1
	STA PSI_ANIMATION_ENEMY_TARGETS,X
=======
	LDA #$0001
	STA UNKNOWN_7EAEE7,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JMP @UNKNOWN24
@UNKNOWN14:
	LDX CURRENT_TARGET
	LDA a:battler::sprite_y,X
	AND #$00FF
	STA $02
	LDA #$0090
	SEC
<<<<<<< HEAD
	SBC @VIRTUAL02
	STA PSI_ANIMATION_Y_OFFSET
	LDY #0
	STY @LOCAL04
=======
	SBC $02
	STA UNKNOWN_7EAD9C
	LDY #$0000
	STY $1A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	STA $02
	LDX #$0008
	STX $18
	BRA @UNKNOWN18
@UNKNOWN15:
	LDX $02
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN17
	LDX $02
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN17
	LDX $02
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN17
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::sprite_y,X
	LDX CURRENT_TARGET
	CMP a:battler::sprite_y,X
	BNE @UNKNOWN17
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::sprite,X
	JSR GET_BATTLE_SPRITE_HEIGHT
	CMP #$0008
	BNE @UNKNOWN16
	LDY #$0001
	STY $1A
@UNKNOWN16:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $02
	STA a:battler::use_alt_spritemap,X
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,X
	AND #$00FF
	ASL
	TAX
<<<<<<< HEAD
	LDA #1
	STA PSI_ANIMATION_ENEMY_TARGETS,X
=======
	LDA #$0001
	STA UNKNOWN_7EAEE7,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN17:
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	CLC
	ADC #.SIZEOF(battler)
	STA $02
	LDX $18
	INX
	STX $18
@UNKNOWN18:
	CPX #$0020
	BCCL @UNKNOWN15
	LDY $1A
	BEQ @UNKNOWN24
	LDA PSI_ANIMATION_Y_OFFSET
	CLC
<<<<<<< HEAD
	ADC #16
	STA PSI_ANIMATION_Y_OFFSET
	BRA @UNKNOWN24
@UNKNOWN20:
	LDA #16
	STA PSI_ANIMATION_Y_OFFSET
=======
	ADC #$0010
	STA UNKNOWN_7EAD9C
	BRA @UNKNOWN24
@UNKNOWN20:
	LDA #$0010
	STA UNKNOWN_7EAD9C
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDY #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler) * 8
	LDX #$0008
	STX $16
	BRA @UNKNOWN23
@UNKNOWN21:
	LDA a:battler::consciousness,Y
	AND #$00FF
	BEQ @UNKNOWN22
	LDA a:battler::ally_or_enemy,Y
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN22
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,Y
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN22
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA a:battler::use_alt_spritemap,Y
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::vram_sprite_index,Y
	AND #$00FF
	ASL
	TAX
<<<<<<< HEAD
	LDA #1
	STA PSI_ANIMATION_ENEMY_TARGETS,X
=======
	LDA #$0001
	STA UNKNOWN_7EAEE7,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN22:
	TYA
	CLC
	ADC #.SIZEOF(battler)
	TAY
	LDX $16
	INX
	STX $16
@UNKNOWN23:
	CPX #$0020
	BCC @UNKNOWN21
@UNKNOWN24:
	LDA LOADED_BG_DATA_LAYER1 + loaded_bg_data::bitdepth
	AND #$00FF
	CMP #$0002
	BNE @UNKNOWN25
	LDA PSI_ANIMATION_X_OFFSET
	STA BG2_X_POS
	LDA PSI_ANIMATION_Y_OFFSET
	STA BG2_Y_POS
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA PSI_ANIMATION_X_OFFSET
	STA BG1_X_POS
	LDA PSI_ANIMATION_Y_OFFSET
	STA BG1_Y_POS
@UNKNOWN26:
	PLD
	RTL
