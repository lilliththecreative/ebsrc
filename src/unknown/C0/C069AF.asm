
UNKNOWN_C069AF:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	END_STACK_VARS
	LDA DISABLE_MUSIC_CHANGES
	BNE @UNKNOWN0
	LOADPTRPTR LOADED_MAP_MUSIC_ENTRY, @VIRTUAL06
	LDA NEXT_MAP_MUSIC_TRACK
	CMP CURRENT_MAP_MUSIC_TRACK
	BEQ @UNKNOWN0
	LDA NEXT_MAP_MUSIC_TRACK
	STA CURRENT_MAP_MUSIC_TRACK
	LDA NEXT_MAP_MUSIC_TRACK
	JSL CHANGE_MUSIC
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0003
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSL UNKNOWN_C0AC0C
@UNKNOWN0:
	PLD
	RTL
