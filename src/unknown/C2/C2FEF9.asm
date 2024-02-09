
; A: attack type? 1 = physical, 2 = psi, 3 = other
UNKNOWN_C2FEF9: ;$C2FEF9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAX
	TXY
	TXA
	DEC
	STA $12
	CPY #$0000
	BEQ @UNKNOWN0
	LOADPTR UNKNOWN_C3F8F1, $06
	LDA $12
	OPTIMIZED_MULT $04, BPP4PALETTE_SIZE
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #BPP4PALETTE_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 12
	JSL MEMCPY16
	MOVE_INT $06, $0E
	LDX #BPP4PALETTE_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 13
	JSL MEMCPY16
	MOVE_INT $06, $0E
	LDX #BPP4PALETTE_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 14
	JSL MEMCPY16
	MOVE_INT $06, $0E
	LDX #BPP4PALETTE_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 15
	JSL MEMCPY16
	LDA #$0010
	JSL UNKNOWN_C0856B
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA #BPP4PALETTE_SIZE * 4
	STA $12
	BRA @UNKNOWN2
@UNKNOWN1:
	ASL
	TAX
	LDA PALETTES,X
	LSR
	LSR ;divide entire colour by two. normally, this would cause the lower two bits of each channel to bleed into the next, but...
	AND #(7 << 10) +(7 << 5) + 7 ;we keep only the bottom 3 bits of each colour channel. combined, this just darkens the colour.
<<<<<<< HEAD
	STA PALETTES + (BPP4PALETTE_SIZE * 4),X
	LDA @LOCAL01
=======
	STA CUR_MAP_PAL + (BPP4PALETTE_SIZE * 2),X
	LDA $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	INC
	STA $12
@UNKNOWN2:
	CMP #BPP4PALETTE_SIZE * 6
	BCC @UNKNOWN1
	LDA #$0010
	JSL UNKNOWN_C0856B
@UNKNOWN3:
	PLD
	RTL
