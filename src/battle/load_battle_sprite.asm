
LOAD_BATTLE_SPRITE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int id
	END_STACK_VARS
.IF .DEFINED(JPN)
	@LOCAL20ALT := @LOCAL08
	@LOCAL20ALT2 := @LOCAL05
.ELSE
	@LOCAL20ALT := @LOCAL05
	@LOCAL20ALT2 := @LOCAL08
.ENDIF
	TAX
	STX @LOCAL09
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	TAX
	LDA CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	STA BATTLE_SPRITEMAP_ALLOCATION_COUNTS,X
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	OPTIMIZED_MULT @VIRTUAL04, 80
	CLC
	ADC #.LOWORD(BATTLE_SPRITEMAPS)
	STA @LOCAL08
	LDX @LOCAL09
	TXA
	DEC
	STA @VIRTUAL04
	STA @LOCAL09
	LDY #1
	STY @LOCAL07
	TYA
	STA @VIRTUAL02
	STA @LOCAL06
	LDX #0
	STX @LOCAL05
	JMP @UNKNOWN1
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	TXA
	OPTIMIZED_MULT @VIRTUAL04, 5
	STA @LOCAL04
	TAY
	SEP #PROC_FLAGS::ACCUM8
	LDA #224
	STA (@LOCAL08),Y ;spritemap::y_offset
	REP #PROC_FLAGS::ACCUM8
	LOADPTR UNKNOWN_C3F8B1, @VIRTUAL06
	LDA @LOCAL04
	TAY
	INY
	TXA
	CLC
	ADC CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	ASL
	PHA
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	PLA
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL0A]
	STA (@LOCAL08),Y ;spritemap::tile
	LDA #8
	PHA
	REP #PROC_FLAGS::ACCUM8
	TXA
	CLC
	ADC CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	SEP #PROC_FLAGS::INDEX8
	PLY
	JSL ASR8_UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	ASL
	CLC
	ADC @VIRTUAL00
	CLC
	ADC #32
	PHA
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	REP #PROC_FLAGS::INDEX8
	TAY
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA (@LOCAL08),Y ;spritemap::flags
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	TAY
	INY
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA #240
	STA (@LOCAL08),Y ;;spritemap::x_offset
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL04
	TAY
	INY
	INY
	INY
	INY
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA (@LOCAL08),Y ;spritemap::special_flags
	LDX @LOCAL05
	INX
	STX @LOCAL05
@UNKNOWN1:
	CPX #16
	BCCL @UNKNOWN0
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL09
	STA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, 5
	TAX
	INX
	INX
	INX
	INX
	LDA f:BATTLE_SPRITES_POINTERS,X
	AND #$00FF
	CMP #2
	BEQ @UNKNOWN4
	CMP #3
	BEQ @UNKNOWN5
	CMP #4
	BEQ @UNKNOWN6
	CMP #5
	BEQ @UNKNOWN7
	CMP #6
	BEQL @UNKNOWN8
	JMP @UNKNOWN9
@UNKNOWN4:
	LDA #2
	STA @VIRTUAL02
	STA @LOCAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA #224
	LDY #spritemap::x_offset
	STA (@LOCAL08),Y
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 1) + spritemap::x_offset,X ;not sure why the +0 is necessary here
	JMP @UNKNOWN9
@UNKNOWN5:
	LDY #2
	STY @LOCAL07
	SEP #PROC_FLAGS::ACCUM8
	LDA #192
	STA (@LOCAL08) ;spritemap::y_offset
	JMP @UNKNOWN9
@UNKNOWN6:
	LDY #2
	STY @LOCAL07
	STY @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA #192
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::y_offset
	STA (@LOCAL08),Y
	STA (@LOCAL08) ;spritemap::y_offset
	LDA #224
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 0) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDA #0
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::x_offset
	STA (@LOCAL08),Y
	JMP @UNKNOWN9
@UNKNOWN7:
	.A16
	LDA #4
	STA @VIRTUAL02
	STA @LOCAL06
	LDY #2
	STY @LOCAL07
	SEP #PROC_FLAGS::ACCUM8
	LDA #192
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::y_offset
	STA (@LOCAL08),Y
	STA (@LOCAL08) ;(.SIZEOF(spritemap) * 0) + spritemap::y_offset
	LDY #(.SIZEOF(spritemap) * 4) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 0) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDA #224
	LDY #(.SIZEOF(spritemap) * 5) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDA #0
	LDY #(.SIZEOF(spritemap) * 6) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDA #32
	LDY #(.SIZEOF(spritemap) * 7) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::x_offset
	STA (@LOCAL08),Y
	JMP @UNKNOWN9
@UNKNOWN8:
	LDY #4
	STY @LOCAL07
	TYA
	STA @VIRTUAL02
	STA @LOCAL06
	SEP #PROC_FLAGS::ACCUM8
	LDA #160
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 2) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::y_offset
	STA (@LOCAL08),Y
	STA (@LOCAL08) ;(.SIZEOF(spritemap) * 0) + spritemap::y_offset
	LDA #192
	LDY #(.SIZEOF(spritemap) * 7) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 6) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 5) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 4) + spritemap::y_offset
	STA (@LOCAL08),Y
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 15) + spritemap::y_offset,X
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 14) + spritemap::y_offset,X
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 13) + spritemap::y_offset,X
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 12) + spritemap::y_offset,X
	LDY #(.SIZEOF(spritemap) * 12) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 8) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 4) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 0) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDA #224
	LDY #(.SIZEOF(spritemap) * 13) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 9) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 5) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 1) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 14) + spritemap::x_offset,X
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 10) + spritemap::x_offset,X
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 6) + spritemap::x_offset,X
	LDX @LOCAL08
	STZ a:0 + (.SIZEOF(spritemap) * 2) + spritemap::x_offset,X
	LDA #32
	LDY #(.SIZEOF(spritemap) * 15) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 11) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 7) + spritemap::x_offset
	STA (@LOCAL08),Y
	LDY #(.SIZEOF(spritemap) * 3) + spritemap::x_offset
	STA (@LOCAL08),Y
@UNKNOWN9:
	LDY @LOCAL07
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	JSL MULT16
	OPTIMIZED_MULT @VIRTUAL04, 5
	TAY
	DEY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$81
	STA (@LOCAL08),Y
	REP #PROC_FLAGS::ACCUM8
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	OPTIMIZED_MULT @VIRTUAL04, 80
	STA @LOCAL04
	LDA #.LOWORD(ALT_BATTLE_SPRITEMAPS)
	STA @LOCAL20ALT2
	LDA @LOCAL04
	CLC
	ADC #.LOWORD(BATTLE_SPRITEMAPS)
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #80
	LDA @LOCAL04
	CLC
	ADC @LOCAL20ALT2
	JSL MEMCPY16
	LDA CURRENT_BATTLE_SPRITES_ALLOCATED
	OPTIMIZED_MULT @VIRTUAL04, 80
	CLC
	ADC @LOCAL20ALT2
	STA @LOCAL04
	LDX #0
	BRA @UNKNOWN11
@UNKNOWN10:
	REP #PROC_FLAGS::ACCUM8
	TXA
	OPTIMIZED_MULT @VIRTUAL04, 5
	STA @VIRTUAL02
	INC @VIRTUAL02
	INC @VIRTUAL02
	LDA @LOCAL04
	CLC
	ADC @VIRTUAL02
	STA @LOCAL05
	SEP #PROC_FLAGS::ACCUM8
	LDA (@LOCAL05)
	CLC
	ADC #8
	STA (@LOCAL05)
	INX
@UNKNOWN11:
	CPX #16
	BCC @UNKNOWN10
	REP #PROC_FLAGS::ACCUM8
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
	CLC
.IF .DEFINED(JPN)
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	MOVE_INT @LOCAL03, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	MOVE_INT @VIRTUAL06, @LOCAL03
	LDY @LOCAL07
	LDA @VIRTUAL02
	JSL MULT16
	TAY
	JMP @UNKNOWN17
@UNKNOWN12:
	LOADPTR BUFFER, @VIRTUAL0A
	LDA CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	ASL
	TAX
	LDA f:UNKNOWN_C3F871,X
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	INC CURRENT_BATTLE_SPRITEMAPS_ALLOCATED
	LDA #0
	STA @LOCAL20ALT
	BRA @UNKNOWN16
@UNKNOWN13:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDX #0
	BRA @UNKNOWN15
@UNKNOWN14:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@LOCAL03]
	STA [@VIRTUAL06]
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @LOCAL03, @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	MOVE_INT @LOCAL02, @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	INX
@UNKNOWN15:
	CPX #$0080
	BCC @UNKNOWN14
	LDA #$0200
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA @LOCAL20ALT
	INC
	STA @LOCAL20ALT
@UNKNOWN16:
	CMP #4
	BCC @UNKNOWN13
@UNKNOWN17:
	TYX
	DEY
	CPX #0
	BNEL @UNKNOWN12
	END_C_FUNCTION
