.SEGMENT "RAM"
.ORG $7E0000


UNKNOWN_7E0000:
	.RES 1
UNKNOWN_7E0001:
	.RES 1
UNKNOWN_7E0002:
	.RES 1
UNKNOWN_7E0003:
	.RES 2
UNKNOWN_7E0005:
	.RES 2
UNKNOWN_7E0007:
	.RES 2
UNKNOWN_7E0009:
	.RES 1
UNKNOWN_7E000A:
	.RES 1
UNKNOWN_7E000B:
	.RES 1
UNKNOWN_7E000C:
	.RES 1
INIDISP_MIRROR:
	.RES 1
OBSEL_MIRROR:
	.RES 1
UNKNOWN_7E000F:
	.RES 1
MOSAIC_MIRROR:

.ORG $7E0011
UNKNOWN_7E0011:

.ORG $7E0015
BG12NBA_MIRROR:
	.RES 1
UNKNOWN_7E0016:
	.RES 1
UNUSED_WH2_MIRROR:
	.RES 1
UNKNOWN_7E0018:
	.RES 2
TM_MIRROR:
	.RES 1
TD_MIRROR:
	.RES 1
.ORG $7E001E
UNKNOWN_7E001E:
	.RES 1
HDMAEN_MIRROR:
	.RES 1

.ORG $7E0024
RAND_A:
	.RES 2
RAND_B:
	.RES 2
UNKNOWN_7E0028:
	.RES 1
UNKNOWN_7E0029:
	.RES 1
UNKNOWN_7E002A:
	.RES 1
UNKNOWN_7E002B:
	.RES 1
UNKNOWN_7E002C:
	.RES 1
UNKNOWN_7E002D:
	.RES 1
UNKNOWN_7E002E:
	.RES 1
UNKNOWN_7E002F:
	.RES 1
UNKNOWN_7E0030:
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


.ORG $7E0065
PAD_1_STATE:
	.RES 2
PAD_2_STATE:
	.RES 2
PAD_1_HELD:
	.RES 2
PAD_2_HELD:
	.RES 2
PAD_1_PRESS:
	.RES 2
PAD_2_PRESS:

.ORG $7E0091
UNKNOWN_7E0091:
	.RES 1
UNKNOWN_7E0092:
	.RES 2
UNKNOWN_7E0094:
	.RES 2
UNKNOWN_7E0096:
	.RES 1
UNKNOWN_7E0097:
	.RES 2
UNKNOWN_7E0099:

.ORG $7E00A7
TIMER_LOW:
	.RES 2
TIMER_HIGH:

.ORG $7E00B4
TEMP_DIVIDEND:

.ORG $7E00C6
SPC_DATA_PTR:

.ORG $7E0200
CUR_TEXT_PAL:

.ORG $7E0240
CUR_MAP_PAL:

.ORG $7E03A0
CUR_PARTY_PAL:

.ORG $7E0400
UNKNOWN_7E0400:

.ORG $7E0A50
UNKNOWN_7E0A50:
	.RES 2
UNKNOWN_7E0A52:
	.RES 2
UNKNOWN_7E0A54:

.ORG $7E0A58
UNKNOWN_7E0A58:
	.RES 2
MOVEMENT_42_LOADED_PTR:
	.RES 4
UNKNOWN_7E0A5E:
	.RES 2
UNKNOWN_7E0A60:
	.RES 2
LOADED_SPRITE_MOVEMENT_CODES_TABLE:

.ORG $7E0A9E
UNKNOWN_30X2_TABLE_1:
	.RES 60
UNKNOWN_30X2_TABLE_2:
	.RES 60
SPRITE_SCREEN_X_TABLE:
	.RES 60
SPRITE_SCREEN_Y_TABLE:
	.RES 60
SPRITE_ABS_X_TABLE:
	.RES 60
SPRITE_ABS_Y_TABLE:
	.RES 60
SPRITE_ABS_Z_TABLE:
	.RES 60
SPRITE_ABS_X_FRACTION_TABLE:
	.RES 60
SPRITE_ABS_Y_FRACTION_TABLE:
	.RES 60
SPRITE_ABS_Z_FRACTION_TABLE:
	.RES 60
SPRITE_DELTA_X_TABLE:
	.RES 60
SPRITE_DELTA_Y_TABLE:
	.RES 60
SPRITE_DELTA_Z_TABLE:
	.RES 60
SPRITE_DELTA_X_FRACTION_TABLE:
	.RES 60
SPRITE_DELTA_Y_FRACTION_TABLE:
	.RES 60
SPRITE_DELTA_Z_FRACTION_TABLE:
	.RES 60
UNKNOWN_30X2_TABLE_3:
	.RES 60
UNKNOWN_30X2_TABLE_4:
	.RES 60
UNKNOWN_30X2_TABLE_5:
	.RES 60
UNKNOWN_30X2_TABLE_6:
	.RES 60
UNKNOWN_30X2_TABLE_7:
	.RES 60
UNKNOWN_30X2_TABLE_8:
	.RES 60
UNKNOWN_30X2_TABLE_9:
	.RES 60
UNKNOWN_30X2_TABLE_10:
	.RES 60
UNKNOWN_30X2_TABLE_11:
	.RES 60
UNKNOWN_30X2_TABLE_12:
	.RES 60
UNKNOWN_30X2_TABLE_13:
	.RES 60
UNKNOWN_30X2_TABLE_14:
	.RES 60
UNKNOWN_30X2_TABLE_15:
	.RES 60
UNKNOWN_30X2_TABLE_16:
	.RES 60
UNKNOWN_30X2_TABLE_17:
	.RES 60
UNKNOWN_30X2_TABLE_18:
	.RES 60
UNKNOWN_30X2_TABLE_19:
	.RES 60
UNKNOWN_7E125A:

.ORG $7E12E6
UNKNOWN_7E12E6:

.ORG $7E1372
UNKNOWN_30X2_TABLE_20:

.ORG $7E13FE
UNKNOWN_30X2_TABLE_21:

.ORG $7E148A
UNKNOWN_30X2_TABLE_22:

.ORG $7E1516
UNKNOWN_30X2_TABLE_23:

.ORG $7E1A02
UNKNOWN_7E1A02:

.ORG $7E1A0A
UNKNOWN_7E1A0A:

.ORG $7E1A12
UNKNOWN_7E1A12:

.ORG $7E1A1A
UNKNOWN_7E1A1A:

.ORG $7E1A22
UNKNOWN_7E1A22:

.ORG $7E1A2A
UNKNOWN_7E1A2A:

.ORG $7E1A32
UNKNOWN_7E1A32:

.ORG $7E1A3A
UNKNOWN_7E1A3A:

.ORG $7E1ACB
UNKNOWN_7E1ACB:

.ORG $7E1B9E
UNKNOWN_7E1B9E:

.ORG $7E1BA5
UNKNOWN_7E1BA5:
	.RES 1
UNKNOWN_7E1BA6:
	.RES 1
UNKNOWN_7E1BA7:
	.RES 1
UNKNOWN_7E1BA8:

.ORG $7E1BCA
UNKNOWN_7E1BCA:

.ORG $7E1BD0
UNKNOWN_7E1BD0:
	.RES 2
UNKNOWN_7E1BD2:
	.RES 2
UNKNOWN_7E1BD4:

.ORG $7E2402
UNKNOWN_7E2402:
	.RES 2
UNKNOWN_7E2404:

.ORG $7E2444
UNKNOWN_7E2444:

.ORG $7E2484
UNKNOWN_7E2484:

.ORG $7E24C4
UNKNOWN_7E24C4:

.ORG $7E2504
UNKNOWN_7E2504:
	.RES 2
UNKNOWN_7E2506:

.ORG $7E2546
UNKNOWN_7E2546:

.ORG $7E2586
UNKNOWN_7E2586:

.ORG $7E25C6
UNKNOWN_7E25C6:

.ORG $7E2606
UNKNOWN_7E2606:
	.RES 2
UNKNOWN_7E2608:

.ORG $7E2648
UNKNOWN_7E2648:

.ORG $7E2688
UNKNOWN_7E2688:

.ORG $7E26C8
UNKNOWN_7E26C8:

.ORG $7E2708
UNKNOWN_7E2708:

.ORG $7E270A
UNKNOWN_7E270A:

.ORG $7E274A
UNKNOWN_7E274A:

.ORG $7E278A
UNKNOWN_7E278A:

.ORG $7E280A
UNKNOWN_7E280A:

.ORG $7E27CA
UNKNOWN_7E27CA:

.ORG $7E280C
UNKNOWN_30X2_TABLE_23_:
	.RES 60

.ORG $7E289E
UNKNOWN_30X2_TABLE_24:
	.RES 60
UNKNOWN_30X2_TABLE_25:
	.RES 60
UNKNOWN_30X2_TABLE_26:
	.RES 60
UNKNOWN_30X2_TABLE_27:
	.RES 60
UNKNOWN_30X2_TABLE_28:
	.RES 60
UNKNOWN_30X2_TABLE_29:
	.RES 60
UNKNOWN_30X2_TABLE_30:
	.RES 60
UNKNOWN_30X2_TABLE_31:
	.RES 60
UNKNOWN_30X2_TABLE_32:
	.RES 60
UNKNOWN_30X2_TABLE_33:
	.RES 60
UNKNOWN_30X2_TABLE_34:
	.RES 60
UNKNOWN_30X2_TABLE_35:
	.RES 60
UNKNOWN_30X2_TABLE_36:
	.RES 60
UNKNOWN_30X2_TABLE_37:
	.RES 60
UNKNOWN_30X2_TABLE_38:
	.RES 60
UNKNOWN_30X2_TABLE_40:
	.RES 60
UNKNOWN_30X2_TABLE_41:
	.RES 60
LOADED_TPT_ENTRIES:
	.RES 60
LOADED_TPT_ENTRIES_SPRITES:
	.RES 60
UNKNOWN_30X2_TABLE_42:
	.RES 60
UNKNOWN_30X2_TABLE_43:
	.RES 60
UNKNOWN_30X2_TABLE_44:
	.RES 60
UNKNOWN_30X2_TABLE_45:
	.RES 60
UNKNOWN_30X2_TABLE_46:
	.RES 60

.ORG $7E436C
DEBUG:
	.RES 2
UNKNOWN_7E436E:
	.RES 2
UNKNOWN_7E4370:
	.RES 2
UNKNOWN_7E4372:

.ORG $7E438A
UNKNOWN_7E438A:
	.RES 2
UNKNOWN_7E438C:
	.RES 2
CURRENT_SECTOR_ATTRIBUTES:

.ORG $7E43D0
UNKNOWN_7E43D0:
	.RES 2
UNKNOWN_7E43D2:
	.RES 2
UNKNOWN_7E43D4:
	.RES 2
UNKNOWN_7E43D6:
	.RES 2
UNKNOWN_7E43D8:
	.RES 2
UNKNOWN_7E43DA:

.ORG $7E445C
UNKNOWN_7E445C:
	.RES 2
UNKNOWN_7E445E:
	.RES 2
UNKNOWN_7E4460:

.ORG $7E4472
UNKNOWN_7E4472:
	.RES 2
UNKNOWN_7E4474:

.ORG $7E4676
UNKNOWN_7E4676:

.ORG $7E467A
UNKNOWN_7E467A:
	.RES 2
UNKNOWN_7E467C:
	.RES 2
SPRITE_TABLE_7E467E:

.ORG $7E4A00
UNKNOWN_7E4A00:

.ORG $7E4A58
UNKNOWN_7E4A58:

.ORG $7E4A5C
UNKNOWN_7E4A5C:

.ORG $7E4A60
MAGIC_BUTTERFLY:

.ORG $7E4A66
SHOW_NPC_FLAG:
	.RES 2
UNKNOWN_7E4A68:

.ORG $7E4A8C
CURRENT_BATTLE_GROUP:

.ORG $7E4DBA
UNKNOWN_7E4DBA:
	.RES 2
UNKNOWN_7E4DBC:

.ORG $7E4DC2
BATTLE_DEBUG:

.ORG $7E4DC6
UNKNOWN_7E4DC6:
	.RES 2
CHOSEN_FOUR_PTRS:

.ORG $7E5156
PLAYER_POSITION_BUFFER:

.ORG $7E5D56
MISC_DEBUG_FLAGS:
	.RES 2
UNKNOWN_7E5D58:

.ORG $7E5D60
BATTLE_SWIRL_COUNTDOWN:
	.RES 2
CURRENT_TPT_ENTRY:

.ORG $7E5D74
UNKNOWN_7E5D74:

.ORG $7E5D9A
UNKNOWN_7E5D9A:

.ORG $7E5DA0
MUSHROOMIZED_WALKING_FLAG:

.ORG $7E5DBA
UNKNOWN_7E5DBA:

.ORG $7E5DC0
UNKNOWN_7E5DC0:

.ORG $7E5DD4
UNKNOWN_7E5DD4:

.ORG $7E5DD8
UNKNOWN_7E5DD8:

.ORG $7E5DEA
UNKNOWN_7E5DEA:

.ORG $7E5E02
UNKNOWN_7E5E02:
	.RES 2
UNKNOWN_7E5E04:

.ORG $7E5E6D
UNKNOWN_7E5E6D:
	.RES 1
UNKNOWN_7E5E6E:
	.RES 2
UNKNOWN_7E5E70:
	.RES 1
UNKNOWN_7E5E71:
	.RES 2
UNKNOWN_7E5E73:
	.RES 2
UNKNOWN_7E5E75:
	.RES 1
UNKNOWN_7E5E76:
	.RES 1
UNKNOWN_7E5E77:
	.RES 1
UNKNOWN_7E5E78:

.ORG $7E8650
WINDOW_STATS_TABLE:

.ORG $7E88E0
UNKNOWN_7E88E0:
	.RES 2
UNKNOWN_7E88E2:
	.RES 2
WINDOW_EXISTENCE_TABLE:

.ORG $7E8958
CURRENT_FOCUS_WINDOW:
	.RES 2
UNKNOWN_7E895A:

.ORG $7E8960
UNKNOWN_7E8960:

.ORG $7E89C9
UNKNOWN_7E89C9:
	.RES 1
PSI_WINDOW_CHARACTER:
	.RES 2
UNKNOWN_7E89CC:
	.RES 2
UNKNOWN_7E89CE:
	.RES 2
UNKNOWN_7E89D0:
	.RES 2
UNKNOWN_7E89D2:
	.RES 2
UNKNOWN_7E89D4:

.ORG $7E9622
UNKNOWN_7E9622:
	.RES 1
UNKNOWN_7E9623:
	.RES 2
SELECTED_TEXT_SPEED:
	.RES 2
UNKNOWN_7E9627:
	.RES 2
UNKNOWN_7E9629:

.ORG $7E9641
UNKNOWN_7E9641:
	.RES 2
BATTLE_MODE_FLAG:
	.RES 2
INPUT_LOCK_FLAG:

.ORG $7E964B
UNKNOWN_7E964B:
	.RES 2
BLINKING_TRIANGLE_FLAG:
	.RES 2
UNKNOWN_7E964F:

.ORG $7E9652
UNKNOWN_7E9652:
	.RES 2
UNKNOWN_7E9654:

.ORG $7E9658
UNKNOWN_7E9658:
	.RES 2
UNKNOWN_7E965A:

.ORG $7E9662
UNKNOWN_7E9662:

.ORG $7E96AA
UNKNOWN_7E96AA:

.ORG $7E97B8
UNKNOWN_7E97B8:
	.RES 2
CC_ARGUMENT_STORAGE:

.ORG $7E97CA
CC_ARGUMENT_GATHERING_LOOP_COUNTER:

.ORG $7E97DA
UNKNOWN_7E97DA:

.ORG $7E97F5
GAME_STATE:

.ORG $7E99CE
CHAR_STRUCT:
	.RES .SIZEOF(char_struct) * (PLAYER_CHAR_COUNT + NONPLAYER_CHAR_COUNT)
EVENT_FLAG:
	.RES (EVENT_FLAG_COUNT/8)
CURRENT_INTERACTING_EVENT_FLAG:

.ORG $7E9C9F
UNKNOWN_7E9C9F:
	.RES 1
UNKNOWN_7E9CA0:
	.RES 1
UNKNOWN_7E9CA1:
	.RES 1
UNKNOWN_7E9CA2:

.ORG $7E9CA5
UNKNOWN_7E9CA5:

.ORG $7E9CAA
UNKNOWN_7E9CAA:

.ORG $7E9CB0
UNKNOWN_7E9CB0:

.ORG $7E9D1F
RESPAWN_X:
	.RES 2
RESPAWN_Y:

.ORG $7E9E23
UNKNOWN_7E9E23:
	.RES 2
UNKNOWN_7E9E25:

.ORG $7E9E2B
DMA_TRANSFER_FLAG:

.ORG $7E9E54
DAD_PHONE_TIMER:
	.RES 2
UNKNOWN_7E9E56:

.ORG $7E9F3F
TELEPORT_DESTINATION:
	.RES 2
TELEPORT_STYLE:
	.RES 2
UNKNOWN_7E9F43:
	.RES 2
UNKNOWN_7E9F45:
	.RES 2
UNKNOWN_7E9F47:

.ORG $7E9F6B
UNKNOWN_7E9F6B:

.ORG $7E9F71
PAJAMA_FLAG:

.ORG $7E9F75
UNKNOWN_7E9F75:

.ORG $7E9F7A
UNKNOWN_7E9F7A:
	.RES 2
UNKNOWN_7E9F7C:
	.RES 2
UNKNOWN_7E9F7E:
	.RES 2
UNKNOWN_7E9F80:
	.RES 2
UNKNOWN_7E9F82:
	.RES 2
UNKNOWN_7E9F84:
	.RES 2
UNKNOWN_7E9F86:
	.RES 2
UNKNOWN_7E9F88:
	.RES 2
ENEMIES_IN_BATTLE:
	.RES 2
UNKNOWN_7E9F8C:

.ORG $7E9FAC
BATTLERS_TABLE:

.ORG $7EA96C
BATTLER_TARGET_FLAGS:

.ORG $7EA970
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
UNKNOWN_7EA97C:

.ORG $7EA983
ATTACKER_NAME_ADJUST_SCRATCH:

.ORG $7EA99E
TARGET_NAME_ADJUST_SCRATCH:

.ORG $7EAA0C
UNKNOWN_7EAA0C:
	.RES 2
UNKNOWN_7EAA0E:
	.RES 2
ITEM_DROPPED:
	.RES 2
MIRROR_ENEMY:

.ORG $7EAA62
MIRROR_TURN_TIMER:

.ORG $7EAA70
UNKNOWN_7EAA70:
	.RES 2
UNKNOWN_7EAA72:
	.RES 2
UNKNOWN_7EAA74:

.ORG $7EAD86
UNKNOWN_7EAD86:

.ORG $7EAD8A
UNKNOWN_7EAD8A:
	.RES 2
VERTICAL_SHAKE_DURATION:
	.RES 2
VERTICAL_SHAKE_HOLD_DURATION:
	.RES 2
UNKNOWN_7EAD90:
	.RES 2
WOBBLE_DURATION:
	.RES 2
SHAKE_DURATION:
	.RES 2
UNKNOWN_7EAD96:
	.RES 2
UNKNOWN_7EAD98:

.ORG $7EAD9E
GREEN_FLASH_DURATION:
	.RES 2
RED_FLASH_DURATION:

.ORG $7EADA4
HP_PP_BOX_BLINK_DURATION:
	.RES 2
HP_PP_BOX_BLINK_TARGET:
	.RES 2
UNKNOWN_7EADA8:
	.RES 2
UNKNOWN_7EADAA:

.ORG $7EADB2
UNKNOWN_7EADB2:
	.RES 2
UNKNOWN_7EADB4:
	.RES 2
UNKNOWN_7EADB6:

.ORG $7EADCC
UNKNOWN_7EADCC:

.ORG $7EADCE
UNKNOWN_7EADCE:
	.RES 2
UNKNOWN_7EADD0:
	.RES 2
UNKNOWN_7EADD2:

.ORG $7EADD5
UNKNOWN_7EADD5:

.ORG $7EAECC
UNKNOWN_7EAECC:

.ORG $7EB37C
UNKNOWN_7EB37C:

.ORG $7EB49D
UNKNOWN_7EB49D:
	.RES 1
UNKNOWN_7EB49E:

.ORG $7EB4A1
CURRENT_SAVE_SLOT:
	.RES 1
UNKNOWN_7EB4A2:

.ORG $7EB4A8
UNKNOWN_7EB4A8:

.ORG $7EB4B6
UNKNOWN_7EB4B6:

.ORG $7EB4CE
UNKNOWN_7EB4CE:

.ORG $7EB4E3
UNKNOWN_7EB4E3:

.ORG $7EB4EF
UNKNOWN_7EB4EF:

.ORG $7EB4F1
CUR_PHOTO_DISPLAY:

.ORG $7EB539
PIRACY_FLAG:


; Audio stuff
.ORG $7EB53B
CURRENT_MUSIC_TRACK:
	.RES 2
CURRENT_PRIMARY_SAMPLE_PACK:
	.RES 2
CURRENT_SECONDARY_SAMPLE_PACK:
	.RES 2
CURRENT_SEQUENCE_PACK:
	.RES 2

UNKNOWN_7EB543:

.ORG $7EB547
UNKNOWN_7EB547:
	.RES 2
SECTOR_BOUNDARY_BEHAVIOUR_FLAG:

.ORG $7EB555
DEBUG_MENU_CURSOR_POSITION:

.ORG $7EB559
DEBUG_MODE_NUMBER:

.ORG $7EB561
DEBUG_START_POSITION_X:
	.RES 2
DEBUG_START_POSITION_Y:
	.RES 2
DEBUG_UNKNOWN_B565:

; Memory bank 2

.ORG $7F0000
UNKNOWN_7F0000:
	.RES $8000
UNKNOWN_7F8000:
	.RES $7800
TILE_COLLISION:
	.RES $800