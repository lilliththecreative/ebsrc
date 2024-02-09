
;void AnimatePalette(void)
ANIMATE_PALETTE: ;$C0030F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA OVERWORLD_PALETTE_ANIM + overworld_palette_anim::timer
	DEC
	STA OVERWORLD_PALETTE_ANIM + overworld_palette_anim::timer
	BNE @UNKNOWN1
	LDX #.LOWORD(OVERWORLD_PALETTE_ANIM) + overworld_palette_anim::index
	STX $0E
	LDA __BSS_START__,X
	ASL
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(OVERWORLD_PALETTE_ANIM)
	TAX
	LDA a:overworld_palette_anim::delays,X
.ELSE
	TAX
	LDA OVERWORLD_PALETTE_ANIM + overworld_palette_anim::delays,X
.ENDIF
	BNE @UNKNOWN0
	LDA #$0000
	LDX $0E
	STA __BSS_START__,X
@UNKNOWN0:
	LDX #.LOWORD(OVERWORLD_PALETTE_ANIM) + overworld_palette_anim::index
	STX $0E
	LDA __BSS_START__,X
	ASL
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(OVERWORLD_PALETTE_ANIM)
	TAX
	LDA a:overworld_palette_anim::delays,X
.ELSE
	TAX
	LDA OVERWORLD_PALETTE_ANIM + overworld_palette_anim::delays,X
.ENDIF
	STA OVERWORLD_PALETTE_ANIM + overworld_palette_anim::timer
	LDX $0E
	LDA __BSS_START__,X
	JSL UNKNOWN_C0A1F2
	LDX $0E
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
@UNKNOWN1:
	PLD
	RTL
