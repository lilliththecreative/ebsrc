.ENUM STATUS_0
	UNCONSCIOUS = 1
	DIAMONDIZED = 2
	PARALYZED = 3
	NAUSEOUS = 4
	POISONED = 5
	SUNSTROKE = 6
	COLD = 7
.ENDENUM

.ENUM STATUS_1
	MUSHROOMIZED = 1
	POSSESSED = 2
.ENDENUM

.ENUM STATUS_2
	ASLEEP = 1
	CRYING = 2
	IMMOBILIZED = 3
	SOLIDIFIED = 4
.ENDENUM

.ENUM STATUS_3
	STRANGE = 1
.ENDENUM

.ENUM STATUS_4
	CANT_CONCENTRATE = 1
	CANT_CONCENTRATE4 = 4
.ENDENUM

.ENUM STATUS_5
	HOMESICK = 1
.ENDENUM

.ENUM STATUS_6
	PSI_SHIELD_POWER = 1
	PSI_SHIELD = 2
	SHIELD_POWER = 3
	SHIELD = 4
.ENDENUM

.ENUM STATUS_GROUP
	PERSISTENT_EASYHEAL
	PERSISTENT_HARDHEAL
	TEMPORARY
	STRANGENESS
	CONCENTRATION
	HOMESICKNESS
	SHIELD
.ENDENUM

.DEFINE AFFLICTION_GROUP_COUNT 7

.ENUM GIYGAS_PHASES
	BATTLE_STARTED = 1
	DEVILS_MACHINE_OFF = 2
	GIYGAS_STARTS_ATTACKING = 3
	START_PRAYING = 4
	PRAYER_1_USED = 5
	PRAYER_2_USED = 6
	PRAYER_3_USED = 7
	PRAYER_4_USED = 8
	PRAYER_5_USED = 9
	PRAYER_6_USED = 10
	PRAYER_7_USED = 11
	PRAYER_8_USED = 12
	DEFEATED = $FFFF
.ENDENUM

.ENUM INITIATIVE
	NORMAL = 0
	PARTY_FIRST = 1
	ENEMIES_FIRST = 2
.ENDENUM

.ENUM NPC_TARGETTABILITY
	UNTARGETTABLE = 1
	FORCED = 6
	NORMAL = 7
.ENDENUM

.ENUM NPC_FLAGS
	UNTARGETTABLE = 2
.ENDENUM

.ENUM PSI_LEVEL
	ALPHA = 1
	BETA = 2
	GAMMA = 3
	SIGMA = 4
	OMEGA = 5
.ENDENUM

.ENUM PSI_ID
	ROCKIN = 1
	FIRE = 2
	FREEZE = 3
	THUNDER = 4
	FLASH = 5
	STARSTORM = 6
	LIFEUP = 7
	HEALING = 8
	SHIELD = 9
	PSI_SHIELD = 10
	OFFENSE_UP = 11
	DEFENSE_DOWN = 12
	HYPNOSIS = 13
	MAGNET = 14
	PARALYSIS = 15
	BRAINSHOCK = 16
	TELEPORT = 17
.ENDENUM

.ENUM PSI_CATEGORY
	OFFENSE = 1
	RECOVER = 2
	ASSIST = 4
	OTHER = 8
.ENDENUM

.ENUM PSI_TARGET
	NOBODY = 1
	ENEMIES = 2
	ALLIES = 3
.ENDENUM

.ENUM PSI_TARGET_ANIM
	SINGLE = 0
	ROW = 1
	ALL_ENEMIES = 2
	RANDOM = 3
.ENDENUM

.ENUM ACTION_DIRECTION
	PARTY = 0
	ENEMY = 1
.ENDENUM

.ENUM ACTION_TARGET
	NONE = 0
	ONE = 1
	RANDOM = 2
	ROW = 3
	ALL = 4
.ENDENUM

.ENUM ACTION_TYPE
	NOTHING = 0
	PHYSICAL = 1
	PIERCING_PHYSICAL = 2
	PSI = 3
	ITEM = 4
	OTHER = 5
.ENDENUM

.ENUM INITIAL_STATUS
	NONE = 0
	PSI_SHIELD = 1
	PSI_SHIELD_POWER = 2
	SHIELD = 3
	SHIELD_POWER = 4
	ASLEEP = 5
	CANT_CONCENTRATE = 6
	STRANGE = 7
.ENDENUM