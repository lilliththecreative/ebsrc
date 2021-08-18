
USE_SOUND_STONE: ;$C4ACCE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 54
	STA $34
	JSL UNKNOWN_C08726
	JSL STOP_MUSIC
	JSL LOAD_ENEMY_BATTLE_SPRITES
	LOADPTR UNKNOWN_7F0000, $06
	LOADPTR SOUND_STONE_GFX, $0E
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM1P $06, $2000, $2C00, $00
	.A16
	LOADPTR SOUND_STONE_PALETTE, $0E
	LDX #$00C0
	LDA #$0300
	JSL MEMCPY16
	JSL UNKNOWN_C47F87
	LDY #$0004
	LDX #BATTLEBG_LAYER::SOUNDSTONE2
	LDA #BATTLEBG_LAYER::SOUNDSTONE1
	JSL LOAD_BATTLE_BG
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$0005
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EB3EE)
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$0005
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EB3F3)
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00F0
	STA .LOWORD(UNKNOWN_7EB3F1)
	STA .LOWORD(UNKNOWN_7EB3EE)
	LDA #$00F8
	STA .LOWORD(UNKNOWN_7EB3F6)
	STA .LOWORD(UNKNOWN_7EB3F3)
	LDA #$0081
	STA .LOWORD(UNKNOWN_7EB3F2)
	LDA #$0080
	STA .LOWORD(UNKNOWN_7EB3F7)
	REP #PROC_FLAGS::ACCUM8
	STZ $32
	LDY #$0000
	STY $30
	BRA @UNKNOWN3
@UNKNOWN0:
	TYX
	LDA f:SOUND_STONE_MELODY_FLAGS,X
	AND #$00FF
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN1
	LDY $30
	TYA
	OPTIMIZED_MULT $04, 14
	TAX
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB37E),X
	INC $32
	BRA @UNKNOWN2
@UNKNOWN1:
	LDY $30
	TYA
	OPTIMIZED_MULT $04, 14
	TAX
	STZ .LOWORD(UNKNOWN_7EB37E),X
@UNKNOWN2:
	TYA
	OPTIMIZED_MULT $04, 14
	TAX
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB380),X
	STZ .LOWORD(UNKNOWN_7EB384),X
	INY
	STY $30
@UNKNOWN3:
	CPY #$0008
	BCC @UNKNOWN0
	JSL UNKNOWN_C08744
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	LDA #$000F
	STA $2E
	STZ $30
	LDA #$003C
	STA $2C
	STZ $2A
	STZ $28
	LDA #$0000
	STA $04
	STA $26
	STA $02
	STA $24
@UNKNOWN4:
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA a:.LOWORD(PAD_1_PRESS)
	STA $22
	LDA $26
	STA $04
	BNE @UNKNOWN5
	DEC $2C
	LDA $2C
	BNE @UNKNOWN5
	LDA #$FFFF
	STA $02
	STA $24
	LDA $02
	STA $28
	LDA #$0001
	STA $04
	STA $26
@UNKNOWN5:
	LDA $2A
	BEQ @UNKNOWN7
	DEC $2A
	LDA $2A
	BNE @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN31)
@UNKNOWN6:
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN7:
	LDA $04
	BNE @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN19)
@UNKNOWN8:
	LDA $04
	DEC
	STA $04
	STA $26
	LDA $04
	BEQ @UNKNOWN9
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN9:
	LDA $24
	STA $02
	CMP #$0008
	BCS @UNKNOWN10
	LDA $02
	OPTIMIZED_MULT $04, 14
	CLC
	ADC #.LOWORD(UNKNOWN_7EB37E)
	TAX
	LDA a:.LOWORD(RAM),X
	CMP #$0002
	BNE @UNKNOWN10
	LDA #$0001
	STA a:.LOWORD(RAM),X
@UNKNOWN10:
	LDA $02
	CMP #$0008
	BNE @UNKNOWN14
	LDA $28
	INC
	STA $20
	BRA @UNKNOWN12
@UNKNOWN11:
	OPTIMIZED_MULT $04, 14
	TAX
	LDA .LOWORD(UNKNOWN_7EB37E),X
	BNE @UNKNOWN13
	LDA $20
	INC
	STA $20
@UNKNOWN12:
	CMP #$0008
	BCC @UNKNOWN11
@UNKNOWN13:
	LDA $20
	CMP #$0008
	BNE @UNKNOWN14
	LDA #$0096
	STA $2A
@UNKNOWN14:
	INC $28
	LDA $28
	CMP #$0008
	BCS @UNKNOWN17
	LDA $28
	STA $02
	STA $24
	LDA $02
	OPTIMIZED_MULT $04, 14
	CLC
	ADC #.LOWORD(UNKNOWN_7EB37E)
	TAX
	LDA a:.LOWORD(RAM),X
	BEQ @UNKNOWN15
	LDA #$0002
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN16
@UNKNOWN15:
	LDA #$0008
	STA $02
	STA $24
@UNKNOWN16:
	LDA $02
	ASL
	TAX
	LDA f:SOUND_STONE_UNKNOWN7,X
	STA $04
	STA $26
	LDX $02
	LDA f:SOUND_STONE_MUSIC,X
	AND #$00FF
	JSL CHANGE_MUSIC
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA #$0096
	STA $2A
@UNKNOWN18:
	LDA $24
	STA $02
	CMP #$0008
	BCS @UNKNOWN19
	LDA $02
	ASL
	TAX
	LDA f:SOUND_STONE_UNKNOWN7,X
	SEC
	SBC #$0009
	STA $02
	LDA $26
	STA $04
	CMP $02
	BNE @UNKNOWN19
	LDA $32
	CLC
	ADC #$0008
	JSL UNKNOWN_C0AC0C
@UNKNOWN19:
	JSL OAM_CLEAR
	LDA #$007E
	JSL UNKNOWN_C088A5
	STZ $1E
	JMP a:.LOWORD(@UNKNOWN27)
@UNKNOWN20:
	LDA $1E
	OPTIMIZED_MULT $04, 14
	STA $1C
	TAX
	LDA .LOWORD(UNKNOWN_7EB37E),X
	CMP #$0001
	BEQ @UNKNOWN21
	CMP #$0002
	BEQ @UNKNOWN22
	JMP a:.LOWORD(@UNKNOWN26)
@UNKNOWN21:
	LDX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN3,X
	STA .LOWORD(UNKNOWN_7EB3EF)
	LDA #$0030
	STA .LOWORD(UNKNOWN_7EB3F0)
	LDX $1E
	REP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN2,X
	AND #$00FF
	TAY
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN,X
	AND #$00FF
	TAX
	LDA #.LOWORD(UNKNOWN_7EB3EE)
	JSL UNKNOWN_C08CD5
	JMP a:.LOWORD(@UNKNOWN26)
@UNKNOWN22:
	LDA $1C
	CLC
	ADC #.LOWORD(UNKNOWN_7EB388)
	TAX
	LDA a:.LOWORD(RAM),X
	CLC
	ADC #$0CCD
	STA a:.LOWORD(RAM),X
	LDA $1C
	CLC
	ADC #.LOWORD(UNKNOWN_7EB380)
	TAX
	LDA a:.LOWORD(RAM),X
	TAY
	DEY
	TYA
	STA a:.LOWORD(RAM),X
	BNE @UNKNOWN23
	LDA #$0002
	STA a:.LOWORD(RAM),X
	LDA $1C
	CLC
	ADC #.LOWORD(UNKNOWN_7EB384)
	TAX
	STX $20
	LDA $1C
	PHA
	LOADPTR UNKNOWN_C4AC57, $06
	LDA $1E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	LDA a:.LOWORD(RAM),X
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	PLX
	STA .LOWORD(UNKNOWN_7EB386),X
	LDX $20
	LDA a:.LOWORD(RAM),X
	INC
	STA a:.LOWORD(RAM),X
	LDA $1C
	CLC
	ADC #.LOWORD(UNKNOWN_7EB382)
	TAX
	LDA a:.LOWORD(RAM),X
	STA $02
	LDA #$0002
	SEC
	SBC $02
	STA a:.LOWORD(RAM),X
@UNKNOWN23:
	LDA $1E
	OPTIMIZED_MULT $04, 14
	STA $20
	PHA
	LDX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN5,X
	PLX
	CLC
	ADC .LOWORD(UNKNOWN_7EB382),X
	STA .LOWORD(UNKNOWN_7EB3F4)
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN6,X
	ASL
	CLC
	ADC #$0031
	STA .LOWORD(UNKNOWN_7EB3F5)
	REP #PROC_FLAGS::ACCUM8
	LDA $20
	CLC
	ADC #.LOWORD(UNKNOWN_7EB386)
	STA $1A
	LDA ($1A)
	TAY
	BNE @UNKNOWN24
	JMP a:.LOWORD(@UNKNOWN25)
@UNKNOWN24:
	LOADPTR SOUND_STONE_UNKNOWN, $0A
	LDA $1E
	CLC
	ADC $0A
	STA $0A
	LDA $20
	CLC
	ADC #.LOWORD(UNKNOWN_7EB388)
	STA $18
	LOADPTR SOUND_STONE_UNKNOWN2, $06
	LDA $1E
	CLC
	ADC $06
	STA $06
	LDA ($18)
	XBA
	AND #$00FF
	TAX
	TYA
	JSL COSINE_SINE
	STA $16
	LDA ($18)
	XBA
	AND #$00FF
	TAX
	LDA ($1A)
	JSL COSINE
	STA $02
	LDA [$06]
	AND #$00FF
	CLC
	ADC $02
	TAY
	LDA [$0A]
	AND #$00FF
	CLC
	ADC $16
	TAX
	LDA #.LOWORD(UNKNOWN_7EB3F3)
	JSL UNKNOWN_C08CD5
	LDA ($18)
	XBA
	AND #$00FF
	CLC
	ADC #$0080
	AND #$00FF
	TAX
	LDA ($1A)
	JSL COSINE_SINE
	STA $16
	LDA ($18)
	XBA
	AND #$00FF
	CLC
	ADC #$0080
	AND #$00FF
	TAX
	LDA ($1A)
	JSL COSINE
	STA $02
	LDA [$06]
	AND #$00FF
	CLC
	ADC $02
	TAY
	LDA [$0A]
	AND #$00FF
	CLC
	ADC $16
	TAX
	LDA #.LOWORD(UNKNOWN_7EB3F3)
	JSL UNKNOWN_C08CD5
@UNKNOWN25:
	LDX $1E
	SEP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN3,X
	CLC
	ADC #$0080
	STA .LOWORD(UNKNOWN_7EB3EF)
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN4,X
	ASL
	CLC
	ADC #$0030
	STA .LOWORD(UNKNOWN_7EB3F0)
	LDX $1E
	REP #PROC_FLAGS::ACCUM8
	LDA f:SOUND_STONE_UNKNOWN2,X
	AND #$00FF
	TAY
	LDX $1E
	LDA f:SOUND_STONE_UNKNOWN,X
	AND #$00FF
	TAX
	LDA #.LOWORD(UNKNOWN_7EB3EE)
	JSL UNKNOWN_C08CD5
@UNKNOWN26:
	INC $1E
@UNKNOWN27:
	LDA $1E
	CMP #$0008
	BCS @UNKNOWN28
	BEQ @UNKNOWN28
	JMP a:.LOWORD(@UNKNOWN20)
@UNKNOWN28:
	DEC $2E
	LDA $2E
	BNE @UNKNOWN29
	LDA #$000F
	STA $2E
	LDA $30
	INC
	AND #$0003
	STA $30
@UNKNOWN29:
	LDA $30
	SEP #PROC_FLAGS::ACCUM8
	ASL
	CLC
	ADC #$0040
	STA .LOWORD(UNKNOWN_7EB3F4)
	LDA #$003B
	STA .LOWORD(UNKNOWN_7EB3F5)
	LDY #$0070
	LDX #$0080
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EB3F3)
	JSL UNKNOWN_C08CD5
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	LDX #$0000
	LDA #.LOWORD(LOADED_BG_DATA_LAYER1)
	JSL GENERATE_BATTLEBG_FRAME
	LDX #$0001
	LDA #.LOWORD(LOADED_BG_DATA_LAYER2)
	JSL GENERATE_BATTLEBG_FRAME
	LDA $34
	BNE @UNKNOWN30
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN30:
	LDA $22
	AND #$80C0
	BNE @UNKNOWN31
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN31:
	LDX #$0001
	TXA
	JSL UNKNOWN_C0887A
	BRA @UNKNOWN33
@UNKNOWN32:
	JSL WAIT_UNTIL_NEXT_FRAME
@UNKNOWN33:
	LDA a:.LOWORD(UNKNOWN_7E0028)
	AND #$00FF
	BNE @UNKNOWN32
	JSL UNKNOWN_C08726
	LDA #$0001
	JSL UNKNOWN_C0AFCD
	JSL RELOAD_MAP
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	PLD
	RTL
