
<<<<<<< HEAD
UNKNOWN_C492D2:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	STA @LOCAL02
	LDA #0
	STA @VIRTUAL04
=======
UNKNOWN_C492D2: ;$C492D2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA #$0240
	STA $12
	LDA #$0000
	STA $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JMP @UNKNOWN1
@UNKNOWN0:
	LDA $04
	ASL
<<<<<<< HEAD
	STA @LOCAL01
	LOADPTR BUFFER + $7C00, @VIRTUAL06
	LDA @LOCAL01
=======
	STA $10
	LOADPTR UNKNOWN_7F7C00, $06
	LDA $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $06
	STA $06
	LDA $10
	TAX
	LDA [$06]
	CLC
<<<<<<< HEAD
	ADC BUFFER + $7900,X
	TAY
	STA [@VIRTUAL06]
	LOADPTR BUFFER + $7D00, @VIRTUAL06
	LDA @LOCAL01
=======
	ADC UNKNOWN_7F0000+30976,X
	TAY
	STA [$06]
	LOADPTR UNKNOWN_7F7D00, $06
	LDA $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $06
	STA $06
	LDA $10
	TAX
	LDA [$06]
	CLC
<<<<<<< HEAD
	ADC BUFFER + $7A00,X
	STA @VIRTUAL02
	STA [@VIRTUAL06]
	LOADPTR BUFFER + $7E00, @VIRTUAL06
	LDA @LOCAL01
=======
	ADC UNKNOWN_7F0000+31232,X
	STA $02
	STA [$06]
	LOADPTR UNKNOWN_7F7E00, $06
	LDA $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $06
	STA $06
	LDA $10
	TAX
	LDA [$06]
	CLC
<<<<<<< HEAD
	ADC BUFFER + $7B00,X
=======
	ADC UNKNOWN_7F0000+31488,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	STA [$06]
	TYA
	XBA
	AND #$00FF
	AND #$001F
	TAY
	LDA $02
	XBA
	AND #$00FF
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $10
	TXA
	XBA
	AND #$00FF
	AND #$001F
	XBA
	AND #$FF00
	ASL
	ASL
	STA $02
	STA $0E
	LDA $10
	STA $02
	TYA
	ORA $02
	LDX $0E
	STX $02
	ORA $02
	STA ($12)
	INC $12
	INC $12
	INC $04
@UNKNOWN1:
	LDA $04
	CMP #$0060
	BCCL @UNKNOWN0
	LDA #$0008
	JSL UNKNOWN_C0856B
	PLD
	RTL
