
<<<<<<< HEAD
UNKNOWN_C0BA35:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @LOCAL13
	STX @LOCAL12
	STA @VIRTUAL04
	STA @LOCAL11
	LDA @PARAM06
	STA @LOCAL10
	LDA @PARAM05
	STA @LOCAL0F
	LDX @PARAM04
	STX @LOCAL0E
	LDY @PARAM03
	STY @LOCAL0D
	LOADPTR BUFFER + $3000, @VIRTUAL06
	LDA @LOCAL12
	LDX @VIRTUAL04
=======
UNKNOWN_C0BA35: ;$C0BA35
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 58
	STY $38
	STX $36
	STA $04
	STA $34
	LDA $4E
	STA $32
	LDA $4C
	STA $30
	LDX $4A
	STX $2E
	LDY $48
	STY $2C
	LOADPTR UNKNOWN_7F3000, $06
	LDA $36
	LDX $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:pathfinding::target_count,X
	LDX #$0000
	STX $2A
	BRA @UNKNOWN5
@UNKNOWN0:
	LDA #$0000
	STA $28
	BRA @UNKNOWN4
@UNKNOWN1:
	CLC
	ADC $38
	AND #$003F
	PHA
	LDX $2A
	STX $02
	TYA
	CLC
	ADC $02
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	PLX
	STX $02
	CLC
	ADC $02
	TAX
	LDA LOADED_COLLISION_TILES,X
	AND #$00FF
	AND #$00C0
	BEQ @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FD
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
	BRA @UNKNOWN3
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	INC $06
@UNKNOWN3:
	LDA $28
	INC
	STA $28
@UNKNOWN4:
	LDX $04
	CMP a:pathfinding::radius,X
	BNE @UNKNOWN1
	LDX $2A
	INX
	STX $2A
@UNKNOWN5:
	TXA
	LDX $04
	CMP a:pathfinding::radius + 2,X
	BNE @UNKNOWN0
	LDA #$0000
	STA $02
	STA $26
	STA $28
	JMP @UNKNOWN10
@UNKNOWN6:
	ASL
	STA $24
	LDY #.LOWORD(ENTITY_SCRIPT_TABLE)
	LDA ($24),Y
	CMP #$FFFF
	BEQL @UNKNOWN9
<<<<<<< HEAD
	LDY #.LOWORD(ENTITY_PATHFINDING_STATES)
	LDA (@LOCAL09),Y
	CMP #.LOWORD(-1)
=======
	LDY #.LOWORD(UNKNOWN_30X2_TABLE_41)
	LDA ($24),Y
	CMP #$FFFF
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNEL @UNKNOWN9
	LDY #.LOWORD(ENTITY_SIZES)
	LDA ($24),Y
	STA $22
	LDA $02
	OPTIMIZED_MULT $04, 18
	STA $02
	LDA $34
	STA $04
	CLC
	ADC $02
	TAX
	STX $2A
	LDA $28
	STA a:pathfinding::pathfinders + pathfinder::object_index,X
	LDA $2E
	STA a:pathfinding::pathfinders + pathfinder::from_offscreen,X
	LDA $22
	ASL
	STA $22
	LDX $22
	LDA f:UNKNOWN_C42AA7,X
	LDX $2A
	STA a:pathfinding::pathfinders + pathfinder::unknown_hitbox + 2,X
	LDX $22
	LDA f:UNKNOWN_C42AC9,X
	LDX $2A
	STA a:pathfinding::pathfinders + pathfinder::unknown_hitbox,X
	LDX $22
	LDY #.LOWORD(ENTITY_ABS_X_TABLE)
	LDA ($24),Y
	SEC
	SBC f:UNKNOWN_C42A1F,X
	LSR
	LSR
	LSR
	SEC
	SBC $38
	AND #$003F
	LDX $2A
	STA a:pathfinding::pathfinders + pathfinder::origin + 2,X
	LDY $2C
	STY $02
	LDX $22
	LDY #.LOWORD(ENTITY_ABS_Y_TABLE)
	LDA ($24),Y
	SEC
	SBC f:UNKNOWN_C42A41,X
	LDX $22
	CLC
	ADC f:UNKNOWN_C42AEB,X
	LSR
	LSR
	LSR
	SEC
	SBC $02
	AND #$003F
	LDX $2A
	STA a:pathfinding::pathfinders + pathfinder::origin,X
	LDA $26
	STA $02
	INC $02
	LDA $02
	STA $26
@UNKNOWN9:
	LDA $28
	INC
	STA $28
@UNKNOWN10:
	CMP #MAX_ENTITIES
	BNEL @UNKNOWN6
	LDA $02
	LDX $04
	STA a:pathfinding::pathfinder_count,X
<<<<<<< HEAD
	LOADPTR BUFFER + $3000, @LOCAL00
	LDA #4
	STA @LOCAL01
	LDA @LOCAL12
	STA @LOCAL02
	LDA @VIRTUAL04
=======
	LOADPTR UNKNOWN_7F3000, $0E
	LDA #$0004
	STA $12
	LDA $36
	STA $14
	LDA $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #pathfinding::targets
	STA $16
	LDA $02
	STA $18
	LDA $04
	CLC
	ADC #pathfinding::pathfinders
	STA $1A
	LDA #$FFFF
	STA $1C
	MOVE_INT $30, $1E
	LDA $04
	CLC
	ADC #pathfinding::radius
	TAY
<<<<<<< HEAD
	LDX #.LOWORD(PATHFINDING_BUFFER)
=======
	LDX #$F400
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #$0C00
	JSL UNKNOWN_C4B59F
	TAX
	STX $28
@UNKNOWN12:
	JSL UNKNOWN_C4B595
	CMP #$0C00
	BGT @UNKNOWN12
	LDX $28
	BNE @UNKNOWN17
	LDA #$0000
	STA $28
	BRA @UNKNOWN16
@UNKNOWN14:
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #$FFFF
	BEQ @UNKNOWN15
<<<<<<< HEAD
	LDA #1
	STA ENTITY_PATHFINDING_STATES,X
=======
	LDA #$0001
	STA UNKNOWN_30X2_TABLE_41,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN15:
	LDA $28
	INC
	STA $28
@UNKNOWN16:
	CMP #MAX_ENTITIES
	BNE @UNKNOWN14
	LDA #$FFFF
	BRA @UNKNOWN22
@UNKNOWN17:
	LDA #$0000
	STA $28
	BRA @UNKNOWN21
@UNKNOWN18:
	OPTIMIZED_MULT $04, 18
	STA $02
	LDA $34
	STA $04
	CLC
	ADC $02
	TAX
	LDA a:pathfinding::pathfinders + pathfinder::object_index,X
	STA $22
	TXA
	CLC
	ADC #pathfinding::pathfinders + pathfinder::unknown10;
	TAY
	STY $30
	LDA __BSS_START__,Y
	BEQ @UNKNOWN19
	LDA $22
	ASL
	STA $22
	LDA a:pathfinding::pathfinders + pathfinder::unknown12,X
<<<<<<< HEAD
	LDY #.LOWORD(ENTITY_PATH_POINTS)
	STA (@LOCAL08),Y
	LDY @LOCAL0F
	LDA __BSS_START__,Y
	LDY #.LOWORD(ENTITY_PATH_POINT_COUNTS)
	STA (@LOCAL08),Y
=======
	LDY #.LOWORD(UNKNOWN_30X2_TABLE_46)
	STA ($22),Y
	LDY $30
	LDA __BSS_START__,Y
	LDY #.LOWORD(UNKNOWN_7E2E3E)
	STA ($22),Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN20
@UNKNOWN19:
	LDA $22
	ASL
	TAX
<<<<<<< HEAD
	LDA #1
	STA ENTITY_PATHFINDING_STATES,X
=======
	LDA #$0001
	STA UNKNOWN_30X2_TABLE_41,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN20:
	LDA $28
	INC
	STA $28
@UNKNOWN21:
	LDX $26
	STX $02
	CMP $02
	BCC @UNKNOWN18
	LDA #$0000
@UNKNOWN22:
	PLD
	RTS
