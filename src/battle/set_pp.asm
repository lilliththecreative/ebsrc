
SET_PP:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;NEAR battler* target
	STACK_RESERVE_PARAM_INT16 ;int pp
	END_STACK_VARS
	TXY
	STY @LOCAL01
	TAX
	LDA a:battler::pp_max,X
	STA @LOCAL00
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN0
	LDA @LOCAL00
	TAY
	STY @LOCAL01
@UNKNOWN0:
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN2
	LDA a:battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN1
	TYA
	STA a:battler::pp_target,X
	LDA a:battler::row,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDY @LOCAL01
	TYA
	STA CHAR_STRUCT+char_struct::current_pp_target,X
	BRA @UNKNOWN3
@UNKNOWN1:
	TYA
	STA a:battler::pp,X
	TYA
	STA a:battler::pp_target,X
	BRA @UNKNOWN3
@UNKNOWN2:
	TYA
	STA a:battler::pp,X
	TYA
	STA a:battler::pp_target,X
@UNKNOWN3:
	END_C_FUNCTION
