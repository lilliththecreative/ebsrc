
;void LoadMapAtSector(int sector_x, int sector_y)
<<<<<<< HEAD
LOAD_MAP_AT_SECTOR:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int x
	STACK_RESERVE_PARAM_INT16 ;int y
	END_STACK_VARS
	STA @LOCAL04
	LDA CURRENT_TELEPORT_DESTINATION_X
	ORA CURRENT_TELEPORT_DESTINATION_Y
=======
LOAD_MAP_AT_SECTOR: ;$C008C3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	STA $1A
	LDA UNKNOWN_7E438A
	ORA UNKNOWN_7E438C
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BEQ @UNKNOWN0
	LDA CURRENT_TELEPORT_DESTINATION_X
	LSR
	LSR
	LSR
	LSR
	LSR
<<<<<<< HEAD
	STA @LOCAL04
	LDA CURRENT_TELEPORT_DESTINATION_Y
=======
	STA $1A
	LDA UNKNOWN_7E438C
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LSR
	LSR
	LSR
	LSR
	TAX
@UNKNOWN0:
	LDA $1A
	STA $02
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	AND #$00FF
	STA $1A
	AND #$0007
	STA $18
	LDA $1A
	LSR
	LSR
	LSR
	STA $04
	ASL
	TAX
	LDA f:TILESET_TABLE,X
	TAY
	STY $16
	TYA
	ASL
	ASL
	STA $02
	LOADPTR MAP_DATA_TILE_ARRANGEMENT_PTR_TABLE, $0A
	LDA $02
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR BUFFER + $8000, @LOCAL01
=======
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LOADPTR UNKNOWN_7F8000, $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL DECOMP
	LDY $16
	TYA
	JSR LOAD_TILE_COLLISION
	LDY $16
	TYA
	JSL UNKNOWN_C006F2
	JSL UNKNOWN_C005E7
<<<<<<< HEAD
	LOADPTR SPRITE_GROUP_PALETTES, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 8
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 8
	JSL MEMCPY16
	LDA @VIRTUAL04
	CMP LOADED_MAP_TILE_COMBO
	BEQ @UNKNOWN3
	LDY @LOCAL02
	STY LOADED_MAP_TILESET
	LOADPTR MAP_DATA_TILESET_PTR_TABLE, @VIRTUAL0A
	LDA @VIRTUAL02
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR BUFFER, @LOCAL01
=======
	LOADPTR SPRITE_GROUP_PALETTES, $0E
	LDX #$0100
	LDA #$0300
	JSL MEMCPY16
	LDA $04
	CMP UNKNOWN_7E436E
	BEQ @UNKNOWN3
	LDY $16
	STY UNKNOWN_7E4372
	LOADPTR MAP_DATA_TILESET_PTR_TABLE, $0A
	LDA $02
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LOADPTR UNKNOWN_7F0000, $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL DECOMP
@UNKNOWN1:
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN1
	LDA PHOTOGRAPH_MAP_LOADING_MODE
	BNE @UNKNOWN2
<<<<<<< HEAD
	COPY_TO_VRAM3 BUFFER, $0000, $7000, 0
	BRA @UNKNOWN3
@UNKNOWN2:
	.A16
	COPY_TO_VRAM3 BUFFER, $0000, $4000, 0
=======
	COPY_TO_VRAM3 UNKNOWN_7F0000, $0000, $7000, $0000
	BRA @UNKNOWN3
@UNKNOWN2:
	.A16
	COPY_TO_VRAM3 UNKNOWN_7F0000, $0000, $4000, $0000
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN3:
	.A16
	LDA FADE_PARAMETERS + fade_parameters::step
	AND #$00FF
	BNE @UNKNOWN3
	LDX $18
	LDA $04
	JSL LOAD_MAP_PAL
	JSL UNKNOWN_C00480
	JSL LOAD_SPECIAL_SPRITE_PALETTE
	LDA PHOTOGRAPH_MAP_LOADING_MODE
	BNE @UNKNOWN4
	JSL LOAD_OVERLAY_SPRITES
	JSR LOAD_TILESET_ANIM
	JSR LOAD_PALETTE_ANIM
@UNKNOWN4:
	LDA PHOTOGRAPH_MAP_LOADING_MODE
	BNE @UNKNOWN7
	LDA DEBUG
	BEQ @UNKNOWN5
	JSL UNKNOWN_EFD9F3
	BRA @UNKNOWN6
@UNKNOWN5:
	JSL UNKNOWN_C47F87
@UNKNOWN6:
	LDA #$0000
	JSL UNKNOWN_C0856B
@UNKNOWN7:
	.A16
<<<<<<< HEAD
	PROMOTENEARPTR PALETTES, @VIRTUAL06
=======
	PROMOTENEARPTR $0200, $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0040
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #BPP4PALETTE_SIZE * 14
	LDA #.LOWORD(MAP_PALETTE_BACKUP)
=======
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$01C0
	LDA #.LOWORD(UNKNOWN_7E4476)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMCPY16
	LDA WIPE_PALETTES_ON_MAP_LOAD
	BEQ @UNKNOWN8
	JSL UNKNOWN_C496F9
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA $0E
	LDX #$0200
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(PALETTES)
=======
	LDA #$0200
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMSET16
	STZ WIPE_PALETTES_ON_MAP_LOAD
@UNKNOWN8:
	LDA PHOTOGRAPH_MAP_LOADING_MODE
	BEQ @UNKNOWN9
	JSL UNKNOWN_C496F9
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #$01E0
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 1
=======
	LDA #$0220
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMSET16
@UNKNOWN9:
	LDA #$0018
	JSL UNKNOWN_C0856B
<<<<<<< HEAD
	LDA @VIRTUAL04
	STA LOADED_MAP_TILE_COMBO
	LDA @LOCAL03
	STA LOADED_MAP_PALETTE
	END_C_FUNCTION
=======
	LDA $04
	STA UNKNOWN_7E436E
	LDA $18
	STA UNKNOWN_7E4370
	PLD
	RTS
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
