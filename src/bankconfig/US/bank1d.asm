.SEGMENT "BANK1D"
.INCLUDE "common-usa.asm"

MAP_DATA_TILE_SET_GRAPHICS_0: ;$DD0000
	BINARY "maps/gfx/0.bin"

MAP_DATA_TILE_SET_GRAPHICS_1: ;$DD3294
	BINARY "maps/gfx/1.bin"

MAP_DATA_TILE_SET_GRAPHICS_9: ;$DD5F17
	BINARY "maps/gfx/9.bin"

MAP_DATA_TILE_SET_GRAPHICS_3: ;$DD89A2
	BINARY "maps/gfx/3.bin"

MAP_DATA_TILE_SET_GRAPHICS_4: ;$DDB7D1
	BINARY "maps/gfx/4.bin"

MAP_DATA_TILE_SET_GRAPHICS_5: ;$DDDF3B
	BINARY "maps/gfx/5.bin"

AUDIO_PACK_75: ;$DDFECE
	AUDIOPACKBIN $124, $5800, "audiopacks/75.bin"
	AUDIOPACK 0
