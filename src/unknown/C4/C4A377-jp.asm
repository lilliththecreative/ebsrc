
UNKNOWN_C4A377:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA #3
	JSL UNKNOWN_C08D79
	LDY #VRAM::GAS_STATION_LAYER_1_TILES
	LDX #VRAM::GAS_STATION_LAYER_1_TILEMAP
	TYA ;BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG1_VRAM_LOCATION
	LDY #VRAM::GAS_STATION_LAYER_2_TILES
	LDX #VRAM::GAS_STATION_LAYER_2_TILEMAP
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG2_VRAM_LOCATION
	LOADPTR BG_DATA_TABLE + (BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)), @VIRTUAL0A
	LOADPTR BUFFER, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL06
	LOADPTR BATTLEBG_GFX_POINTERS, @VIRTUAL06
	LDA [@VIRTUAL0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	COPY_TO_VRAM1P @VIRTUAL06, VRAM::GAS_STATION_LAYER_2_TILES, $2000, 0
	.A16
	LOADPTR BATTLEBG_ARR_POINTERS, @VIRTUAL06
	LDA [@VIRTUAL0A]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL00
	MOVE_INT @LOCAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	LDA #0
	STA @LOCAL05
	BRA @UNKNOWN1
@UNKNOWN0:
	STORE_INT1632 @VIRTUAL06
	CLC
	VAR_ADD_CONST_INT_ASSIGN BUFFER + 1, @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	AND #$00DF
	ORA #$0008
	STA [@VIRTUAL06]
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL05
	INC
	INC
	STA @LOCAL05
@UNKNOWN1:
	CMP #$0800
	BCC @UNKNOWN0
	COPY_TO_VRAM1 BUFFER, VRAM::GAS_STATION_LAYER_2_TILEMAP, $800, 0
	.A16
	LOADPTR BG_DATA_TABLE, @VIRTUAL06
	LDA #(BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)) + bg_layer_config_entry::graphics
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL00
	LDA @VIRTUAL0A+2
	STA @LOCAL00+2
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL UNKNOWN_C2CFE5
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette_pointer
	STA @VIRTUAL02
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	LDX @VIRTUAL02
	STA __BSS_START__,X
	LDY #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette
	STY @LOCAL04
	LOADPTR BATTLEBG_PALETTE_POINTERS, @VIRTUAL0A
	LDA #(BATTLEBG_LAYER::UNKNOWN295 * .SIZEOF(bg_layer_config_entry)) + bg_layer_config_entry::palette
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL03
	LDA @VIRTUAL06+2
	STA @LOCAL03+2
	LDA [@VIRTUAL06]
	AND #$00FF
	ASL
	ASL
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #BPP4PALETTE_SIZE
	LDY @LOCAL04
	TYA
	JSL MEMCPY16
	MOVE_INT @LOCAL03, @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #BPP4PALETTE_SIZE
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1) + loaded_bg_data::palette2
	JSL MEMCPY16
	LDY @LOCAL04
	TYA
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #BPP4PALETTE_SIZE
	STX @LOCAL02
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	LDX @LOCAL02
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #2
	STA LOADED_BG_DATA_LAYER1
	LDX #0
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL GENERATE_BATTLEBG_FRAME
	SEP #PROC_FLAGS::ACCUM8
	STZ LOADED_BG_DATA_LAYER2
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
