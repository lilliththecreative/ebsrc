
; index == -1 means create new entity
; int CreateEntity(int sprite, int actionScript, int index, int x, int y)
CREATE_ENTITY: ;$C01E49
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 49
	STY $04
	PHA
	LDA $04
	STA $2F
	PLA
	STX $2D
	STA $2B
	LDY $41
	STY $29
	LDX $3F
	STX $27
	LDA DEBUG
	BEQ @UNKNOWN0
	LDA $2B
	CMP #$FFFF
	BNE @UNKNOWN0
	LDA #$0000
	JMP @UNKNOWN8
@UNKNOWN0:
	LOADPTR SPRITE_GROUPING_PTR_TABLE, $0A
	LDA $2B
	OPTIMIZED_MULT $04, 4
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $23
	LDA $2B
	JSR UNKNOWN_C01DED
<<<<<<< HEAD
	STA @VIRTUAL02
	LDY @VIRTUAL04
	LDX NEW_SPRITE_TILE_HEIGHT
	LDA NEW_SPRITE_TILE_WIDTH
=======
	STA $02
	LDY $04
	LDX UNKNOWN_7E467C
	LDA UNKNOWN_7E467A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C01C52
	STA $21
@UNKNOWN1:
	LDA $21
	CMP #$7FFF
	BGT @UNKNOWN1
	LOADPTR UNKNOWN_C42B0D, $06
	LDA $02
	OPTIMIZED_MULT $04, 4
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	LDA [$0A]
	AND #$00FF
	OPTIMIZED_MULT $04, 10
	JSL FIND_FREE_7E4682
	STA $1F
@UNKNOWN3:
	LDA $1F
	CMP #$7FFF
	BGT @UNKNOWN3
	LDA #$0001
	STA NEW_ENTITY_PRIORITY
.IF .DEFINED(JPN)
	MOVE_INT $0A, $0E
.ELSE
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
.ENDIF
	MOVE_INT $23, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	LDX $21
	LDA $1F
	JSR UNKNOWN_C01D38
	LDA $2F
	STA $04
	CMP #$FFFF
	BEQ @UNKNOWN5
	LDA $04
	STA ENTITY_ALLOCATION_MIN_SLOT
	LDA $04
	INC
	STA ENTITY_ALLOCATION_MAX_SLOT
	LDY $29
	LDX $27
	LDA $2D
	JSL INIT_ENTITY
	STA $02
	BRA @UNKNOWN6
@UNKNOWN5:
	STZ ENTITY_ALLOCATION_MIN_SLOT
	LDA #$0016
	STA ENTITY_ALLOCATION_MAX_SLOT
	LDY $29
	LDX $27
	LDA $2D
	JSL INIT_ENTITY
	STA $02
	ORA #$0080
	TAX
	LDA #$FFFF
	JSL ALLOC_SPRITE_MEM
@UNKNOWN6:
	LDA $02
	ASL
	TAY
	STY $1D
	LDA $1F
	CLC
	ADC #.LOWORD(OVERWORLD_SPRITEMAPS)
	STA ENTITY_SPRITEMAP_POINTER_LOW,Y
	LDA #.HIWORD(OVERWORLD_SPRITEMAPS)
	STA ENTITY_SPRITEMAP_POINTER_HIGH,Y
	LDA [$0A]
	AND #$00FF
<<<<<<< HEAD
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(spritemap)
	STA ENTITY_SPRITEMAP_SIZES,Y
	LDA @LOCAL07
	STA ENTITY_SPRITEMAP_BEGINNING_INDICES,Y
=======
	OPTIMIZED_MULT $04, 5
	STA ENTITY_UNKNOWN_2916,Y
	LDA $21
	STA ENTITY_UNKNOWN_2952,Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TYA
	CLC
	ADC #.LOWORD(ENTITY_VRAM_ADDRESS)
	TAX
	STX $1B
	LDA $21
	ASL
	TAX
	LDA f:UNKNOWN_C42F8C,X
	CLC
	ADC #$4000
	LDX $1B
	STA __BSS_START__,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	ASL
	LDY $1D
	STA ENTITY_BYTE_WIDTHS,Y
	LDA [$06]
	AND #$00FF
	STA ENTITY_TILE_HEIGHTS,Y
	MOVE_INT $23, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0008
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
<<<<<<< HEAD
	LDY @LOCAL05
	STA ENTITY_GRAPHICS_SPRITE_BANK,Y
	LOADPTR SPRITE_GROUPING_PTR_TABLE, @VIRTUAL06
	LDA @LOCAL0B
	OPTIMIZED_MULT @VIRTUAL04, 4
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA @LOCAL0B
	LDY @LOCAL05
	STA ENTITY_SPRITE_IDS,Y
	LDA @LOCAL01+2
=======
	LDY $1D
	STA UNKNOWN_30X2_TABLE_31,Y
	LOADPTR SPRITE_GROUPING_PTR_TABLE, $06
	LDA $2B
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $12
	LDA $2B
	LDY $1D
	STA ENTITY_TPT_ENTRY_SPRITES,Y
	LDA $14
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA ENTITY_GRAPHICS_PTR_HIGH,Y
	LDA $12
	CLC
	ADC #$0009
	STA ENTITY_GRAPHICS_PTR_LOW,Y
	LDA NEW_SPRITE_TILE_HEIGHT
	AND #$0001
	BEQ @UNKNOWN7
	LDA __BSS_START__,X
	CLC
	ADC #$0100
	STA __BSS_START__,X
@UNKNOWN7:
	LDA $02
	ASL
	TAX
	STX $1B
	MOVE_INT $23, $06
	INC $06
	INC $06
	MOVE_INT $06, $17
	LDA [$17]
	AND #$00FF
	STA ENTITY_SIZES,X
	MOVE_INT $23, $06
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0004
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA ENTITY_HITBOX_UP_DOWN_WIDTHS,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0005
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA ENTITY_HITBOX_UP_DOWN_HEIGHTS,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0006
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA ENTITY_HITBOX_LEFT_RIGHT_WIDTHS,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0007
	LDA [$06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
<<<<<<< HEAD
	STA ENTITY_HITBOX_LEFT_RIGHT_HEIGHTS,X
	LDA [@LOCAL03]
=======
	STA UNKNOWN_7E1A4A,X
	LDA [$17]
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	ASL
	TAX
	LDA f:UNKNOWN_C42AEB,X
<<<<<<< HEAD
	LDX @LOCAL04
	STA ENTITY_HITBOX_ENABLED,X
=======
	LDX $1B
	STA UNKNOWN_7E332A,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0001
	LDA [$0A],Y
	STA $16
	STA $00
	LDA [$0A]
	SEC
	SBC $00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA $04
	LDA $16
	AND #$00FF
	XBA
	AND #$FF00
<<<<<<< HEAD
	ORA @VIRTUAL04
	STA ENTITY_UPPER_LOWER_BODY_DIVIDES,X
=======
	ORA $04
	STA UNKNOWN_30X2_TABLE_38,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #$FFFF
	STA ENTITY_ENEMY_SPAWN_TILES,X
	STA ENTITY_ENEMY_IDS,X
	STA ENTITY_NPC_IDS,X
	STA ENTITY_COLLIDED_OBJECTS,X
	STZ ENTITY_SURFACE_FLAGS,X
	STZ ENTITY_UNKNOWN_2DC6,X
	STZ ENTITY_UNUSED,X
	STZ ENTITY_PATHFINDING_STATES,X
	STZ ENTITY_MOVEMENT_SPEEDS,X
	STZ ENTITY_DIRECTIONS,X
	STZ ENTITY_OBSTACLE_FLAGS,X
	LDA $02
@UNKNOWN8:
	PLD
	RTL
