
<<<<<<< HEAD
UNKNOWN_C4A7B0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	AND #$00FF
	BEQL @UNKNOWN34
	LDY #.LOWORD(LOADED_OVAL_WINDOW)
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL0A
	CMP @VIRTUAL06+2
=======
UNKNOWN_C4A7B0: ;$C4A7B0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 23
	LDA UNKNOWN_7EAEC2
	AND #$00FF
	BEQL @UNKNOWN34
	LDY #.LOWORD(UNKNOWN_7EAECC)
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT_YPTRSRC __BSS_START__, $0A
	CMP $08
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNE @UNKNOWN1
	LDA $0A
	CMP $06
@UNKNOWN1:
	BEQL @UNKNOWN19
	LDX #.LOWORD(FRAMES_UNTIL_NEXT_SWIRL_UPDATE)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN9
	MOVE_INT_YPTRSRC __BSS_START__, $0A
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA [@VIRTUAL0A]
	STA FRAMES_UNTIL_NEXT_SWIRL_UPDATE
=======
	LDA [$0A]
	STA UNKNOWN_7EAEC2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN4
	MOVE_INT_YPTRDEST $06, __BSS_START__
	JMP @UNKNOWN34
@UNKNOWN4:
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$0002
	LDA [$06],Y
	CMP #$8000
	BEQ @UNKNOWN5
	STA LOADED_OVAL_WINDOW_CENTRE_X
@UNKNOWN5:
<<<<<<< HEAD
	MOVE_INT LOADED_OVAL_WINDOW, @VIRTUAL06
	LDY #oval_window::centre_y
	LDA [@VIRTUAL06],Y
=======
	MOVE_INT UNKNOWN_7EAECC, $06
	LDY #$0004
	LDA [$06],Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CMP #$8000
	BEQ @UNKNOWN6
	STA LOADED_OVAL_WINDOW_CENTRE_Y
@UNKNOWN6:
<<<<<<< HEAD
	MOVE_INT LOADED_OVAL_WINDOW, @VIRTUAL06
	LDY #oval_window::initial_width
	LDA [@VIRTUAL06],Y
=======
	MOVE_INT UNKNOWN_7EAECC, $06
	LDY #$0006
	LDA [$06],Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CMP #$8000
	BEQ @UNKNOWN7
	STA LOADED_OVAL_WINDOW_WIDTH
@UNKNOWN7:
<<<<<<< HEAD
	MOVE_INT LOADED_OVAL_WINDOW, @VIRTUAL06
	LDY #oval_window::initial_height
	LDA [@VIRTUAL06],Y
=======
	MOVE_INT UNKNOWN_7EAECC, $06
	LDY #$0008
	LDA [$06],Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CMP #$8000
	BEQ @UNKNOWN8
	STA LOADED_OVAL_WINDOW_HEIGHT
@UNKNOWN8:
<<<<<<< HEAD
	LDY #.LOWORD(LOADED_OVAL_WINDOW)
	STY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDY #oval_window::centre_x_add
	LDA [@VIRTUAL06],Y
	STA LOADED_OVAL_WINDOW_CENTRE_X_ADD
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDY #oval_window::centre_y_add
	LDA [@VIRTUAL06],Y
	STA LOADED_OVAL_WINDOW_CENTRE_Y_ADD
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDY #oval_window::width_velocity
	LDA [@VIRTUAL06],Y
	STA LOADED_OVAL_WINDOW_WIDTH_VELOCITY
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDY #oval_window::height_velocity
	LDA [@VIRTUAL06],Y
	STA LOADED_OVAL_WINDOW_HEIGHT_VELOCITY
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDY #oval_window::width_acceleration
	LDA [@VIRTUAL06],Y
	STA LOADED_OVAL_WINDOW_WIDTH_ACCELERATION
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDY #oval_window::height_acceleration
	LDA [@VIRTUAL06],Y
	STA LOADED_OVAL_WINDOW_HEIGHT_ACCELERATION
	LDY @LOCAL03
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA #.SIZEOF(oval_window)
=======
	LDY #.LOWORD(UNKNOWN_7EAECC)
	STY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$000A
	LDA [$06],Y
	STA UNKNOWN_7EAED8
	LDY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$000C
	LDA [$06],Y
	STA UNKNOWN_7EAEDA
	LDY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$000E
	LDA [$06],Y
	STA UNKNOWN_7EAEDC
	LDY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$0010
	LDA [$06],Y
	STA UNKNOWN_7EAEDE
	LDY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$0012
	LDA [$06],Y
	STA UNKNOWN_7EAEE0
	LDY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDY #$0014
	LDA [$06],Y
	STA UNKNOWN_7EAEE2
	LDY $15
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDA #$0016
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $06
	STA $06
	STA __BSS_START__,Y
	LDA $08
	STA __BSS_START__+2,Y
@UNKNOWN9:
	LDX #.LOWORD(LOADED_OVAL_WINDOW_CENTRE_X)
	LDA __BSS_START__,X
	CLC
	ADC LOADED_OVAL_WINDOW_CENTRE_X_ADD
	STA __BSS_START__,X
	LDX #.LOWORD(LOADED_OVAL_WINDOW_CENTRE_Y)
	LDA __BSS_START__,X
	CLC
	ADC LOADED_OVAL_WINDOW_CENTRE_Y_ADD
	STA __BSS_START__,X
	LDX #.LOWORD(LOADED_OVAL_WINDOW_WIDTH_VELOCITY)
	LDA __BSS_START__,X
	CLC
	ADC LOADED_OVAL_WINDOW_WIDTH_ACCELERATION
	STA __BSS_START__,X
	LDY #.LOWORD(LOADED_OVAL_WINDOW_HEIGHT_VELOCITY)
	LDA __BSS_START__,Y
	CLC
	ADC LOADED_OVAL_WINDOW_HEIGHT_ACCELERATION
	STA __BSS_START__,Y
	LDA __BSS_START__,X
	STA $15
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN12
<<<<<<< HEAD
	LDX #.LOWORD(LOADED_OVAL_WINDOW_WIDTH)
	LDA @LOCAL03
=======
	LDX #.LOWORD(UNKNOWN_7EAED4)
	LDA $15
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	EOR #$FFFF
	INC
	STA $02
	LDA __BSS_START__,X
	CMP $02
	BCS @UNKNOWN12
	LDA #$0000
	STA __BSS_START__,X
	BRA @UNKNOWN13
@UNKNOWN12:
	LDX #.LOWORD(LOADED_OVAL_WINDOW_WIDTH)
	LDA __BSS_START__,X
	CLC
	ADC LOADED_OVAL_WINDOW_WIDTH_VELOCITY
	STA __BSS_START__,X
@UNKNOWN13:
<<<<<<< HEAD
	LDA LOADED_OVAL_WINDOW_HEIGHT_VELOCITY
	STA @LOCAL03
	STA @VIRTUAL02
	LDA #0
=======
	LDA UNKNOWN_7EAEDE
	STA $15
	STA $02
	LDA #$0000
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN16
<<<<<<< HEAD
	LDX #.LOWORD(LOADED_OVAL_WINDOW_HEIGHT)
	LDA @LOCAL03
=======
	LDX #.LOWORD(UNKNOWN_7EAED6)
	LDA $15
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	EOR #$FFFF
	INC
	STA $02
	LDA __BSS_START__,X
	CMP $02
	BCS @UNKNOWN16
	LDA #$0000
	STA __BSS_START__,X
	BRA @UNKNOWN17
@UNKNOWN16:
	LDX #.LOWORD(LOADED_OVAL_WINDOW_HEIGHT)
	LDA __BSS_START__,X
	CLC
	ADC LOADED_OVAL_WINDOW_HEIGHT_VELOCITY
	STA __BSS_START__,X
@UNKNOWN17:
	LDA LOADED_OVAL_WINDOW_WIDTH
	BNE @UNKNOWN18
	LDA LOADED_OVAL_WINDOW_HEIGHT
	BNE @UNKNOWN18
	SEP #PROC_FLAGS::ACCUM8
	STZ FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT_CONSTANT NULL, LOADED_OVAL_WINDOW
	JMP @UNKNOWN34
@UNKNOWN18:
	LDA LOADED_OVAL_WINDOW_HEIGHT
	XBA
	AND #$00FF
<<<<<<< HEAD
	STA @LOCAL00
	LDA LOADED_OVAL_WINDOW_WIDTH
=======
	STA $0E
	LDA UNKNOWN_7EAED4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	XBA
	AND #$00FF
	TAY
	LDX LOADED_OVAL_WINDOW_CENTRE_Y
	LDA LOADED_OVAL_WINDOW_CENTRE_X
	JSL UNKNOWN_C0B149
	LDX #$0041
	LDA #$0003
	JSL UNKNOWN_C0B0EF
	LDA SWIRL_INVERT_ENABLED
	AND #$00FF
	TAX
	LDA SWIRL_MASK_SETTINGS
	AND #$00FF
	JSL SET_WINDOW_MASK
	JMP @UNKNOWN34
@UNKNOWN19:
	LDX #.LOWORD(FRAMES_UNTIL_NEXT_SWIRL_UPDATE)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN34
@UNKNOWN20:
<<<<<<< HEAD
	LDX #.LOWORD(SWIRL_FRAMES_LEFT)
	STX @LOCAL03
=======
	LDX #.LOWORD(UNKNOWN_7EAEC4)
	STX $15
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	AND #$00FF
	BEQL @UNKNOWN24
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA FRAMES_UNTIL_NEXT_SWIRL_FRAME
	STA FRAMES_UNTIL_NEXT_SWIRL_UPDATE
	LDY #.LOWORD(SWIRL_HDMA_CHANNEL_OFFSET)
	STY @LOCAL02
=======
	LDA UNKNOWN_7EAEC3
	STA UNKNOWN_7EAEC2
	LDY #.LOWORD(UNKNOWN_7EAEC9)
	STY $13
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	AND #$00FF
	INC
	INC
	INC
	JSL UNKNOWN_C0AE34
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	INC
	STA __BSS_START__,Y
	AND #$0001
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	LDA SWIRL_REVERSED
	AND #$00FF
	BNE @UNKNOWN22
<<<<<<< HEAD
	LDX #.LOWORD(SWIRL_HDMA_TABLE_ID)
	STX @LOCAL03
=======
	LDX #.LOWORD(UNKNOWN_7EAEC5)
	STX $15
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA $12
	REP #PROC_FLAGS::ACCUM8
	LOADPTR SWIRL_DATA&$FF0000, $06
	LDA $12
	AND #$00FF
	ASL
	TAX
	LDA f:SWIRL_POINTER_TABLE,X
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA $12
	INC
	LDX $15
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA __BSS_START__,Y
	AND #$00FF
	INC
	INC
	INC
	JSL UNKNOWN_C0B0B8
	BRA @UNKNOWN23
@UNKNOWN22:
	LDX #.LOWORD(SWIRL_HDMA_TABLE_ID)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA $12
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LOADPTR SWIRL_DATA&$FF0000, $06
	LDA $12
	AND #$00FF
	ASL
	TAX
	LDA f:SWIRL_POINTER_TABLE,X
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA __BSS_START__,Y
	AND #$00FF
	INC
	INC
	INC
	JSL UNKNOWN_C0B0B8
@UNKNOWN23:
	LDA SWIRL_INVERT_ENABLED
	AND #$00FF
	TAX
	LDA SWIRL_MASK_SETTINGS
	AND #$00FF
	JSL SET_WINDOW_MASK
	LDX #.LOWORD(SWIRL_FRAMES_LEFT)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	JMP @UNKNOWN34
@UNKNOWN24:
	.A16
<<<<<<< HEAD
	LDA #.LOWORD(SWIRL_NEXT_SWIRL)
	STA @VIRTUAL02
	LDX @VIRTUAL02
=======
	LDA #.LOWORD(UNKNOWN_7EAEE4)
	STA $02
	LDX $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA __BSS_START__,X
	AND #$00FF
	BEQL @UNKNOWN32
	LDY #.LOWORD(SWIRL_REPEATS_UNTIL_SPEED_UP)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	DEC
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN27
	LOADPTR SWIRL_PRIMARY_TABLE, $06
	LDX $02
	LDA __BSS_START__,X
	AND #$00FF
	ASL
	ASL
	INC
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	LDX $15
	STA __BSS_START__,X
<<<<<<< HEAD
	LDY #.LOWORD(SWIRL_HDMA_TABLE_ID)
	LDX @VIRTUAL02
=======
	LDY #.LOWORD(UNKNOWN_7EAEC5)
	LDX $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	AND #$00FF
	ASL
	ASL
	INC
	CLC
	ADC $06
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	LDA [$06]
	STA $12
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	LDA SWIRL_REVERSED
	AND #$00FF
	BEQL @UNKNOWN20
	LDX $15
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA $00
	LDA $12
	CLC
	ADC $00
	STA __BSS_START__,Y
	JMP @UNKNOWN20
@UNKNOWN27:
	LDX #.LOWORD(SWIRL_REPEAT_SPEED)
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN28
	CMP #$0002
	BEQ @UNKNOWN29
	CMP #$0003
	BEQ @UNKNOWN30
	BRA @UNKNOWN31
@UNKNOWN28:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0004
	STA __BSS_START__,Y
<<<<<<< HEAD
	LDA #3
	STA FRAMES_UNTIL_NEXT_SWIRL_FRAME
=======
	LDA #$0003
	STA UNKNOWN_7EAEC3
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN31
@UNKNOWN29:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0006
	STA __BSS_START__,Y
<<<<<<< HEAD
	LDA #2
	STA FRAMES_UNTIL_NEXT_SWIRL_FRAME
=======
	LDA #$0002
	STA UNKNOWN_7EAEC3
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN31
@UNKNOWN30:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000C
	STA __BSS_START__,Y
<<<<<<< HEAD
	LDA #1
	STA FRAMES_UNTIL_NEXT_SWIRL_FRAME
=======
	LDA #$0001
	STA UNKNOWN_7EAEC3
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN31:
	REP #PROC_FLAGS::ACCUM8
	LDA SWIRL_REPEATS_UNTIL_SPEED_UP
	AND #$00FF
	BNEL @UNKNOWN20
@UNKNOWN32:
	LDX #.LOWORD(SWIRL_LENGTH_PADDING)
	LDA __BSS_START__,X
	AND #$00FF
	BEQ @UNKNOWN33
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	STA FRAMES_UNTIL_NEXT_SWIRL_UPDATE
=======
	LDA #$0001
	STA UNKNOWN_7EAEC2
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	BRA @UNKNOWN34
@UNKNOWN33:
	.A16
	LDA SWIRL_AUTO_RESTORE
	AND #$00FF
	BEQ @UNKNOWN34
	LDA SWIRL_HDMA_CHANNEL_OFFSET
	AND #$00FF
	INC
	INC
	INC
	JSL UNKNOWN_C0AE34
	LDX #$0000
	TXA
	JSL SET_WINDOW_MASK
	JSL UNKNOWN_C2DE96
	LDY #$0000
	TYX
	TYA
	JSL SET_COLDATA
	LDA CURRENT_LAYER_CONFIG
	JSL UNKNOWN_C0AFCD
@UNKNOWN34:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
