
ITEM_USE_MENU_STRINGS: ;$C43550
.IF .DEFINED(JPN)
	PADDEDASCII "\x86\x62\x80", 5
	PADDEDASCII "\x7D\x66\x84", 5
	PADDEDASCII "\x84\x96\x8F", 5
	PADDEDASCII "\x94\x86\x9C\x70", 5
.ELSE
	PADDEDEBTEXT "Use", 6
	PADDEDEBTEXT "Give", 6
	PADDEDEBTEXT "Drop", 6
	PADDEDEBTEXT "Help!", 6
.ENDIF
