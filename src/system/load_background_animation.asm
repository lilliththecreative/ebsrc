
LOAD_BACKGROUND_ANIMATION: ;$C47370
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	STX $02
	STA $04
	JSL UNKNOWN_C08726
	LDA #$0009
	JSL UNKNOWN_C08D79
	LDY #$0000
	LDX #$5800
	TYA
	JSL SET_BG1_VRAM_LOCATION
	LDY #$1000
	LDX #$5C00
	LDA #$0000
	JSL SET_BG2_VRAM_LOCATION
	LDY #$0004
	LDX $02
	LDA $04
	JSL LOAD_BATTLE_BG
	JSL UNKNOWN_C08744
	PLD
	RTL