
UNKNOWN_C4A377: ;$C4A377
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 36
	LDA #$0003
	JSL UNKNOWN_C08D79
	LDY #$0000
	LDX #$7800
	TYA ;BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG1_VRAM_LOCATION
	LDY #$6000
	LDX #$7C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG2_VRAM_LOCATION
<<<<<<< HEAD
	LOADPTR BG_DATA_TABLE + (BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)), @VIRTUAL0A
	LOADPTR BUFFER, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL06
	LOADPTR BATTLEBG_GFX_POINTERS, @VIRTUAL06
	LDA [@VIRTUAL0A]
=======
	LOADPTR BG_DATA_TABLE + (BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)), $0A
	LOADPTR UNKNOWN_7F0000, $06
	MOVE_INT $06, $20
	LOADPTR BATTLEBG_GFX_POINTERS, $06
	LDA [$0A]
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	MOVE_INT $20, $06
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM1P $06, $6000, $2000, $00
	.A16
	LOADPTR BATTLEBG_ARR_POINTERS, $06
	LDA [$0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $20, $06
	MOVE_INT $06, $12
	JSL DECOMP
	LDA #$0000
	STA $1E
	BRA @UNKNOWN1
@UNKNOWN0:
	STORE_INT1632 $06
	CLC
<<<<<<< HEAD
	VAR_ADD_CONST_INT_ASSIGN BUFFER + 1, @VIRTUAL06
=======
	VAR_ADD_CONST_INT_ASSIGN $7F0001, $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	AND #$00DF
	ORA #$0008
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	LDA $1E
	INC
	INC
	STA $1E
@UNKNOWN1:
	CMP #$0800
	BCC @UNKNOWN0
<<<<<<< HEAD
	COPY_TO_VRAM1 BUFFER, VRAM::GAS_STATION_LAYER_2_TILEMAP, $800, 0
=======
	COPY_TO_VRAM1 UNKNOWN_7F0000, $7C00, $800, $00
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	.A16
	LOADPTR BG_DATA_TABLE, $06
	LDA #(BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)) + bg_layer_config_entry::graphics
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	STA $0E
	LDA $0C
	STA $10
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL UNKNOWN_C2CFE5
<<<<<<< HEAD
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette_pointer
	STA @VIRTUAL02
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	LDX @VIRTUAL02
=======
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + 76
	STA $02
	LDA #$0240
	LDX $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA __BSS_START__,X
	LDY #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette
	STY $1C
	LOADPTR BATTLEBG_PALETTE_POINTERS, $0A
	LDA #(BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)) + bg_layer_config_entry::palette
	CLC
	ADC $06
	STA $06
	STA $18
	LDA $08
	STA $1A
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	MOVE_INTX $0A, $06
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	MOVE_INT $06, $0E
	LDX #$0020
	LDY $1C
	TYA
	JSL MEMCPY16
	MOVE_INT $18, $06
	LDA [$06]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	LDX #$0020
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + 44
	JSL MEMCPY16
	LDY $1C
	TYA
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0020
	STX $16
	LDX $02
	LDA __BSS_START__,X
	LDX $16
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0002
	STA LOADED_BG_DATA_LAYER1
	LDX #$0000
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL GENERATE_BATTLEBG_FRAME
	SEP #PROC_FLAGS::ACCUM8
	STZ LOADED_BG_DATA_LAYER2
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
