
UNKNOWN_C44DCA:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #.LOWORD(TEXT_RENDER_STATE)
	STA @LOCAL03
	LDA VWF_X
	LSR
	LSR
	LSR
	STA @LOCAL02
	LDA (@LOCAL03) ;text_renderer_state::pixels_rendered
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDY #text_renderer_state::upper_vram_position
	LDA (@LOCAL03),Y
	STA @LOCAL01
	BEQ @UNKNOWN0
	LDY #text_renderer_state::lower_vram_position
	LDA (@LOCAL03),Y
	TAY
	LDA @LOCAL01
	TAX
	LDA @VIRTUAL02
	JSR UNKNOWN_C4002F
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	BRA @UNKNOWN3
@UNKNOWN1:
	JSR UNKNOWN_C40085
	STA @LOCAL00
	LDY #text_renderer_state::upper_vram_position
	STA (@LOCAL03),Y
	JSR UNKNOWN_C40085
	STA @VIRTUAL04
	LDY #text_renderer_state::lower_vram_position
	STA (@LOCAL03),Y
	LDX @VIRTUAL02
	INX
	CPX #52
	BNE @UNKNOWN2
	LDX #0
@UNKNOWN2:
	STX @VIRTUAL02
	LDY @VIRTUAL04
	LDX @LOCAL00
	LDA @VIRTUAL02
	JSR UNKNOWN_C4002F
	LDX @VIRTUAL04
	LDA @LOCAL00
	JSR UNKNOWN_C44C8C
@UNKNOWN3:
	LDA @VIRTUAL02
	CMP @LOCAL02
	BNE @UNKNOWN1
	LDA VWF_X
	STA (@LOCAL03)
	END_C_FUNCTION
