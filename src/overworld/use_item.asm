
OVERWORLD_USE_ITEM:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int unused
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	STX @LOCAL0A
	STA @VIRTUAL04
	STA @LOCAL09
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL07
	LDX @LOCAL0A
	LDA @VIRTUAL04
	JSL GET_CHARACTER_ITEM
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL01
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL01
	AND #$00FF
	STA @LOCAL06
	LOADPTR ITEM_CONFIGURATION_TABLE, @VIRTUAL06
	LDA @LOCAL06
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL05
	LDA @VIRTUAL06+2
	STA @LOCAL05+2
	LDY #item::type
	LDA [@LOCAL05],Y
	AND #$00FF
	TAX
	STX @LOCAL04
	TXA
	AND #ITEM_FLAGS::TRANSFORM | ITEM_FLAGS::CANNOT_GIVE
	BEQ @UNKNOWN1
	CMP #ITEM_FLAGS::TRANSFORM
	BEQ @UNKNOWN2
	CMP #ITEM_FLAGS::CANNOT_GIVE
	BEQ @UNKNOWN3
	CMP #ITEM_FLAGS::TRANSFORM | ITEM_FLAGS::CANNOT_GIVE
	BEQL @UNKNOWN4
	JMP @UNKNOWN18
@UNKNOWN1:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL07
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	OPTIMIZED_ADD battle_action::description_text_pointer
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN2:
	LOADPTR MSG_SYS_GOODS_EQUIP, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN3:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL07
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	OPTIMIZED_ADD battle_action::description_text_pointer
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN4:
	LDY #item::flags
.IF .DEFINED(JPN)
	LDA @LOCAL09
	STA @VIRTUAL04
.ENDIF
	LDX @VIRTUAL04
	DEX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_USABLE_FLAGS,X
	AND [@LOCAL05],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @CHAR_CAN_USE_ITEM
	LOADPTR MSG_SYS_GOODS_USE_NG_USER, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@CHAR_CAN_USE_ITEM:
	LDX @LOCAL04
	TXA
	AND #$000C
	BEQ @UNKNOWN6
	CMP #4
	BEQ @UNKNOWN7
	CMP #8
	BEQ @UNKNOWN8
	JMP @UNKNOWN18
@UNKNOWN6:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL07
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	OPTIMIZED_ADD battle_action::description_text_pointer
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN7:
	LOADPTR MSG_SYS_GOODS_USE_NG_HERE, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN8:
	TXA
	AND #$0003
	BEQ @UNKNOWN10
	CMP #1
	BEQ @UNKNOWN10
	CMP #2
	BEQ @UNKNOWN11
	CMP #3
	BEQL @UNKNOWN14
	JMP @UNKNOWN18
@UNKNOWN10:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL07
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	OPTIMIZED_ADD battle_action::description_text_pointer
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN11:
	JSR UNKNOWN_C1AD7D
	TAX
	LDA @LOCAL06
	STA @VIRTUAL02
	TXA
	CMP @VIRTUAL02
	BNE @UNKNOWN13
	LDA @LOCAL06
	CMP #ITEM::BICYCLE
	BNE @UNKNOWN12
	JSL UNKNOWN_C03C4B
	CMP #0
	BEQ @UNKNOWN12
	LOADPTR MSG_SYS_BICYCLE_ATARI_HERE, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN12:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL07
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	OPTIMIZED_ADD battle_action::description_text_pointer
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN13:
	LOADPTR MSG_SYS_GOODS_USE_NG_HERE, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	JMP @UNKNOWN18
@UNKNOWN14:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL07
	JSR UNKNOWN_C1AD42
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #1
	BEQ @UNKNOWN15
	CMP #3
	BNE @UNKNOWN16
@UNKNOWN15:
	LOADPTR NPC_CONFIG_TABLE, @VIRTUAL0A
	LDA CURRENT_TPT_ENTRY
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(npc_config)
	CLC
	ADC #npc_config::text_pointer2
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
@UNKNOWN16:
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	MOVE_INT @LOCAL08, @VIRTUAL06
	CMP @VIRTUAL0A+2
	BNE @UNKNOWN17
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
@UNKNOWN17:
	BNE @UNKNOWN18
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	OPTIMIZED_ADD battle_action::description_text_pointer
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
@UNKNOWN18:
	LDA @LOCAL09
	STA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL07
	STA @VIRTUAL02
	BEQ @UNKNOWN20
	LDX @VIRTUAL04
	LDY #item::effect
	LDA [@LOCAL05],Y
	JSR DETERMINE_TARGETTING
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL00
	AND #$00FF
	BNE @UNKNOWN19
	LDA #0
	JMP @UNKNOWN43
@UNKNOWN19:
	LDY #item::flags
	LDA [@LOCAL05],Y
	AND #$00FF
	AND #ITEM_FLAGS::CONSUMED_ON_USE
	BEQ @UNKNOWN20
	LDX @LOCAL0A
	LDA @VIRTUAL04
	JSR REMOVE_ITEM_FROM_INVENTORY
@UNKNOWN20:
	LDA #WINDOW::INVENTORY_MENU
	JSR CLOSE_WINDOW
	LDA #WINDOW::INVENTORY
	JSR CLOSE_WINDOW
	LDX #.SIZEOF(char_struct::name)
	LDA @VIRTUAL04
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR UNKNOWN_C1AC4A
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL01
	JSR UNKNOWN_C1ACF8
	.A16
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
.IF .DEFINED(JPN)
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	JSR SET_WORKING_MEMORY
.IF .DEFINED(JPN)
	MOVE_INT1632 @LOCAL0A, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	MOVE_INT1632 @LOCAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	JSR SET_ARGUMENT_MEMORY
	LDA @VIRTUAL00
	AND #$00FF
	TAY
	CPY #>-1
	BEQ @UNKNOWN21
	LDX #.SIZEOF(char_struct::name)
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	JSR UNKNOWN_C1ACA1
@UNKNOWN21:
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	MOVE_INT @LOCAL08, @VIRTUAL06
	CMP @VIRTUAL0A+2
	BNE @UNKNOWN22
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
@UNKNOWN22:
	BNE @UNKNOWN23
	LOADPTR MSG_SYS_GOODS_USE_NG, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
@UNKNOWN23:
	LDA @VIRTUAL02
	BEQL @UNKNOWN41
	LOADPTR BATTLE_ACTION_TABLE, @LOCAL03
	MOVE_INT @LOCAL05, @VIRTUAL0A
	LDA #item::effect
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @LOCAL02
	LDA @VIRTUAL0A+2
	STA @LOCAL02+2
	MOVE_INT @LOCAL03, @VIRTUAL06
	LDA [@VIRTUAL0A]
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	CLC
	ADC #battle_action::battle_function_pointer
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQL @UNKNOWN41
	LDA #.LOWORD(BATTLERS_TABLE)
	STA CURRENT_ATTACKER
	TAX
	LDA @LOCAL09
	STA @VIRTUAL04
	JSL BATTLE_INIT_PLAYER_STATS
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL01
	LDX CURRENT_ATTACKER
	STA __BSS_START__ + battler::current_action_argument,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL0A
	SEP #PROC_FLAGS::ACCUM8
	LDX CURRENT_ATTACKER
	STA __BSS_START__ + battler::action_item_slot,X
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @LOCAL08, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	SEP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL01
	JSR UNKNOWN_C1ACF8
	.A16
	LDX #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler)
	STX CURRENT_TARGET
	LDA @VIRTUAL00
	AND #$00FF
	TAY
	CPY #>-1
	BNEL @UNKNOWN36
	LDY #0
	STY @LOCAL06
	JMP @UNKNOWN33
@UNKNOWN28:
	TYA
	CLC
.IF .DEFINED(JPN)
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC #game_state::party_members
.ELSE
	ADC #.LOWORD(GAME_STATE) + game_state::party_members
.ENDIF
	STA @VIRTUAL02
	LDX #.SIZEOF(char_struct::name)
	STX @LOCAL01
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	.A16
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	LDX @LOCAL01
	JSR UNKNOWN_C1ACA1
	LDX CURRENT_TARGET
	STX @LOCAL01
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	AND #$00FF
	LDX @LOCAL01
	JSL BATTLE_INIT_PLAYER_STATS
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL0A
	LDY #item::effect
	LDA [@LOCAL05],Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	CLC
	ADC #8
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
	LDA #0
	STA @LOCAL0A
	BRA @UNKNOWN30
@UNKNOWN29:
	LDA @LOCAL0A
	STA @VIRTUAL02
	LDY @LOCAL06
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::afflictions
	CLC
	ADC @VIRTUAL02
	PHA
	LDA @LOCAL0A
	CLC
	ADC CURRENT_TARGET
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__ + battler::afflictions,X
	PLX
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL0A
	INC
	STA @LOCAL0A
@UNKNOWN30:
	STA @VIRTUAL02
	LDA #7
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN29
	LDY @LOCAL06
	INY
	STY @LOCAL06
@UNKNOWN33:
	STY @VIRTUAL02
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC @VIRTUAL02
	JUMPGTS @UNKNOWN28
	JMP @UNKNOWN40
@UNKNOWN36:
	TYA
	JSL BATTLE_INIT_PLAYER_STATS
	MOVE_INT @LOCAL02, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battle_action)
	CLC
	ADC #battle_action::battle_function_pointer
	PHA
	MOVE_INT @LOCAL03, @VIRTUAL0A
	PLA
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
	LDA #0
	STA @LOCAL0A
	BRA @UNKNOWN38
@UNKNOWN37:
	LDA @LOCAL0A
	STA @VIRTUAL02
	LDA @VIRTUAL00
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC @VIRTUAL02
	PHA
	LDA @LOCAL0A
	CLC
	ADC CURRENT_TARGET
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__+battler::afflictions,X
	PLX
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL0A
	INC
	STA @LOCAL0A
@UNKNOWN38:
	STA @VIRTUAL02
	LDA #7
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN37
@UNKNOWN40:
	JSL UNKNOWN_C3EE4D
	BRA @UNKNOWN42
@UNKNOWN41:
	MOVE_INT @LOCAL08, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
@UNKNOWN42:
	LDA #WINDOW::TEXT_STANDARD
	JSR CLOSE_WINDOW
	LDA #TRUE
@UNKNOWN43:
	END_C_FUNCTION
