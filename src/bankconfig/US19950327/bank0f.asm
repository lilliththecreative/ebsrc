.SEGMENT "BANK0F"
.INCLUDE "common-usa19950327.asm"
.INCLUDE "config-usa19950327.asm"

.INCLUDE "data/map/door_data.asm"

.INCLUDE "data/map/door_config_table.asm"

.INCLUDE "data/map/overworld_event_music_pointer_table.asm"

.INCLUDE "data/map/overworld_event_music_table.asm"

.BYTE $00, $00, $08, 09, $12, $00, $12, $12, $12, $12

.INCLUDE "data/map/sprite_placement_pointer_table.asm"

.INCLUDE "data/map/sprite_placement_table.asm"

.INCLUDE "data/map/npc_config.asm"

AUDIO_PACK_94: ;$CFF2B5
	BINARY "audiopacks/94.bin"

AUDIO_PACK_96: ;$CFFF38
	BINARY "audiopacks/96.bin"
