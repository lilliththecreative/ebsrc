.SEGMENT "BANK10"
.INCLUDE "common-usa19950327.asm"

.INCLUDE "data/map/door_pointer_table.asm"

.INCLUDE "data/screen_transition_config_table.asm"

.INCLUDE "data/event_control_ptr_table.asm"

.INCLUDE "data/map/tile_event_control_table.asm"

.INCLUDE "data/map/enemy_placement.asm"

.INCLUDE "data/map/enemy_placement_groups_pointer_table.asm"

.INCLUDE "data/map/enemy_placement_groups.asm"

.INCLUDE "data/map/battle_entry_pointer_table.asm"

.INCLUDE "data/map/battle_groups_table.asm"

AUDIO_PACK_139: ;$D0DFB4
	BINARY "audiopacks/139.bin"
