
CMD_WINDOW_TEXT: ;$EFA37A
.IF .DEFINED(JPN)
	PADDEDASCII "\x69\x68\x84", 5 ;"はなす"
	PADDEDASCII "\xD3\xCE\xD5", 5 ;"グッズ"
	PADDEDASCII "\x50\x53\x49", 5 ;"PSI"
	PADDEDASCII "\xA4\x80\x7A", 5 ;"そうび"
	PADDEDASCII "\xC6\xE1\xCE\xD2", 5 ;"チェック"
	PADDEDASCII "\x86\xAD\x64", 5 ;"つよさ"
.ELSE
	PADDEDEBTEXT "Talk to", 10
	PADDEDEBTEXT "Goods", 10
	PADDEDEBTEXT "PSI", 10
	PADDEDEBTEXT "Equip", 10
	PADDEDEBTEXT "Check", 10
	PADDEDEBTEXT "Status", 10
.ENDIF
