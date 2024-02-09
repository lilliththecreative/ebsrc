.SEGMENT "RAM1"
.INCLUDE "config.asm"
.INCLUDE "enums.asm"
.INCLUDE "hardware.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols/globals.inc.asm"

DMA_QUEUE_INDEX:
	.RES 1
LAST_COMPLETED_DMA_INDEX:
	.RES 1
FRAME_COUNTER:
	.RES 1
OAM_ADDR:
	.RES 2
OAM_END_ADDR:
	.RES 2
OAM_HIGH_TABLE_ADDR:
	.RES 2
UNREAD_7E0009:
	.RES 1
OAM_HIGH_TABLE_BUFFER:
	.RES 1
SPRITEMAP_BANK:
	.RES 2
INIDISP_MIRROR:
	.RES 1
OBSEL_MIRROR:
	.RES 1
BGMODE_MIRROR:
	.RES 1
MOSAIC_MIRROR:
	.RES 1
BG1SC_MIRROR:
	.RES 1
BG2SC_MIRROR:
	.RES 1
BG3SC_MIRROR:
	.RES 1
BG4SC_MIRROR:
	.RES 1
BG12NBA_MIRROR:
	.RES 1
BG34NBA_MIRROR:
	.RES 1
WH2_MIRROR:
	.RES 1
;unused
	.RES 2
TM_MIRROR:
	.RES 1
TD_MIRROR:
	.RES 1
;unused
	.RES 2
NMITIMEN_MIRROR:
	.RES 1
HDMAEN_MIRROR:
	.RES 1
IRQ_CALLBACK:
	.RES 2
IN_IRQ_CALLBACK:
	.RES 1
;unused
	.RES 1
RAND_A:
	.RES 2
RAND_B:
	.RES 2
FADE_PARAMETERS:
	.TAG fade_parameters
FADE_DELAY_FRAMES_LEFT:
	.RES 1
NEW_FRAME_STARTED:
	.RES 1
;the ID of the frame being/about to be displayed, multiplied by 2
NEXT_FRAME_DISPLAY_ID:
	.RES 1
;unused
	.RES 1
;the ID of the next frame to buffer as a byte offset - 0 for buffer 0, 2 for buffer 1
NEXT_FRAME_BUF_ID:
	.RES 1
;unused
	.RES 1
PALETTE_UPLOAD_MODE:
	.RES 1
BG1_X_POS:
	.RES 2
BG1_Y_POS:
	.RES 2
BG2_X_POS:
	.RES 2
BG2_Y_POS:
	.RES 2
BG3_X_POS:
	.RES 2
BG3_Y_POS:
	.RES 2
BG4_X_POS:
	.RES 2
BG4_Y_POS:
	.RES 2
BG1_X_POS_BUF:
	.RES 4
BG1_Y_POS_BUF:
	.RES 4
BG2_X_POS_BUF:
	.RES 4
BG2_Y_POS_BUF:
	.RES 4
BG3_X_POS_BUF:
	.RES 4
BG3_Y_POS_BUF:
	.RES 4
BG4_X_POS_BUF:
	.RES 4
BG4_Y_POS_BUF:
	.RES 4
EVEN_BG1_X_POSITION:
	.RES 2
EVEN_BG1_Y_POSITION:
	.RES 2
PAD_STATE:
	.RES 2 * 2
PAD_HELD:
	.RES 2 * 2
PAD_PRESS:
	.RES 2 * 2
PAD_TIMER:
	.RES 2 * 2
PAD_TEMP:
	.RES 2
PAD_RAW:
	.RES 2 * 2
DEMO_RECORDING_FLAGS:
	.RES 2
DEMO_READ_SOURCE:
	.RES 4
DEMO_FRAMES_LEFT:
	.RES 2
DEMO_INITIAL_PAD_STATE:
	.RES 2
DEMO_WRITE_DESTINATION:
	.RES 4
DEMO_SAME_INPUT_FRAMES:
	.RES 2
DEMO_LAST_INPUT:
	.RES 2
UNREAD_7E008D:
	.RES 4
DMA_COPY_MODE:
	.RES 1
DMA_COPY_SIZE:
	.RES 2
DMA_COPY_RAM_SRC:
	.RES 3
DMA_COPY_VRAM_DEST:
	.RES 2
DMA_BYTES_COPIED:
	.RES 2
CURRENT_SPRITE_BASE_X:
	.RES 2
CURRENT_SPRITE_BASE_Y:
	.RES 2
CURRENT_SPRITE_Y:
	.RES 2
CURRENT_HEAP_ADDRESS:
	.RES 2
BASE_HEAP_ADDRESS:
	.RES 2
MEMCPY_WORDS_LEFT:
	.RES 1
;unused
	.RES 1
TIMER:
	.RES 4
UNREAD_7E00AB:
	.RES 1
;unused
	.RES 1
UNREAD_7E00AD:
	.RES 1
;unused
	.RES 2
DIV_MULT_TMP:
	.RES 1
MULT_TMP:
	.RES 1
DIV_MULT_TMP2:
	.RES 2
TEMP_DIVIDEND:
	.RES 1
MULT_TMP2:
	.RES 1
MULT_TMP3:
	.RES 1
MULT_TMP4:
	.RES 1
MULT_TMP5:
	.RES 2
MULT_TMP6:
	.RES 2
TEMP_FUNCTION_POINTER:
	.RES 4
TEMP_REGISTER:
	.RES 2
;unused
	.RES 2
MULT16_NUM_CALLS:
	.RES 2
SPC_DATA_PTR:
	.RES 4
SOUND_EFFECT_QUEUE_END_INDEX:
	.RES 1
SOUND_EFFECT_QUEUE_INDEX:
	.RES 1
DECOMP_DATA_SRC:
	.RES 3
DECOMP_DEST_BUFFER:
	.RES 2
DECOMP_TEMP_LENGTH:
	.RES 1
DECOMP_TEMP_UNREAD:
	.RES 1
DECOMP_TEMP_COMMAND:
	.RES 1
;unused
	.RES 300
PALETTES:
	.RES BPP4PALETTE_SIZE * 16
DMA_QUEUE:
.REPEAT 32
	.TAG queued_dma
.ENDREPEAT
; OAM data for every odd frame
OAM1:
	.RES .SIZEOF(oam_entry) * 128
OAM1_HIGH_TABLE:
	.RES 32
; unused
	.RES 224
; Same as OAM1, but used for every other frame
OAM2:
	.RES .SIZEOF(oam_entry) * 128
OAM2_HIGH_TABLE:
	.RES 32
JMP_BUF1:
	.RES 10
JMP_BUF2:
	.RES 10
PLAYER_HAS_DONE_SOMETHING_THIS_FRAME:
	.RES 2
LAST_SRAM_BANK:
	.RES 2
NEW_ENTITY_VAR0:
	.RES 2
NEW_ENTITY_VAR1:
	.RES 2
NEW_ENTITY_VAR2:
	.RES 2
NEW_ENTITY_VAR3:
	.RES 2
NEW_ENTITY_VAR4:
	.RES 2
NEW_ENTITY_VAR5:
	.RES 2
NEW_ENTITY_VAR6:
	.RES 2
NEW_ENTITY_VAR7:
	.RES 2
NEW_ENTITY_POS_Z:
	.RES 2
NEW_ENTITY_PRIORITY:
	.RES 2
ENTITY_ALLOCATION_MIN_SLOT:
	.RES 2
ENTITY_ALLOCATION_MAX_SLOT:
	.RES 2
FIRST_ENTITY:
	.RES 2
LAST_ENTITY:
	.RES 2
LAST_ALLOCATED_SCRIPT:
	.RES 2
NEXT_ACTIVE_ENTITY:
	.RES 2
ACTIONSCRIPT_CURRENT_SCRIPT:
	.RES 2
CURRENT_ENTITY_TICK_CALLBACK:
	.RES 4
CURRENT_ENTITY_DRAW_CALLBACK:
	.RES 2
DISABLE_ACTIONSCRIPT:
	.RES 2
ENTITY_SCRIPT_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_NEXT_ENTITY_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_INDEX_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCREEN_X_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCREEN_Y_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_X_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Y_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Z_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_X_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Y_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_ABS_Z_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_X_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Y_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Z_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_X_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Y_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DELTA_Z_FRACTION_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR0_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR1_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR2_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR3_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR4_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR5_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR6_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_VAR7_TABLE:
	.RES MAX_ENTITIES*2
ENTITY_DRAW_PRIORITY:
	.RES MAX_ENTITIES*2
ENTITY_TICK_CALLBACK_LOW:
	.RES MAX_ENTITIES*2
ENTITY_TICK_CALLBACK_HIGH:
	.RES MAX_ENTITIES*2
ENTITY_ANIMATION_FRAME:
	.RES MAX_ENTITIES*2
ENTITY_SPRITEMAP_POINTER_LOW:
	.RES MAX_ENTITIES*2
ENTITY_SPRITEMAP_POINTER_HIGH:
	.RES MAX_ENTITIES*2
ENTITY_SCREEN_POSITION_CALLBACK:
	.RES MAX_ENTITIES*2
ENTITY_DRAW_CALLBACK:
	.RES MAX_ENTITIES*2
ENTITY_MOVE_CALLBACK:
	.RES MAX_ENTITIES*2
ENTITY_SCRIPT_NEXT_SCRIPTS:
	.RES MAX_SCRIPTS*2
ENTITY_SCRIPT_STACK_OFFSETS:
	.RES MAX_SCRIPTS*2
ENTITY_SCRIPT_SLEEP_FRAMES:
	.RES MAX_SCRIPTS*2
ENTITY_SCRIPT_PROGRAM_COUNTERS:
	.RES MAX_SCRIPTS*2
ENTITY_SCRIPT_PROGRAM_COUNTER_BANKS:
	.RES MAX_SCRIPTS*2
ENTITY_SCRIPT_TEMPVARS:
	.RES MAX_SCRIPTS*2
ENTITY_SCRIPT_STACKS:
	.RES MAX_SCRIPTS*16
ENTITY_BG_HORIZONTAL_OFFSET_LOW:
	.RES 4 * 2
ENTITY_BG_VERTICAL_OFFSET_LOW:
	.RES 4 * 2
ENTITY_BG_HORIZONTAL_OFFSET_HIGH:
	.RES 4 * 2
ENTITY_BG_VERTICAL_OFFSET_HIGH:
	.RES 4 * 2
ENTITY_BG_HORIZONTAL_VELOCITY_LOW:
	.RES 4 * 2
ENTITY_BG_VERTICAL_VELOCITY_LOW:
	.RES 4 * 2
ENTITY_BG_HORIZONTAL_VELOCITY_HIGH:
	.RES 4 * 2
ENTITY_BG_VERTICAL_VELOCITY_HIGH:
	.RES 4 * 2
CURRENT_ENTITY_SLOT:
	.RES 2
CURRENT_ENTITY_OFFSET:
	.RES 2
CURRENT_SCRIPT_SLOT:
	.RES 2
CURRENT_SCRIPT_OFFSET:
	.RES 2
ENTITY_HITBOX_LEFT_RIGHT_HEIGHTS:
	.RES MAX_ENTITIES * 2
ENTITY_MOVING_DIRECTIONS:
	.RES MAX_ENTITIES * 2
SOUND_EFFECT_QUEUE:
	.RES 8
SOUND_EFFECT_UPPER_BIT_FLIPPER:
	.RES 1
AUDIO_EFFECT_UPPER_BIT_FLIPPER:
	.RES 1
BACKGROUND_DISTORTION_STYLE:
	.RES 2
BACKGROUND_DISTORTION_TARGET_LAYER:
	.RES 2
;unused
	.RES 2
BACKGROUND_DISTORTION_IS_SECONDARY_LAYER:
	.RES 2
BACKGROUND_DISTORTION_COMPRESSION_RATE:
	.RES 2
USED_BG2_TILE_MAP:
	.RES 64 * 2
KEYBOARD_INPUT_CHARACTER_OFFSETS:
	.RES 24
KEYBOARD_INPUT_CHARACTER_WIDTHS:
	.RES 24
KEYBOARD_INPUT_CHARACTERS:
	.RES 24
PSI_ANIMATION_STATE:
	.TAG psi_animation_state
;unused
	.RES 42
STACK_START:
	.RES 768
STACK_END:
STACK_65816_START:
	.RES 255
STACK_65816_END:
	.RES 1
HEAP:
	.RES HEAPSIZE
HEAP_ALT:
	.RES HEAPSIZE
CURRENT_SPRITE_DRAWING_PRIORITY:
	.RES 2
UNUSED_7E2402:
	.RES 2
PRIORITY_0_SPRITEMAPS:
	.RES 2 * 32
PRIORITY_0_SPRITE_X:
	.RES 2 * 32
PRIORITY_0_SPRITE_Y:
	.RES 2 * 32
PRIORITY_0_SPRITEMAP_BANKS:
	.RES 2 * 32
PRIORITY_0_SPRITE_OFFSET:
	.RES 2
PRIORITY_1_SPRITEMAPS:
	.RES 2 * 32
PRIORITY_1_SPRITE_X:
	.RES 2 * 32
PRIORITY_1_SPRITE_Y:
	.RES 2 * 32
PRIORITY_1_SPRITEMAP_BANKS:
	.RES 2 * 32
PRIORITY_1_SPRITE_OFFSET:
	.RES 2
PRIORITY_2_SPRITEMAPS:
	.RES 2 * 32
PRIORITY_2_SPRITE_X:
	.RES 2 * 32
PRIORITY_2_SPRITE_Y:
	.RES 2 * 32
PRIORITY_2_SPRITEMAP_BANKS:
	.RES 2 * 32
PRIORITY_2_SPRITE_OFFSET:
	.RES 2
PRIORITY_3_SPRITEMAPS:
	.RES 2 * 32
PRIORITY_3_SPRITE_X:
	.RES 2 * 32
PRIORITY_3_SPRITE_Y:
	.RES 2 * 32
PRIORITY_3_SPRITEMAP_BANKS:
	.RES 2 * 32
PRIORITY_3_SPRITE_OFFSET:
	.RES 2
ENTITY_DRAW_SORTING:
	.RES MAX_ENTITIES*2
ENTITY_MOVEMENT_PROSPECTIVE_X:
	.RES 2
ENTITY_MOVEMENT_PROSPECTIVE_Y:
	.RES 2
ENTITY_CALLBACK_FLAGS_BACKUP:
	.RES MAX_ENTITIES*2
CACHED_MAP_BLOCK_X:
	.RES 2
CACHED_MAP_BLOCK_Y:
	.RES 2
CACHED_MAP_BLOCK_ID:
	.RES 2
USED_BG2_TILEMAP_FIRST_FREE_BIT:
	.RES 2
PLAYER_HAS_MOVED_SINCE_MAP_LOAD:
	.RES 2
USE_SECOND_SPRITE_FRAME:
	.RES 2
;unused
	.RES 2
SPRITE_UPDATE_ENTITY_OFFSET:
	.RES 2
FOOTSTEP_SOUND_IGNORE_ENTITY:
	.RES 2
FOOTSTEP_SOUND_ID:
	.RES 2
FOOTSTEP_SOUND_ID_OVERRIDE:
	.RES 2
ENTITY_COLLIDED_OBJECTS:
	.RES MAX_ENTITIES*2
ENTITY_OBSTACLE_FLAGS:
	.RES MAX_ENTITIES*2
ENTITY_SPRITEMAP_SIZES:
	.RES MAX_ENTITIES*2
ENTITY_SPRITEMAP_BEGINNING_INDICES:
	.RES MAX_ENTITIES*2
ENTITY_VRAM_ADDRESS:
	.RES MAX_ENTITIES*2
ENTITY_GRAPHICS_PTR_LOW:
	.RES MAX_ENTITIES*2
ENTITY_GRAPHICS_PTR_HIGH:
	.RES MAX_ENTITIES*2
ENTITY_GRAPHICS_SPRITE_BANK:
	.RES MAX_ENTITIES*2
ENTITY_BYTE_WIDTHS:
	.RES MAX_ENTITIES*2
ENTITY_TILE_HEIGHTS:
	.RES MAX_ENTITIES*2
ENTITY_DIRECTIONS:
	.RES MAX_ENTITIES*2
ENTITY_MOVEMENT_SPEEDS:
	.RES MAX_ENTITIES*2
ENTITY_SIZES:
	.RES MAX_ENTITIES*2
ENTITY_SURFACE_FLAGS:
	.RES MAX_ENTITIES*2
ENTITY_UPPER_LOWER_BODY_DIVIDES:
	.RES MAX_ENTITIES*2
ENTITY_WALKING_STYLES:
	.RES MAX_ENTITIES*2
ENTITY_PATHFINDING_STATES:
	.RES MAX_ENTITIES*2
ENTITY_NPC_IDS:
	.RES MAX_ENTITIES*2
ENTITY_SPRITE_IDS:
	.RES MAX_ENTITIES*2
ENTITY_ENEMY_IDS:
	.RES MAX_ENTITIES*2
ENTITY_ENEMY_SPAWN_TILES:
	.RES MAX_ENTITIES*2
ENTITY_UNUSED:
	.RES MAX_ENTITIES*2
ENTITY_UNKNOWN_2DC6:
	.RES MAX_ENTITIES*2
ENTITY_PATH_POINTS:
	.RES MAX_ENTITIES*2
ENTITY_PATH_POINT_COUNTS:
	.RES MAX_ENTITIES*2
ENTITY_OVERLAY_FLAGS:
	.RES MAX_ENTITIES*2
ENTITY_MUSHROOMIZED_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
ENTITY_MUSHROOMIZED_NEXT_UPDATE_FRAMES:
	.RES MAX_ENTITIES*2
ENTITY_MUSHROOMIZED_SPRITEMAPS:
	.RES MAX_ENTITIES*2
ENTITY_SWEATING_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
ENTITY_SWEATING_NEXT_UPDATE_FRAMES:
	.RES MAX_ENTITIES*2
ENTITY_SWEATING_SPRITEMAPS:
	.RES MAX_ENTITIES*2
ENTITY_RIPPLE_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
ENTITY_RIPPLE_NEXT_UPDATE_FRAMES:
	.RES MAX_ENTITIES*2
ENTITY_RIPPLE_SPRITEMAPS:
	.RES MAX_ENTITIES*2
ENTITY_BIG_RIPPLE_OVERLAY_PTRS:
	.RES MAX_ENTITIES*2
ENTITY_BIG_RIPPLE_NEXT_UPDATE_FRAMES:
	.RES MAX_ENTITIES*2
ENTITY_BIG_RIPPLE_SPRITEMAPS:
	.RES MAX_ENTITIES*2
ENTITY_WEAK_ENEMY_VALUE:
	.RES MAX_ENTITIES*2
; yes, 6 completely unused entity tables
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
	.RES MAX_ENTITIES*2
ENTITY_HITBOX_ENABLED:
	.RES MAX_ENTITIES*2
ENTITY_HITBOX_UP_DOWN_WIDTHS:
	.RES MAX_ENTITIES*2
ENTITY_HITBOX_UP_DOWN_HEIGHTS:
	.RES MAX_ENTITIES*2
ENTITY_HITBOX_LEFT_RIGHT_WIDTHS:
	.RES MAX_ENTITIES*2
ENTITY_CURRENT_DISPLAYED_SPRITES:
	.RES MAX_ENTITIES*2
ENTITY_ANIMATION_FINGERPRINTS:
	.RES MAX_ENTITIES*2
VWF_BUFFER:
	.RES 32 * 52
UNKNOWN_7E3B12:
	.RES 8*3
;unused
	.RES 234
UNKNOWN_7E3C14:
	.RES 2
UNKNOWN_7E3C16:
	.RES 2
UNKNOWN_7E3C18:
	.RES 2
UNKNOWN_7E3C1A:
	.RES 2
UNKNOWN_7E3C1C:
	.RES 2
UNKNOWN_7E3C1E:
	.RES 2
UNKNOWN_7E3C20:
	.RES 2
UNKNOWN_7E3C22:
	.RES 2
TRANSITION_BACKGROUND_X_VELOCITY:
	.RES 2
UNKNOWN_7E3C26:
	.RES 2
TRANSITION_BACKGROUND_Y_VELOCITY:
	.RES 2
UNREAD_7E3C2A:
	.RES 2
TRANSITION_BACKGROUND_X:
	.RES 2
UNREAD_7E3C2E:
	.RES 2
TRANSITION_BACKGROUND_Y:
	.RES 2
ANIMATED_BACKGROUND_LAYER_1_HDMA_TABLE:
	.RES 7
;unused
	.RES 3
ANIMATED_BACKGROUND_LAYER_2_HDMA_TABLE:
	.RES 7
;unused
	.RES 3
ANIMATED_BACKGROUND_LAYER_1_HDMA_BUFFER:
	.RES 448
ANIMATED_BACKGROUND_LAYER_2_HDMA_BUFFER:
	.RES 448
SWIRL_WINDOW_HDMA_TABLE:
	.RES 3 * 3
;unused
	.RES 1
SWIRL_WINDOW_HDMA_BUFFER:
	.RES 924
DEBUG:
	.RES 2
LOADED_MAP_TILE_COMBO:
	.RES 2
LOADED_MAP_PALETTE:
	.RES 2
LOADED_MAP_TILESET:
	.RES 2
SCREEN_LEFT_X:
	.RES 2
SCREEN_TOP_Y:
	.RES 2
;unused
	.RES 4
SCREEN_X_PIXELS_COPY:
	.RES 2
SCREEN_Y_PIXELS_COPY:
	.RES 2
SCREEN_X_PIXELS:
	.RES 2
SCREEN_Y_PIXELS:
	.RES 2
UNKNOWN_7E4384:
	.RES 2
BG12_POSITION_X_COPY:
	.RES 2
BG12_POSITION_Y_COPY:
	.RES 2
CURRENT_TELEPORT_DESTINATION_X:
	.RES 2
CURRENT_TELEPORT_DESTINATION_Y:
	.RES 2
CURRENT_SECTOR_ATTRIBUTES:
	.RES 2
LOADED_ROWS_X:
	.RES 16
LOADED_ROWS_Y:
	.RES 16
LOADED_COLUMNS_X:
	.RES 16
LOADED_COLUMNS_Y:
	.RES 16
COLOUR_AVERAGE_RED:
	.RES 2
COLOUR_AVERAGE_GREEN:
	.RES 2
COLOUR_AVERAGE_BLUE:
	.RES 2
SAVED_COLOUR_AVERAGE_RED:
	.RES 2
SAVED_COLOUR_AVERAGE_GREEN:
	.RES 2
SAVED_COLOUR_AVERAGE_BLUE:
	.RES 2
OVERWORLD_TILESET_ANIM:
	.RES .SIZEOF(overworld_tileset_anim) * 8
OVERWORLD_PALETTE_ANIM:
	.RES .SIZEOF(overworld_palette_anim)
LOADED_ANIMATED_TILE_COUNT:
	.RES 2
MAP_PALETTE_ANIMATION_LOADED:
	.RES 2
MAP_PALETTE_BACKUP:
	.RES 2 * 16 * 16
WIPE_PALETTES_ON_MAP_LOAD:
	.RES 2
;unused
	.RES 2
;an ID for the UNKNOWN_C42F8C table
NEW_SPRITE_TILE_WIDTH:
	.RES 2
NEW_SPRITE_TILE_HEIGHT:
	.RES 2
OVERWORLD_SPRITEMAPS:
	.RES .SIZEOF(spritemap) * 179
;unused
	.RES 3
SPRITE_VRAM_TABLE:
	.RES 88
NPC_SPAWNS_ENABLED:
	.RES 2
ENEMY_SPAWNS_ENABLED:
	.RES 2
OVERWORLD_ENEMY_COUNT:
	.RES 2
OVERWORLD_ENEMY_MAXIMUM:
	.RES 2
MAGIC_BUTTERFLY_SPAWNED:
	.RES 2
ENEMY_SPAWN_RANGE_WIDTH:
	.RES 2
ENEMY_SPAWN_RANGE_HEIGHT:
	.RES 2
SHOW_NPC_FLAG:
	.RES 2
ENEMY_SPAWN_TOO_MANY_ENEMIES_FAILURE_COUNT:
	.RES 2
UNREAD_7E4A6A:
	.RES 2
ENEMY_SPAWN_ENCOUNTER_ID:
	.RES 2
ENEMY_SPAWN_REMAINING_ENEMY_COUNT:
	.RES 2
ENEMY_SPAWN_CHANCE:
	.RES 2
SPAWNING_ENEMY_GROUP:
	.RES 2
SPAWNING_ENEMY_SPRITE:
	.RES 2
SPAWNING_ENEMY_NAME:
	.RES 4
ENEMY_SPAWN_COUNTER:
	.RES 2
PATHFINDING_ENEMY_IDS:
	.RES 2 * 4
PATHFINDING_ENEMY_COUNTS:
	.RES 2 * 4
CURRENT_BATTLE_GROUP:
	.RES 2
PATHFINDING_TARGET_CENTRE_X:
	.RES 2
PATHFINDING_TARGET_CENTRE_Y:
	.RES 2
PATHFINDING_TARGET_WIDTH:
	.RES 2
PATHFINDING_TARGET_HEIGHT:
	.RES 2
DELIVERY_PATHS:
	.RES 20 * 10 * 4
TOUCHED_ENEMY:
	.RES 2
ENEMY_PATHFINDING_TARGET_ENTITY:
	.RES 2
ENEMY_HAS_BEEN_TOUCHED:
	.RES 2
BATTLE_INITIATIVE:
	.RES 2
ACTIONSCRIPT_BACKUP_X:
	.RES 2
ACTIONSCRIPT_BACKUP_Y:
	.RES 2
BATTLE_MODE:
	.RES 2
PARTY_MEMBERS_ALIVE_OVERWORLD:
	.RES 2
CURRENT_PARTY_MEMBER_TICK:
	.RES 2
CHOSEN_FOUR_PTRS:
	.RES 6 * 2
UNREAD_7E4DD4:
	.RES 2
HORIZONTAL_MOVEMENT_SPEEDS:
	.RES .SIZEOF(movement_speeds) * 14
VERTICAL_MOVEMENT_SPEEDS:
	.RES .SIZEOF(movement_speeds) * 14
PLAYER_POSITION_BUFFER:
	.RES .SIZEOF(player_position_buffer_entry) * 256
PLAYER_MOVEMENT_FLAGS:
	.RES 2
PLAYER_INTANGIBILITY_FRAMES:
	.RES 2
BICYCLE_DIAGONAL_TURN_COUNTER:
	.RES 2
LAST_SECTOR_X:
	.RES 2
LAST_SECTOR_Y:
	.RES 2
BATTLE_SWIRL_COUNTDOWN:
	.RES 2
INTERACTING_NPC_ID:
	.RES 2
INTERACTING_NPC_ENTITY:
	.RES 2
OVERWORLD_DAMAGE_COUNTDOWN_FRAMES:
	.RES 2 * 6
BACKGROUND_COLOUR_BACKUP:
	.RES 2
INPUT_DISABLE_FRAME_COUNTER:
	.RES 2
CURRENT_LEADER_DIRECTION:
	.RES 2
CURRENT_LEADING_PARTY_MEMBER_ENTITY:
	.RES 2
CAMERA_MODE_BACKUP:
	.RES 2
CAMERA_MODE_3_FRAMES_LEFT:
	.RES 2
UNREAD_7E5D7E:
	.RES 2
;unused
	.RES 12
HP_ALERT_SHOWN:
	.RES 2 * 6
OVERWORLD_STATUS_SUPPRESSION:
	.RES 2
PENDING_INTERACTIONS:
	.RES 2
MUSHROOMIZATION_TIMER: ;Time left until next direction swap in frames
	.RES 2
MUSHROOMIZATION_MODIFIER: ;Which set of swapped directions to use
	.RES 2
MUSHROOMIZED_WALKING_FLAG: ;Whether or not to use mushroomized movement logic
	.RES 2
UNREAD_7E5DA2:
	.RES 2
TEMP_ENTITY_SURFACE_FLAGS:
	.RES 2
FINAL_MOVEMENT_DIRECTION:
	.RES 2
LADDER_STAIRS_TILE_X:
	.RES 2
LADDER_STAIRS_TILE_Y:
	.RES 2
CHECKED_COLLISION_LEFT_X:
	.RES 2
CHECKED_COLLISION_TOP_Y:
	.RES 2
;unused
	.RES 4
SET_TEMP_ENTITY_SURFACE_FLAGS:
	.RES 2
NORTH_SOUTH_COLLISION_TEST_RESULT:
	.RES 2
NOT_MOVING_IN_SAME_DIRECTION_FACED:
	.RES 2
UNREAD_7E5DBA:
	.RES 2
DOOR_FOUND:
	.RES 2
DOOR_FOUND_TYPE:
	.RES 2
CURRENT_QUEUED_INTERACTION_TYPE:
	.RES 2
USING_DOOR:
	.RES 2
STAIRS_DIRECTION:
	.RES 2
ESCALATOR_ENTRANCE_DIRECTION:
	.RES 2
;unused
	.RES 2
AUTO_MOVEMENT_DIRECTION:
	.RES 2
STAIRS_NEW_X:
	.RES 2
STAIRS_NEW_Y:
	.RES 2
ESCALATOR_NEW_X:
	.RES 2
ESCALATOR_NEW_Y:
	.RES 2
CURRENT_MAP_MUSIC_TRACK:
	.RES 2
NEXT_MAP_MUSIC_TRACK:
	.RES 2
DISABLE_MUSIC_CHANGES:
	.RES 2
DO_MAP_MUSIC_FADE:
	.RES 2
UNREAD_7E5DDC:
	.RES 2
MAP_OBJECT_TEXT:
	.RES 4
;unused
	.RES 8
QUEUED_INTERACTIONS:
	.RES .SIZEOF(queued_interaction) * 4
CURRENT_QUEUED_INTERACTION:
	.RES 2
NEXT_QUEUED_INTERACTION:
	.RES 2
ENTITY_CREATION_QUEUE:
	.RES .SIZEOF(queued_entity_creation) * 12
ENTITY_CREATION_QUEUE_LENGTH:
	.RES 2
LOADED_MAP_MUSIC_ENTRY:
	.RES 4
ACTIVE_HOTSPOTS:
	.RES .SIZEOF(active_hotspot) * 2
DOOR_INTERACTIONS:
	.RES 19 ;something's not right here
SKIP_ADDING_COMMAND_TEXT:
	.RES 1
CHARACTER_PADDING:
	.RES 1
ENABLE_WORD_WRAP:
	.RES 2
EXTRA_TICK_ON_WINDOW_CLOSE:
	.RES 1
FORCE_LEFT_TEXT_ALIGNMENT:
	.RES 1
NEW_TEXT_PIXEL_OFFSET:
	.RES 1
LAST_TEXT_PIXEL_OFFSET_SET:
	.RES 1
FORCE_CENTRE_TEXT_ALIGNMENT:
	.RES 1
VWF_INDENT_NEW_LINE:
	.RES 1
LAST_PRINTED_CHARACTER:
	.RES 1
PRINT_ATTACKER_ARTICLE:
	.RES 1
PRINT_TARGET_ARTICLE:
	.RES 1
PAGINATION_WINDOW:
	.RES 2
PAGINATION_ANIMATION_FRAME:
	.RES 2
TEXT_TILEMAP_BUFFER:
	.RES 8 * $3F0
BG2_BUFFER:
	.RES $800
DUMMY_WINDOW:
	.RES .SIZEOF(window_stats)
WINDOW_STATS:
	.RES .SIZEOF(window_stats) * 8
WINDOW_HEAD:
	.RES 2
WINDOW_TAIL:
	.RES 2
OPEN_WINDOW_TABLE:
	.RES 53 * 2
TITLED_WINDOWS:
	.RES 5 * 2
CURRENT_FOCUS_WINDOW:
	.RES 2
NUMBER_TEXT_BUFFER:
	.RES 12
HPPP_WINDOW_DIGIT_BUFFER:
	.RES 3
HPPP_WINDOW_BUFFER:
	.RES .SIZEOF(hp_pp_window_buffer) * 4
RENDER_HPPP_WINDOWS:
	.RES 1
BATTLE_MENU_CURRENT_CHARACTER_ID:
	.RES 2
UNREAD_7E89CC:
	.RES 2
CURRENT_FLASHING_ROW:
	.RES 2
CURRENT_FLASHING_ENEMY:
	.RES 2
CURRENT_FLASHING_ENEMY_ROW:
	.RES 2
MENU_OPTIONS:
	.RES NUM_MENU_OPTIONS*.SIZEOF(menu_option)
INSTANT_PRINTING:
	.RES 1
REDRAW_ALL_WINDOWS:
	.RES 1
UPLOAD_HPPP_METER_TILES:
	.RES 1
SELECTED_TEXT_SPEED:
	.RES 2
HP_METER_SPEED:
	.RES 4
;unused
	.RES 6
PARTY_MEMBER_SELECTION_SCRIPTS:
	.RES 4*4
ACTIONSCRIPT_STATE:
	.RES 2
BATTLE_MODE_FLAG:
	.RES 2
TEXT_PROMPT_WAITING_FOR_INPUT:
	.RES 2
CURRENTLY_DRAWN_HPPP_WINDOWS:
	.RES 2
HPPP_METER_AREA_NEEDS_UPDATE:
	.RES 2
TEXT_SPEED_BASED_WAIT:
	.RES 2
BLINKING_TRIANGLE_FLAG:
	.RES 2
TEXT_SOUND_MODE:
	.RES 2
UNREAD_7E9651:
	.RES 1
TEXT_RENDER_STATE:
	.RES 6
ATTACKER_ENEMY_ID:
	.RES 2
TARGET_ENEMY_ID:
	.RES 2
UNKNOWN_7E965C:
	.RES 2
MENU_BACKUP_SELECTED_TEXT_Y:
	.RES 2
UPCOMING_WORD_LENGTH:
	.RES 2
NEXT_KEYBOARD_INPUT_INDEX:
	.RES 2
EARLY_TICK_EXIT:
	.RES 1
MENU_OPTION_LABEL_LENGTHS:
	.RES 4
UNKNOWN_7E9691:
	.RES 4
HALF_HPPP_METER_SPEED:
	.RES 1
FASTEST_HPPP_METER_SPEED:
	.RES 1
DISABLE_HPPP_ROLLING:
	.RES 1
HPPP_METER_FLIPOUT_MODE:
	.RES 2
HPPP_METER_FLIPOUT_MODE_HP_BACKUPS:
	.RES 2*4
HPPP_METER_FLIPOUT_MODE_PP_BACKUPS:
	.RES 2*4
DISPLAY_TEXT_STATES:
	.RES .SIZEOF(display_text_state) * 10
NEXT_TEXT_STACK_FRAME:
	.RES 2
CC_ARGUMENT_STORAGE:
	.RES 16
CC_ARGUMENT_GATHERING_LOOP_COUNTER:
	.RES 2
TEXT_MAIN_REGISTER_BACKUP:
	.RES 4
TEXT_SUB_REGISTER_BACKUP:
	.RES 4
TEXT_LOOP_REGISTER_BACKUP:
	.RES 1
ONGOSUB_OFFSET:
	.RES 2
TEXT_NEW_MENU_OPTION_BUFFER:
	.RES 30
GAME_STATE:
	.RES .SIZEOF(game_state)
PARTY_CHARACTERS:
	.RES .SIZEOF(char_struct) * (TOTAL_PARTY_COUNT)
EVENT_FLAGS:
	.RES (EVENT_FLAG_COUNT/8)
CURRENT_INTERACTING_EVENT_FLAG:
	.RES 2
WINDOW_TEXT_ATTRIBUTES_BACKUP:
	.RES .SIZEOF(window_text_attributes_copy)
TEMPORARY_TEXT_BUFFER:
	.RES 1 * 49
TEMPORARY_WEAPON:
	.RES 1
TEMPORARY_BODY_GEAR:
	.RES 1
TEMPORARY_ARMS_GEAR:
	.RES 1
TEMPORARY_OTHER_GEAR:
	.RES 1
COMPARE_EQUIPMENT_MODE:
	.RES 2
CHARACTER_FOR_EQUIP_MENU:
	.RES 1
BATTLE_ATTACKER_NAME:
	.RES 30
BATTLE_TARGET_NAME:
	.RES 28
CITEM:
	.RES 1
CNUM:
	.RES 4
LAST_SELECTED_PSI_DESCRIPTION:
	.RES 2
POST_TELEPORT_CALLBACK:
	.RES 4
RESPAWN_X:
	.RES 2
RESPAWN_Y:
	.RES 2
UNKNOWN_7E9D23:
	.RES 32 * 8
VWF_X:
	.RES 2
VWF_TILE:
	.RES 2
UNKNOWN_7E9E27:
	.RES 2
UNKNOWN_7E9E29:
	.RES 2
DMA_TRANSFER_FLAG:
	.RES 2
ENTITY_PREPARED_X_COORDINATE:
	.RES 2
ENTITY_PREPARED_Y_COORDINATE:
	.RES 2
ENTITY_PREPARED_DIRECTION:
	.RES 2
CAMERA_FOCUS_ENTITY:
	.RES 2
SPAWNING_TRAVELLING_PHOTOGRAPHER_ID:
	.RES 2
ACTIONSCRIPT_COLDATA_BLUE:
	.RES 1
ACTIONSCRIPT_COLDATA_GREEN:
	.RES 1
ACTIONSCRIPT_COLDATA_RED:
	.RES 1
RECTANGLE_WINDOW_BUFFER_INDEX:
	.RES 2
OVERWORLD_TASKS:
	.RES 6 * 4
DAD_PHONE_TIMER:
	.RES 2
DAD_PHONE_QUEUED:
	.RES 2
AUTO_MOVEMENT_DEMO_BUFFER:
	.RES 64 * 3
AUTO_MOVEMENT_DEMO_INDEX:
	.RES 2
LOADED_TIMED_ITEM_TRANSFORMATIONS:
	.RES .SIZEOF(loaded_timed_item_transformation) * 4
ITEM_TRANSFORMATIONS_LOADED:
	.RES 2
TIME_UNTIL_NEXT_ITEM_TRANSFORMATION_CHECK:
	.RES 1
FLYOVER_SCREEN_OFFSET:
	.RES 2
FLYOVER_PIXEL_OFFSET:
	.RES 2
FLYOVER_BYTE_OFFSET:
	.RES 2
BUBBLE_MONKEY_MODE:
	.RES 2
BUBBLE_MONKEY_MOVEMENT_CHANGE_TIMER:
	.RES 2
;unused
	.RES 2
BUBBLE_MONKEY_DISTRACTED_NEXT_DIRECTION:
	.RES 2
BUBBLE_MONKEY_DISTRACTED_NEXT_DIRECTION_CHANGE_TIME:
	.RES 2
BUBBLE_MONKEY_DISTRACTED_DIRECTION_CHANGES_LEFT:
	.RES 2
PSI_TELEPORT_DESTINATION:
	.RES 2
PSI_TELEPORT_STYLE:
	.RES 2
PSI_TELEPORT_STATE:
	.RES 2
PSI_TELEPORT_SPEED:
	.TAG fixed_point
PSI_TELEPORT_SPEED_X:
	.TAG fixed_point
PSI_TELEPORT_SPEED_Y:
	.TAG fixed_point
PSI_TELEPORT_NEXT_X:
	.TAG fixed_point
PSI_TELEPORT_NEXT_Y:
	.TAG fixed_point
PSI_TELEPORT_SUCCESS_SCREEN_SPEED_X:
	.RES 2
PSI_TELEPORT_SUCCESS_SCREEN_X:
	.RES 2
PSI_TELEPORT_SUCCESS_SCREEN_SPEED_Y:
	.RES 2
PSI_TELEPORT_SUCCESS_SCREEN_Y:
	.RES 2
PSI_TELEPORT_BETA_ANGLE:
	.RES 2
PSI_TELEPORT_BETA_PROGRESS:
	.RES 2
PSI_TELEPORT_BETTER_PROGRESS:
	.RES 2
PSI_TELEPORT_BETA_X_ADJUSTMENT:
	.RES 2
PSI_TELEPORT_BETA_Y_ADJUSTMENT:
	.RES 2
MINI_GHOST_ENTITY_ID:
	.RES 2
MINI_GHOST_ANGLE:
	.RES 2
POSSESSED_PLAYER_COUNT:
	.RES 2
PAJAMA_FLAG:
	.RES 2
MOVING_PARTY_MEMBER_ENTITY_ID:
	.RES 2
TITLE_SCREEN_QUICK_MODE:
	.RES 2
SRAM_VERSION_LOADED:
	.RES 2
CORRUPTION_CHECK_RESULTS:
	.RES 1
TILEMAP_UPDATE_TILE_X:
	.RES 2
TILEMAP_UPDATE_TILE_Y:
	.RES 2
TILEMAP_UPDATE_TILE_COUNT:
	.RES 2
TILEMAP_UPDATE_TILE_HEIGHT:
	.RES 2
TILEMAP_UPDATE_TILE_WIDTH:
	.RES 2
TILEMAP_UPDATE_BASE_ADDRESS:
	.RES 2
<<<<<<< HEAD
TILEMAP_UPDATE_REMAINING_TILES:
	.RES 4
=======
UNKNOWN_7E9F86:
	.RES 2
UNKNOWN_7E9F88:
	.RES 2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
ENEMIES_IN_BATTLE:
	.RES 2
ENEMIES_IN_BATTLE_IDS:
	.RES 2 * 16
BATTLERS_TABLE:
	.RES .SIZEOF(battler) * BATTLER_COUNT
BATTLER_TARGET_FLAGS:
	.RES 4
CURRENT_ATTACKER:
	.RES 2
CURRENT_TARGET:
	.RES 2
BATTLE_EXP_SCRATCH:
	.RES 4
BATTLE_MONEY_SCRATCH:
	.RES 2
GIYGAS_PHASE:
	.RES 2
BATTLE_ITEM_USED:
	.RES 1
BATTLE_MENU_SELECTION:
	.TAG battle_menu_selection
ATTACKER_NAME_ADJUST_SCRATCH:
	.RES 27
TARGET_NAME_ADJUST_SCRATCH:
	.RES 27
TARGET_NAME_BUFFER:
	.RES 27
STEALABLE_ITEM_CANDIDATES:
	.RES 14 * 4
HIGHEST_ENEMY_LEVEL_IN_BATTLE:
	.RES 2
SPECIAL_DEFEAT:
	.RES 2
ITEM_DROPPED:
	.RES 2
MIRROR_ENEMY:
	.RES 2
MIRROR_BATTLER_BACKUP:
	.RES .SIZEOF(battler)
MIRROR_TURN_TIMER:
	.RES 2
PARTY_MEMBERS_WITH_SELECTED_ACTIONS:
	.RES 2 * 6
DEBUGGING_CURRENT_PSI_ANIMATION:
	.RES 2
DEBUGGING_CURRENT_SWIRL:
	.RES 2
DEBUGGING_CURRENT_SWIRL_FLAGS:
	.RES 2
INSTANT_WIN_SORTED_OFFENSE:
	.RES 2 * 4
INSTANT_WIN_SORTED_HP:
	.RES 2 * 4
INSTANT_WIN_SORTED_DEFENSE:
	.RES 2 * 4
IS_SMAAAAASH_ATTACK:
	.RES 2
ENEMY_PERFORMING_FINAL_ATTACK:
	.RES 2
SKIP_DEATH_TEXT_AND_CLEANUP:
	.RES 2
SHIELD_HAS_NULLIFIED_DAMAGE:
	.RES 2
DAMAGE_IS_REFLECTED:
	.RES 2
USED_ENEMY_LETTERS:
	.RES 26
CURRENT_BATTLE_SPRITEMAPS_ALLOCATED:
	.RES 2
CURRENT_BATTLE_SPRITES_ALLOCATED:
	.RES 2
BATTLE_SPRITEMAP_ALLOCATION_COUNTS:
	.RES 4 * 2
CURRENT_BATTLE_SPRITE_ENEMY_IDS:
	.RES 4 * 2
CURRENT_BATTLE_SPRITE_WIDTHS:
	.RES 4 * 2
CURRENT_BATTLE_SPRITE_HEIGHTS:
	.RES 4 * 2
BATTLE_SPRITEMAPS:
	.RES 80 * 4
ALT_BATTLE_SPRITEMAPS:
	.RES 80 * 4
NUM_BATTLERS_IN_FRONT_ROW:
	.RES 2
NUM_BATTLERS_IN_BACK_ROW:
	.RES 2
BATTLER_FRONT_ROW_X_POSITIONS:
	.RES 8
BATTLER_FRONT_ROW_Y_POSITIONS:
	.RES 8
BATTLER_BACK_ROW_X_POSITIONS:
	.RES 8
BATTLER_BACK_ROW_Y_POSITIONS:
	.RES 8
FRONT_ROW_BATTLERS:
	.RES 8
BACK_ROW_BATTLERS:
	.RES 8
CURRENT_LAYER_CONFIG:
	.RES 2
VERTICAL_SHAKE_DURATION:
	.RES 2
VERTICAL_SHAKE_HOLD_DURATION:
	.RES 2
SCREEN_EFFECT_MINIMUM_WAIT_FRAMES:
	.RES 2
WOBBLE_DURATION:
	.RES 2
SHAKE_DURATION:
	.RES 2
SCREEN_EFFECT_HORIZONTAL_OFFSET:
	.RES 2
SCREEN_EFFECT_VERTICAL_OFFSET:
	.RES 2
PSI_ANIMATION_X_OFFSET:
	.RES 2
PSI_ANIMATION_Y_OFFSET:
	.RES 2
GREEN_FLASH_DURATION:
	.RES 2
RED_FLASH_DURATION:
	.RES 2
ENEMY_TARGETTING_FLASHING:
	.RES 2
HP_PP_BOX_BLINK_DURATION:
	.RES 2
HP_PP_BOX_BLINK_TARGET:
	.RES 2
REFLECT_FLASH_DURATION:
	.RES 2
GREEN_BACKGROUND_FLASH_DURATION:
	.RES 2
DISTORT_30FPS:
	.RES 2
LETTERBOX_VISIBLE_SCREEN_VALUE:
	.RES 2
LETTERBOX_NONVISIBLE_SCREEN_VALUE:
	.RES 2
LETTERBOX_TOP_END:
	.RES 2
LETTERBOX_BOTTOM_START:
	.RES 2
LETTERBOX_EFFECT_ENDING:
	.RES 2
LETTERBOX_HDMA_TABLE:
	.RES 3 * 6
;unused
	.RES 2
LETTERBOX_EFFECT_ENDING_TOP:
	.RES 2
LETTERBOX_EFFECT_ENDING_BOTTOM:
	.RES 2
ENABLE_BACKGROUND_DARKENING:
	.RES 2
BACKGROUND_BRIGHTNESS:
	.RES 2
LOADED_BG_DATA_LAYER1:
	.RES .SIZEOF(loaded_bg_data)
LOADED_BG_DATA_LAYER2:
	.RES .SIZEOF(loaded_bg_data)
FRAMES_UNTIL_NEXT_SWIRL_UPDATE:
	.RES 1
FRAMES_UNTIL_NEXT_SWIRL_FRAME:
	.RES 1
SWIRL_FRAMES_LEFT:
	.RES 1
SWIRL_HDMA_TABLE_ID:
	.RES 1
SWIRL_INVERT_ENABLED:
	.RES 1
SWIRL_REVERSED:
	.RES 1
SWIRL_MASK_SETTINGS:
	.RES 1
SWIRL_HDMA_CHANNEL_OFFSET:
	.RES 1
SWIRL_LENGTH_PADDING:
	.RES 1
SWIRL_AUTO_RESTORE:
	.RES 1
LOADED_OVAL_WINDOW:
	.RES 4
LOADED_OVAL_WINDOW_CENTRE_X:
	.RES 2
LOADED_OVAL_WINDOW_CENTRE_Y:
	.RES 2
LOADED_OVAL_WINDOW_WIDTH:
	.RES 2
LOADED_OVAL_WINDOW_HEIGHT:
	.RES 2
LOADED_OVAL_WINDOW_CENTRE_X_ADD:
	.RES 2
LOADED_OVAL_WINDOW_CENTRE_Y_ADD:
	.RES 2
LOADED_OVAL_WINDOW_WIDTH_VELOCITY:
	.RES 2
LOADED_OVAL_WINDOW_HEIGHT_VELOCITY:
	.RES 2
LOADED_OVAL_WINDOW_WIDTH_ACCELERATION:
	.RES 2
LOADED_OVAL_WINDOW_HEIGHT_ACCELERATION:
	.RES 2
SWIRL_NEXT_SWIRL:
	.RES 1
SWIRL_REPEAT_SPEED:
	.RES 1
SWIRL_REPEATS_UNTIL_SPEED_UP:
	.RES 1
PSI_ANIMATION_ENEMY_TARGETS:
	.RES 2 * 4
ACTIVE_OVAL_WINDOW:
	.RES 1
BATTLE_SPRITE_ROW_WIDTH:
	.RES 2 * 2
BATTLE_SPRITE_PALETTE_EFFECT_FRAMES_LEFT:
	.RES 2 * 4
BATTLE_SPRITE_PALETTE_EFFECT_DELTAS:
	.RES 6 * 16 * 4
BATTLE_SPRITE_PALETTE_EFFECT_COUNTERS:
	.RES 6 * 16 * 4
BATTLE_SPRITE_PALETTE_EFFECT_STEPS:
	.RES 6 * 16 * 4
BATTLE_SPRITE_PALETTE_EFFECT_SPEED:
	.RES 2
SOUND_STONE_PLAYBACK_STATE:
	.RES .SIZEOF(sound_stone_playback_state) * 8
SOUND_STONE_SPRITEMAP_1:
	.TAG spritemap
SOUND_STONE_SPRITEMAP_2:
	.TAG spritemap
ACTIVE_MANPU_X:
	.RES 2
ACTIVE_MANPU_Y:
	.RES 2
PATH_MATRIX_BUFFER:
	.RES 2
; unused
	.RES 2
PATH_MATRIX_ROWS:
	.RES 2
PATH_MATRIX_COLUMNS:
	.RES 2
PATH_MATRIX_BORDER:
	.RES 2
PATH_MATRIX_SIZE:
	.RES 2
PATH_SEARCH_TEMP_START:
	.RES 2
PATH_SEARCH_TEMP_END:
	.RES 2
PATH_SEARCH_TEMP_A:
	.RES 2
PATH_SEARCH_TEMP_B:
	.RES 2
PATH_CARDINAL_OFFSET:
	.RES 4 * 2
PATH_CARDINAL_INDEX:
	.RES 4 * 2 * 2
PATH_DIAGONAL_INDEX:
	.RES 4 * 2 * 2
PATH_HEAP_START:
	.RES 2
PATH_HEAP_CURRENT:
	.RES 2
PATH_HEAP_END:
	.RES 2
;unused
	.RES 95
ALLOW_TEXT_OVERFLOW:
	.RES 1
SAVE_FILES_PRESENT:
	.RES 3
CURRENT_SAVE_SLOT:
	.RES 1
LAST_PARTY_MEMBER_STATUS_LAST_CHECK:
	.RES 2
ENTITY_FADE_STATES_BUFFER:
	.RES 2
ENTITY_FADE_STATES_LENGTH:
	.RES 2
ENTITY_FADE_ENTITY:
	.RES 2
ENTITY_FADE_STATES:
	.RES 4
TOWN_MAP_ANIMATION_FRAME:
	.RES 2
TOWN_MAP_PLAYER_ICON_ANIMATION_FRAME:
	.RES 2
FRAMES_UNTIL_MAP_ICON_PALETTE_UPDATE:
	.RES 2
WAIT_FOR_NAMING_SCREEN_ACTIONSCRIPT:
	.RES 2
DISABLED_TRANSITIONS:
	.RES 2
NEXT_YOUR_SANCTUARY_LOCATION_TILE_INDEX:
	.RES 2
TOTAL_YOUR_SANCTUARY_LOADED_TILESET_TILES:
	.RES 2
YOUR_SANCTUARY_LOADED_TILESET_TILES:
	.RES 2
LOADED_YOUR_SANCTUARY_LOCATIONS:
	.RES 8 * 2
UNKNOWN_7EB4CF:
	.RES 2
CAST_TILE_OFFSET:
	.RES 2
INITIAL_CAST_ENTITY_SLEEP_FRAMES:
	.RES 2
UNUSED_7EB4D5:
	.RES 2 * 4
UNUSED_7EB4DD:
	.RES 2
;unused
	.RES 4
CREDITS_NEXT_CREDIT_POSITION:
	.RES 2
CREDITS_ROW_WIPE_THRESHOLD:
	.RES 2
CREDITS_SCRIPT_DATA:
	.RES 4
CREDITS_SCROLL_POSITION:
	.TAG fixed_point
PHOTOGRAPH_MAP_LOADING_MODE:
	.RES 2
CUR_PHOTO_DISPLAY:
	.RES 2
CREDITS_DMA_QUEUE_END:
	.RES 2
CREDITS_DMA_QUEUE_START:
	.RES 2
CREDITS_CURRENT_ROW:
	.RES 2
CREDITS_PLAYER_NAME_BUFFER:
	.RES 24
DELIVERY_ATTEMPTS:
	.RES 10 * 2
DELIVERY_TIMERS:
	.RES 10 * 2
PIRACY_FLAG:
	.RES 2

; Audio stuff
CURRENT_MUSIC_TRACK:
	.RES 2
CURRENT_PRIMARY_SAMPLE_PACK:
	.RES 2
CURRENT_SECONDARY_SAMPLE_PACK:
	.RES 2
CURRENT_SEQUENCE_PACK:
	.RES 2

UNKNOWN_7EB543:
	.RES 2
DEBUG_SOUND_MENU_INITIAL_BGM:
	.RES 2
SEQUENCE_PACK_MASK:
	.RES 2
ENABLE_AUTO_SECTOR_MUSIC_CHANGES:
	.RES 2
DEBUG_SOUND_MENU_SELECTED_BGM:
	.RES 2
DEBUG_SOUND_MENU_SELECTED_SE:
	.RES 2
DEBUG_SOUND_MENU_SELECTED_EFFECT:
	.RES 2
UNREAD_7EB551:
	.RES 2
DEBUG_CURSOR_ENTITY:
	.RES 2
DEBUG_MENU_CURSOR_POSITION:
	.RES 2
DEBUG_MENU_BUTTONS_PRESSED:
	.RES 2
DEBUG_MODE_NUMBER:
	.RES 2
;unused
	.RES 2
UNREAD_7EB55D:
	.RES 2
VIEW_ATTRIBUTE_MODE:
	.RES 2
DEBUG_START_POSITION_X:
	.RES 2
DEBUG_START_POSITION_Y:
	.RES 2
; A sprite ID?
DEBUG_VIEW_CHARACTER_SPRITE:
	.RES 2
REPLAY_MODE_ACTIVE:
	.RES 2
UNUSED_7EB569:
	.RES 2
UNUSED_7EB56B:
	.RES 2
RAND_A_BACKUP:
	.RES 2
RAND_B_BACKUP:
	.RES 2
FRAME_COUNTER_BACKUP:
	.RES 2
REPLAY_TRANSITION_STYLE:
	.RES 2
DEBUG_ENEMIES_ENABLED_FLAG:
	.RES 2

.ORG $7E8000 ;???
INTRO_BG2_BUFFER:

; Unknown memory segment
.SEGMENT "RAM2"
ANIMATED_MAP_PALETTE_BUFFER:
	.RES 2048
ANIMATED_TILESET_BUFFER:
	.RES 8192
LOADED_COLLISION_TILES:
	.RES 64 * 64
LOADED_MAP_BLOCKS:
	.RES 2 * 16 * 16
PATHFINDING_STATE:
	.RES 512
PATHFINDING_BUFFER:
	.RES $C00
BUFFER:
	.RES $F800
TILE_COLLISION_BUFFER:
	.RES $800
