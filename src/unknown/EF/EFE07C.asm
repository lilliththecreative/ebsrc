
UNKNOWN_EFE07C: ;$EFE07C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 28
	STX $02
	STX $1A
	STA $18
	LDA DEBUG_MODE_NUMBER
	CMP #$0003
	BNEL @UNKNOWN5
	LDA #$0040
	JSL SBRK
	STA $16
	LDA $18
	CMP #$8000
	BCS @UNKNOWN4
	LDA $02
	AND #$001F
	STA $14
	LDA #$0000
	STA $04
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA $02
	CMP #$8000
	BCS @UNKNOWN2
	LDA $18
	AND #$003F
	PHA
	LDA $02
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA LOADED_COLLISION_TILES,X
	AND #$00FF
	LDX $1A
	STX $02
	LDY $02
	LDX $18
	JSR UNKNOWN_EFDF0B
	STA $12
	LDA $14
	ASL
	TAY
	LDA $12
	STA ($16),Y
@UNKNOWN2:
	LDA $14
	INC
	AND #$001F
	STA $14
	INC $02
	LDA $02
	STA $1A
	INC $04
@UNKNOWN3:
	LDA $04
	CMP #$0020
	BCC @UNKNOWN1
@UNKNOWN4:
	LDA $16
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA $18
	AND #$001F
	CLC
	ADC #$7C00
	TAY
	LDX #$0040
	SEP #PROC_FLAGS::ACCUM8
	LDA #$001B
	JSL PREPARE_VRAM_COPY
@UNKNOWN5:
	PLD
	RTL
