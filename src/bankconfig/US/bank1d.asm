.SEGMENT "BANK1D"
.INCLUDE "common.asm"

MAP_DATA_TILE_SET_GRAPHICS_0: ;$DD0000
	.INCBIN "src/bin/maps/gfx/0.bin"

MAP_DATA_TILE_SET_GRAPHICS_1: ;$DD3294
	.INCBIN "src/bin/maps/gfx/1.bin"

MAP_DATA_TILE_SET_GRAPHICS_9: ;$DD5F17
	.INCBIN "src/bin/maps/gfx/9.bin"

MAP_DATA_TILE_SET_GRAPHICS_3: ;$DD89A2
	.INCBIN "src/bin/maps/gfx/3.bin"

MAP_DATA_TILE_SET_GRAPHICS_4: ;$DDB7D1
	.INCBIN "src/bin/maps/gfx/4.bin"

MAP_DATA_TILE_SET_GRAPHICS_5: ;$DDDF3B
	.INCBIN "src/bin/maps/gfx/5.bin"

AUDIO_PACK_75: ;$DDFECE
	.INCBIN "src/bin/audiopacks/75.bin"