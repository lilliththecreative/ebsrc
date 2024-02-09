
;A = battle sprite id
LOAD_BATTLE_SPRITE: ;$C2EAEA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 42
	TAX
<<<<<<< HEAD
	STX @LOCAL09
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	TAX
	LDA CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	STA BATTLE_SPRITEMAP_ALLOCATION_COUNTS,X
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	OPTIMIZED_MULT @VIRTUAL04, 80
=======
	STX $28
	LDA UNKNOWN_7EAAB4
	ASL
	TAX
	LDA UNKNOWN_7EAAB2
	STA UNKNOWN_7EAAB6,X
	LDA UNKNOWN_7EAAB4
	OPTIMIZED_MULT $04, 80
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #.LOWORD(BATTLE_SPRITEMAPS)
	STA $26
	LDX $28
	TXA
	DEC
	STA $04
	STA $28
	LDY #$0001
	STY $24
	TYA
	STA $02
	STA $22
	LDX #$0000
	STX $20
	JMP @UNKNOWN1
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	TXA
	OPTIMIZED_MULT $04, 5
	STA $1E
	TAY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00E0
	STA ($26),Y ;spritemap::y_offset
	REP #PROC_FLAGS::ACCUM8
	LOADPTR UNKNOWN_C3F8B1, $06
	LDA $1E
	TAY
	INY
	TXA
	CLC
	ADC CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	ASL
	PHA
	MOVE_INT $06, $0A
	PLA
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	STA ($26),Y ;spritemap::tile
	LDA #$0008
	PHA
	REP #PROC_FLAGS::ACCUM8
	TXA
	CLC
	ADC CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	ASL
	CLC
	ADC $06
	STA $06
	LDA [$06]
	SEP #PROC_FLAGS::INDEX8
	PLY
	JSL ASR8_UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	STA @VIRTUAL00
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
=======
	STA $00
	LDA UNKNOWN_7EAAB4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	CLC
	ADC $00
	CLC
	ADC #$0020
	PHA
	REP #PROC_FLAGS::ACCUM8
	LDA $1E
	REP #PROC_FLAGS::INDEX8
	TAY
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA ($26),Y ;spritemap::tile + 1
	REP #PROC_FLAGS::ACCUM8
	LDA $1E
	TAY
	INY
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00F0
	STA ($26),Y ;;spritemap::x_offset
	REP #PROC_FLAGS::ACCUM8
	LDA $1E
	TAY
	INY
	INY
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA ($26),Y ;spritemap::bits
	LDX $20
	INX
	STX $20
@UNKNOWN1:
	CPX #$0010
	BCCL @UNKNOWN0
	REP #PROC_FLAGS::ACCUM8
	LDA $28
	STA $04
	OPTIMIZED_MULT $04, 5
	TAX
	INX
	INX
	INX
	INX
	LDA f:BATTLE_SPRITES_POINTERS,X
	AND #$00FF
	CMP #$0002
	BEQ @UNKNOWN4
	CMP #$0003
	BEQ @UNKNOWN5
	CMP #$0004
	BEQ @UNKNOWN6
	CMP #$0005
	BEQ @UNKNOWN7
	CMP #$0006
	BEQL @UNKNOWN8
	JMP @UNKNOWN9
@UNKNOWN4:
	LDA #$0002
	STA $02
	STA $22
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00E0
	LDY #spritemap::x_offset
	STA ($26),Y
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 1) + spritemap::x_offset,X ;not sure why the +0 is necessary here
	JMP @UNKNOWN9
@UNKNOWN5:
	LDY #$0002
	STY $24
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00C0
	STA ($26) ;spritemap::y_offset
	JMP @UNKNOWN9
@UNKNOWN6:
	LDY #$0002
	STY $24
	STY $02
	LDA $02
	STA $22
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00C0
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::y_offset
	STA ($26),Y
	STA ($26) ;spritemap::y_offset
	LDA #$00E0
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 0) + spritemap::x_offset
	STA ($26),Y
	LDA #$0000
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::x_offset
	STA ($26),Y
	JMP @UNKNOWN9
@UNKNOWN7:
	.A16
	LDA #$0004
	STA $02
	STA $22
	LDY #$0002
	STY $24
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00C0
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::y_offset
	STA ($26),Y
	STA ($26) ;(.SIZEOF(spritemap) * 0) + spritemap::y_offset
	LDY #(.SIZEOF(spritemap) * 4) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 0) + spritemap::x_offset
	STA ($26),Y
	LDA #$00E0
	LDY #(.SIZEOF(spritemap) * 5) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::x_offset
	STA ($26),Y
	LDA #$0000
	LDY #(.SIZEOF(spritemap) * 6) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::x_offset
	STA ($26),Y
	LDA #$0020
	LDY #(.SIZEOF(spritemap) * 7) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::x_offset
	STA ($26),Y
	JMP @UNKNOWN9
@UNKNOWN8:
	LDY #$0004
	STY $24
	TYA
	STA $02
	STA $22
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00A0
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::y_offset
	STA ($26),Y
	STA ($26) ;(.SIZEOF(spritemap) * 0) + spritemap::y_offset
	LDA #$00C0
	LDY #(.SIZEOF(spritemap) * 7) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 6) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 5) + spritemap::y_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 4) + spritemap::y_offset
	STA ($26),Y
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 15) + spritemap::y_offset,X
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 14) + spritemap::y_offset,X
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 13) + spritemap::y_offset,X
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 12) + spritemap::y_offset,X
	LDY #(.SIZEOF(spritemap) * 12) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 8) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 4) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 0) + spritemap::x_offset
	STA ($26),Y
	LDA #$00E0
	LDY #(.SIZEOF(spritemap) * 13) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 9) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 5) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::x_offset
	STA ($26),Y
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 14) + spritemap::x_offset,X
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 10) + spritemap::x_offset,X
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 6) + spritemap::x_offset,X
	LDX $26
	STZ a:0 + (.SIZEOF(spritemap) * 2) + spritemap::x_offset,X
	LDA #$0020
	LDY #(.SIZEOF(spritemap) * 15) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 11) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 7) + spritemap::x_offset
	STA ($26),Y
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::x_offset
	STA ($26),Y
@UNKNOWN9:
	LDY $24
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	JSL MULT16
	OPTIMIZED_MULT $04, 5
	TAY
	DEY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0081
	STA ($26),Y
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	OPTIMIZED_MULT @VIRTUAL04, 80
	STA @LOCAL04
=======
	LDA UNKNOWN_7EAAB4
	OPTIMIZED_MULT $04, 80
	STA $1E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #.LOWORD(ALT_BATTLE_SPRITEMAPS)
	STA $26
	LDA $1E
	CLC
	ADC #.LOWORD(BATTLE_SPRITEMAPS)
	PROMOTENEARPTRA $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #$0050
	LDA $1E
	CLC
	ADC $26
	JSL MEMCPY16
<<<<<<< HEAD
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	OPTIMIZED_MULT @VIRTUAL04, 80
=======
	LDA UNKNOWN_7EAAB4
	OPTIMIZED_MULT $04, 80
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $26
	STA $1E
	LDX #$0000
	BRA @UNKNOWN11
@UNKNOWN10:
	REP #PROC_FLAGS::ACCUM8
	TXA
	OPTIMIZED_MULT $04, 5
	STA $02
	INC $02
	INC $02
	LDA $1E
	CLC
	ADC $02
	STA $20
	SEP #PROC_FLAGS::ACCUM8
	LDA ($20)
	CLC
	ADC #$0008
	STA ($20)
	INX
@UNKNOWN11:
	CPX #$0010
	BCC @UNKNOWN10
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA @LOCAL06
	STA @VIRTUAL02
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	TAX
	LDA @VIRTUAL02
	STA CURRENT_BATTLE_SPRITE_WIDTHS,X
	LDY @LOCAL07
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	TAX
	TYA
	STA CURRENT_BATTLE_SPRITE_HEIGHTS,X
	INC CURRENT_BATTLE_SPRITES_ALLOCATED
	LOADPTR BUFFER + $8000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
.IF .DEFINED(JPN)
	LOADPTR BATTLE_SPRITES_POINTERS, @VIRTUAL06
.ELSE
	LOADPTR BATTLE_SPRITES_POINTERS, @VIRTUAL0A
.ENDIF
	LDA @LOCAL09
	STA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, 5
=======
	LDA $22
	STA $02
	LDA UNKNOWN_7EAAB4
	ASL
	TAX
	LDA $02
	STA UNKNOWN_7EAAC6,X
	LDY $24
	LDA UNKNOWN_7EAAB4
	ASL
	TAX
	TYA
	STA UNKNOWN_7EAACE,X
	INC UNKNOWN_7EAAB4
	LOADPTR UNKNOWN_7F8000, $06
	MOVE_INT $06, $1A
	LOADPTR BATTLE_SPRITES_POINTERS, $0A
	LDA $28
	STA $04
	OPTIMIZED_MULT $04, 5
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT $1A, $06
	MOVE_INT $06, $12
	JSL DECOMP
	MOVE_INT $06, $1A
	LDY $24
	LDA $02
	JSL MULT16
	TAY
	JMP @UNKNOWN17
@UNKNOWN12:
<<<<<<< HEAD
	LOADPTR BUFFER, @VIRTUAL0A
	LDA CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
=======
	LOADPTR UNKNOWN_7F0000, $0A
	LDA UNKNOWN_7EAAB2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	TAX
	LDA f:UNKNOWN_C3F871,X
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	INC CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	LDA #0
	STA @LOCAL20ALT
=======
	ADC $0A
	STA $0A
	INC UNKNOWN_7EAAB2
	LDA #$0000
	STA $20
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN16
@UNKNOWN13:
	MOVE_INT $0A, $06
	MOVE_INT $06, $16
	LDX #$0000
	BRA @UNKNOWN15
@UNKNOWN14:
	SEP #PROC_FLAGS::ACCUM8
	LDA [$1A]
	STA [$06]
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $1A, $06
	INC $06
	MOVE_INT $06, $1A
	MOVE_INT $16, $06
	INC $06
	MOVE_INT $06, $16
	INX
@UNKNOWN15:
	CPX #$0080
	BCC @UNKNOWN14
	LDA #$0200
	CLC
	ADC $0A
	STA $0A
	LDA $20
	INC
	STA $20
@UNKNOWN16:
	CMP #$0004
	BCC @UNKNOWN13
@UNKNOWN17:
	TYX
	DEY
	CPX #$0000
	BNEL @UNKNOWN12
	PLD
	RTS
