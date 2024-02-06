CHOOSE_TARGET:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;NEAR battler*
	END_STACK_VARS
	STA $02
	LDX #$0000
	STX $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA BACK_ROW_BATTLERS,X
	AND #$00FF
	JSL CHECK_IF_VALID_TARGET
	CMP #$0000
	BNE @UNKNOWN4
	LDX $0E
	INX
	STX $0E
@UNKNOWN1:
	CPX NUM_BATTLERS_IN_BACK_ROW
	BCC @UNKNOWN0
	LDX #$0000
	STX $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA FRONT_ROW_BATTLERS,X
	AND #$00FF
	JSL CHECK_IF_VALID_TARGET
	CMP #$0000
	BNE @UNKNOWN4
	LDX $0E
	INX
	STX $0E
@UNKNOWN3:
	CPX NUM_BATTLERS_IN_FRONT_ROW
	BCC @UNKNOWN2
	JSL UNKNOWN_C2F917
@UNKNOWN4:
	LDX $02
	LDA a:battler::current_action,X
	OPTIMIZED_MULT $04, 12
	TAX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	BNE @UNKNOWN6
	LDX $02
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN5
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::action_targetting,X
	BRA @UNKNOWN8
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	LDX $02
	STA a:battler::action_targetting,X
	BRA @UNKNOWN8
@UNKNOWN6:
	.A16
	LDX $02
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN7
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	LDX $02
	STA a:battler::action_targetting,X
	BRA @UNKNOWN8
@UNKNOWN7:
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::action_targetting,X
@UNKNOWN8:
	REP #PROC_FLAGS::ACCUM8
	LOADPTR BATTLE_ACTION_TABLE, $06
	LDX $02
	INX
	INX
	INX
	INX
	STX $0E
	LDA __BSS_START__,X ;battler.current_action
	OPTIMIZED_MULT $04, 12
	INC
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	BEQ @UNKNOWN11
	CMP #$0001
	BEQ @UNKNOWN13
	CMP #$0002
	BEQ @UNKNOWN13
	CMP #$0003
	BEQL @UNKNOWN22
	CMP #$0004
	BEQL @UNKNOWN26
	JMP @UNKNOWN27
@UNKNOWN11:
	LDA $02
	CLC
	ADC #battler::action_targetting
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	ORA #$0001
	STA __BSS_START__,X
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN12
	LDY #.SIZEOF(battler)
	LDA $02
	SEC
	SBC #.LOWORD(BATTLERS_TABLE)
	JSL DIVISION16S_DIVISOR_POSITIVE
	TAX
	LDA $02
	JSL UNKNOWN_C4A228
	JMP @UNKNOWN27
@UNKNOWN12:
	LDY #.SIZEOF(battler)
	LDA $02
	SEC
	SBC #.LOWORD(BATTLERS_TABLE)
	JSL DIVISION16S_DIVISOR_POSITIVE
	SEP #PROC_FLAGS::ACCUM8
	INC
	LDX $02
	STA a:battler::current_target,X
	JMP @UNKNOWN27
@UNKNOWN13:
	.A16
	LDA $02
	CLC
	ADC #battler::action_targetting
	TAY
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	ORA #$0001
	STA __BSS_START__,Y
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN18
	LDX $0E
	LDA __BSS_START__,X ;battler.current_action
	OPTIMIZED_MULT $04, 12
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	BNE @UNKNOWN16
	JSL FIND_TARGETTABLE_NPC
	SEP #PROC_FLAGS::ACCUM8
	LDX $02
	STA a:battler::current_target,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN27
@UNKNOWN14:
	JSL RAND
	SEP #PROC_FLAGS::ACCUM8
	AND #$0007
	INC
	LDX $02
	STA a:battler::current_target,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	DEC
	JSL CHECK_IF_VALID_TARGET
	CMP #$0000
	BNEL @UNKNOWN27
	BRA @UNKNOWN14
@UNKNOWN16:
	LDA $02
	JSL UNKNOWN_C24434
	TAX
	JSL CHECK_IF_VALID_TARGET
	CMP #$0000
	BNEL @UNKNOWN27
	BRA @UNKNOWN16
@UNKNOWN18:
	LDX $0E
	LDA __BSS_START__,X ;battler.current_action
	OPTIMIZED_MULT $04, 12
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	BNE @UNKNOWN21
@UNKNOWN19:
	LDA $02
	JSL UNKNOWN_C24434
	TAX
	JSL CHECK_IF_VALID_TARGET
	CMP #$0000
	BNEL @UNKNOWN27
	BRA @UNKNOWN19
@UNKNOWN21:
	JSL RAND
	SEP #PROC_FLAGS::ACCUM8
	AND #$0007
	INC
	LDX $02
	STA a:battler::current_target,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	DEC
	JSL CHECK_IF_VALID_TARGET
	CMP #$0000
	BEQ @UNKNOWN21
	BRA @UNKNOWN27
@UNKNOWN22:
	LDA $02
	CLC
	ADC #battler::action_targetting
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	ORA #$0002
	STA __BSS_START__,X
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN23
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $02
	STA a:battler::current_target,X
	BRA @UNKNOWN27
@UNKNOWN23:
	LDA NUM_BATTLERS_IN_BACK_ROW
	BNE @UNKNOWN24
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0002
	LDX $02
	STA a:battler::current_target,X
	BRA @UNKNOWN27
@UNKNOWN24:
	LDA NUM_BATTLERS_IN_FRONT_ROW
	BNE @UNKNOWN25
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	LDX $02
	STA a:battler::current_target,X
	BRA @UNKNOWN27
@UNKNOWN25:
	JSL RAND
	SEP #PROC_FLAGS::ACCUM8
	AND #$0001
	INC
	LDX $02
	STA a:battler::current_target,X
	BRA @UNKNOWN27
@UNKNOWN26:
	.A16
	LDA $02
	CLC
	ADC #battler::action_targetting
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	ORA #$0004
	STA __BSS_START__,X
	LDA #$0001
	LDX $02
	STA a:battler::current_target,X
@UNKNOWN27:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
