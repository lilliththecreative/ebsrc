
UNKNOWN_C0222B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
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
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @LOCAL0C
	STA @VIRTUAL04
	STA @LOCAL0B
	LDA @VIRTUAL04
	CMP #32
	BCC @UNKNOWN0
	JMP @UNKNOWN29
@UNKNOWN0:
	LDA @LOCAL0C
	CMP #40
	BCC @UNKNOWN1
	JMP @UNKNOWN29
@UNKNOWN1:
	LDA @VIRTUAL04
	ASL
	STA @VIRTUAL02
	LDA @LOCAL0C
	OPTIMIZED_MULT @VIRTUAL04, 64
	CLC
	ADC @VIRTUAL02
	TAX
	LDA f:SPRITE_PLACEMENT_PTR_TABLE,X
	BEQL @UNKNOWN29
	STORE_INT1632 @VIRTUAL06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SPRITE_PLACEMENT_TABLE & $FF0000, @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @LOCAL0A
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	STZ @LOCAL09
	JMP @UNKNOWN28
@UNKNOWN3:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDA [@VIRTUAL06] ;sprite_placement::id
	STA @LOCAL08
	SEP #PROC_FLAGS::ACCUM8
	LDY #sprite_placement::y_coord
	LDA [@VIRTUAL0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	STX @LOCAL07
	SEP #PROC_FLAGS::ACCUM8
	LDY #sprite_placement::x_coord
	LDA [@VIRTUAL0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAY
	STY @LOCAL06
	LDA #.SIZEOF(sprite_placement)
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	TXA
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDA @LOCAL0B
	STA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, 32
	CLC
	ADC @VIRTUAL02
	STA @LOCAL05
	TYA
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDA @LOCAL0C
	OPTIMIZED_MULT @VIRTUAL04, 32
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL02
	LDA @LOCAL05
	LSR
	LSR
	LSR
	LSR
	LSR
	PHA
	LDA @VIRTUAL02
	LSR
	LSR
	LSR
	LSR
	OPTIMIZED_MULT @VIRTUAL04, 32
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAX
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	AND #$00FF
	LSR
	LSR
	LSR
	CMP UNKNOWN_7E436E
	BNEL @UNKNOWN27
	LDA @LOCAL08
	JSL UNKNOWN_C0A21C
	CMP #0
	BNEL @UNKNOWN27
	LDX @LOCAL07
	STX @VIRTUAL02
	LDA @VIRTUAL04
	XBA
	AND #$FF00
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL02
	STA @LOCAL04
	LDY @LOCAL06
	STY @VIRTUAL02
	LDA @LOCAL0C
	XBA
	AND #$FF00
	CLC
	ADC @VIRTUAL02
	TAY
	STY @LOCAL03
	LDA @LOCAL04
	STA @VIRTUAL02
	SEC
	SBC BG1_X_POS
	STA @LOCAL05
	TYA
	SEC
	SBC BG1_Y_POS
	TAX
	LDA DEBUG
	BEQ @UNKNOWN8
	LDA PAD_STATE
	AND #PAD::L_BUTTON | PAD::R_BUTTON
	BNE @UNKNOWN6
	LDA UNKNOWN_7E4A58
	DEC
	BEQ @UNKNOWN9
@UNKNOWN6:
	LDA @LOCAL05
	CMP #256
	BCS @UNKNOWN9
	CPX #224
	BCCL @UNKNOWN27
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA UNKNOWN_7E4A58
	DEC
	BEQ @UNKNOWN9
	LDA @LOCAL05
	CMP #256
	BCS @UNKNOWN9
	CPX #224
	BCCL @UNKNOWN27
@UNKNOWN9:
	LDA @LOCAL05
	STA @VIRTUAL02
	LDA #.LOWORD(-64)
	CLC
	SBC @VIRTUAL02
	JUMPGTS @UNKNOWN27
	LDA @LOCAL05
	STA @VIRTUAL02
	LDA #320
	CLC
	SBC @VIRTUAL02
	JUMPLTEQS @UNKNOWN27
	STX @VIRTUAL02
	LDA #.LOWORD(-64)
	CLC
	SBC @VIRTUAL02
	JUMPGTS @UNKNOWN27
	STX @VIRTUAL02
	LDA #320
	CLC
	SBC @VIRTUAL02
	JUMPLTEQS @UNKNOWN27
	LOADPTR NPC_CONFIG_TABLE, @VIRTUAL06
	LDA @LOCAL08
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(npc_config)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL02
	LDA @VIRTUAL06+2
	STA @LOCAL02+2
	LDX #.LOWORD(-1)
	STX @LOCAL05
	LDA UNKNOWN_7EB4EF
	BNEL @UNKNOWN25
	LDA DEBUG
	BEQ @UNKNOWN20
	SEP #PROC_FLAGS::ACCUM8
	LDY #npc_config::appearance_style
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA @LOCAL06
	BEQ @UNKNOWN21
	JSL UNKNOWN_EFE6CF
	CMP #0
	BEQ @UNKNOWN21
	LDY #npc_config::event_flag
	LDA [@VIRTUAL06],Y
	JSL GET_EVENT_FLAG
	STA @VIRTUAL02
	LDA @LOCAL06
	DEC
	DEC
	EOR @VIRTUAL02
	AND #$0001
	BEQL @UNKNOWN27
	BRA @UNKNOWN21
@UNKNOWN20:
	SEP #PROC_FLAGS::ACCUM8
	LDY #npc_config::appearance_style
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA @LOCAL07
	BEQ @UNKNOWN21
	LDY #npc_config::event_flag
	LDA [@VIRTUAL06],Y
	JSL GET_EVENT_FLAG
	STA @VIRTUAL02
	LDA @LOCAL07
	DEC
	DEC
	EOR @VIRTUAL02
	AND #$0001
	BEQL @UNKNOWN27
@UNKNOWN21:
	LDA DEBUG
	BEQ @UNKNOWN23
	LDA SHOW_NPC_FLAG
	BEQ @UNKNOWN22
	LDA [@VIRTUAL06]
	AND #$00FF
	CMP #3
	BNEL @UNKNOWN26
@UNKNOWN22:
	MOVE_INT @LOCAL02, @VIRTUAL06
	LDY #npc_config::event_script
	LDA [@VIRTUAL06],Y
	JSL UNKNOWN_EFE6E2
	STA @LOCAL07
	LDA @LOCAL04
	STA @VIRTUAL02
	STA @LOCAL00
	LDY @LOCAL03
	STY @LOCAL01
	LDY #.LOWORD(-1)
	STY @LOCAL05
	LDA @LOCAL07
	TAX
	LDY #npc_config::sprite
	LDA [@VIRTUAL06],Y
	LDY @LOCAL05
	JSL CREATE_ENTITY
	TAX
	STX @LOCAL05
	BRA @UNKNOWN26
@UNKNOWN23:
	LDA SHOW_NPC_FLAG
	BEQ @UNKNOWN24
	LDA [@VIRTUAL06]
	AND #$00FF
	CMP #3
	BNE @UNKNOWN26
@UNKNOWN24:
	LDA @LOCAL04
	STA @VIRTUAL02
	STA @LOCAL00
	LDY @LOCAL03
	STY @LOCAL01
	LDY #.LOWORD(-1)
	STY @LOCAL06
	MOVE_INT @LOCAL02, @VIRTUAL06
	LDY #npc_config::event_script
	LDA [@VIRTUAL06],Y
	TAX
	LDY #npc_config::sprite
	LDA [@VIRTUAL06],Y
	LDY @LOCAL06
	JSL CREATE_ENTITY
	TAX
	STX @LOCAL05
	BRA @UNKNOWN26
@UNKNOWN25:
	SEP #PROC_FLAGS::ACCUM8
	LDY #npc_config::appearance_style
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN26
	LDA @LOCAL04
	STA @VIRTUAL02
	STA @LOCAL00
	LDY @LOCAL03
	STY @LOCAL01
	LDY #.LOWORD(-1)
	STY @LOCAL05
	LDX #EVENT_SCRIPT::EVENT_799
	LDY #npc_config::sprite
	LDA [@VIRTUAL06],Y
	LDY @LOCAL05
	JSL CREATE_ENTITY
	TAX
	STX @LOCAL05
@UNKNOWN26:
	LDX @LOCAL05
	CPX #.LOWORD(-1)
	BEQ @UNKNOWN27
	TXA
	ASL
	TAX
	MOVE_INT @LOCAL02, @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDY #npc_config::direction
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA ENTITY_DIRECTIONS,X
	LDA @LOCAL08
	STA ENTITY_TPT_ENTRIES,X
@UNKNOWN27:
	INC @LOCAL09
@UNKNOWN28:
	LDA @LOCAL09
	CMP @LOCAL0A
	BNEL @UNKNOWN3
@UNKNOWN29:
	END_C_FUNCTION
