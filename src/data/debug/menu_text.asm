
.FEATURE STRING_ESCAPES

; Some of this was left untranslated and remains in the same form as in Mother 2.
DEBUG_MENU_TEXT: ;$C3E874
	PADDEDEBTEXT "Flag", 10
	PADDEDEBTEXT "Goods", 10
	PADDEDEBTEXT "Save", 10
	PADDEDEBTEXT "Apple", 10
	PADDEDEBTEXT "Banana", 10
	PADDEDEBTEXT "TV", 10
	PADDEDEBTEXT "Event", 10
	PADDEDEBTEXT "Warp", 10
	PADDEDEBTEXT "Tea", 10
	.IF CLEAN_ROM
		PADDEDASCII "\xE6\xEF\xFB", 10 ;テレポ
		PADDEDASCII "\xD4\xB6\x25\x2A", 10 ;スターα
		PADDEDASCII "\xD4\xB6\x25\x2B", 10 ;スターβ
		PADDEDASCII "\xDB\xEF\x25\xBD\x25\x30", 10 ;プレーヤー0
		PADDEDASCII "\xDB\xEF\x25\xBD\x25\x31", 10 ;プレーヤー1
	.ELSE
		PADDEDEBTEXT "Teleport", 10
		PADDEDEBTEXT "Star ~", 10
		PADDEDEBTEXT "Star ^", 10
		PADDEDEBTEXT "Player 0", 10
		PADDEDEBTEXT "Player 1", 10
	.ENDIF
	PADDEDEBTEXT "GUIDE", 10
	PADDEDEBTEXT "TRACK", 10
	PADDEDEBTEXT "CAST", 10
	PADDEDEBTEXT "STONE", 10
	PADDEDEBTEXT "STAFF", 10
	.IF CLEAN_ROM
		PADDEDASCII "\xEC\x25\xB6\x25", 10 ;メーター
	.ELSE
		PADDEDEBTEXT "Meter", 10
	.ENDIF
	PADDEDEBTEXT "REPLAY", 10
	PADDEDEBTEXT "TEST1", 10
	PADDEDEBTEXT "TEST2", 10
	PADDEDEBTEXT "", 10
