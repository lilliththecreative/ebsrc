.SEGMENT "BANK1D"
.INCLUDE "common-usa19950327.asm"

MAP_DATA_TILE_SET_GRAPHICS_0: ;$DD0000
	BINARY "maps/gfx/0.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_1: ;$DD3294
	BINARY "maps/gfx/1.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_9: ;$DD5F1D
	BINARY "maps/gfx/9.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_3: ;$DD89A8
	BINARY "maps/gfx/3.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_4: ;$DDB7D7
	BINARY "maps/gfx/4.gfx.lzhal"

MAP_DATA_TILE_SET_GRAPHICS_5: ;$DDDF41
	BINARY "maps/gfx/5.gfx.lzhal"

AUDIO_PACK_75: ;$DDFED0
	AUDIOPACKBIN $124, $5800, "audiopacks/75.bin"
	AUDIOPACK 0
