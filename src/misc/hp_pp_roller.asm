
HP_PP_ROLLER:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA UNKNOWN_7E9697
	AND #$00FF
	BNEL @UNKNOWN30
	LDA UNKNOWN_7E0002
	AND #$00FF
	AND #$0003
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
.ELSE
	TAX
	LDA GAME_STATE + game_state::party_members,X
.ENDIF
	AND #$00FF
	BEQL @UNKNOWN30
	AND #$00FF
	STA @LOCAL02
	CLC
	SBC #4
	JUMPGTS @UNKNOWN30
	LDA @LOCAL02
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA @LOCAL01
	LDA UNKNOWN_7E9698
	BNE @UNKNOWN4
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	STX @LOCAL00
	LDA __BSS_START__,X
	AND #$0001
	BEQL @UNKNOWN14
@UNKNOWN4:
	LDA @LOCAL01
	TAX
	LDY a:char_struct::current_hp,X
	TAX
	LDA a:char_struct::current_hp_target,X
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BCS @UNKNOWN9
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	TXY
	STY @LOCAL00
	LDA UNKNOWN_7E9696
	AND #$00FF
	BNE @UNKNOWN5
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN6
@UNKNOWN5:
	MOVE_INT_CONSTANT $00064000, @VIRTUAL06
	BRA @UNKNOWN7
@UNKNOWN6:
	JSR UNKNOWN_C20F58
@UNKNOWN7:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDY @LOCAL00
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_hp
	TAX
	LDA __BSS_START__,X
	CMP @VIRTUAL02
	BCCL @UNKNOWN15
	LDA @VIRTUAL02
	STA __BSS_START__,X
	LDA @LOCAL01
	TAX
	LDA #1
	STA a:char_struct::current_hp_fraction,X
	JMP @UNKNOWN15
@UNKNOWN9:
	TYA
	CMP @VIRTUAL02
	BNE @UNKNOWN10
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	LDA __BSS_START__,X
	CMP #1
	BNE @UNKNOWN10
	LDA #0
	STA __BSS_START__,X
	JMP @UNKNOWN15
@UNKNOWN10:
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	TXY
	STY @LOCAL00
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN11
	MOVE_INT_CONSTANT $00064000, @VIRTUAL06
	BRA @UNKNOWN12
@UNKNOWN11:
	JSR UNKNOWN_C20F58
@UNKNOWN12:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDY @LOCAL00
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	SEC
	SUB_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL01
	TAX
	LDY a:char_struct::current_hp,X
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN13
	CPY #1000
	BLTEQ @UNKNOWN15
@UNKNOWN13:
	LDA @LOCAL01
	TAX
	LDA @VIRTUAL02
	STA a:char_struct::current_hp,X
	LDA @LOCAL01
	TAX
	LDA #1
	STA a:char_struct::current_hp_fraction,X
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA @LOCAL01
	PHA
	TAX
	LDA a:char_struct::current_hp,X
	PLX
	CMP a:char_struct::current_hp_target,X
	BEQ @UNKNOWN15
	LDA #1
	LDX @LOCAL00
	STA __BSS_START__,X
@UNKNOWN15:
	LDA UNKNOWN_7E9698
	BNE @UNKNOWN16
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_pp_fraction
	TAX
	STX @LOCAL00
	LDA __BSS_START__,X
	AND #$0001
	BEQL @UNKNOWN25
@UNKNOWN16:
	LDA @LOCAL01
	TAX
	LDY a:char_struct::current_pp,X
	TAX
	LDA a:char_struct::current_pp_target,X
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BCS @UNKNOWN20
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_pp_fraction
	TAX
	TXY
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN17
	MOVE_INT_CONSTANT $00064000, @VIRTUAL06
	BRA @UNKNOWN18
@UNKNOWN17:
	MOVE_INT_CONSTANT $00019000, @VIRTUAL06
@UNKNOWN18:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_pp
	TAX
	LDA __BSS_START__,X
	CMP @VIRTUAL02
	BCCL @UNKNOWN26
	LDA @VIRTUAL02
	STA __BSS_START__,X
	LDA @LOCAL01
	TAX
	LDA #1
	STA __BSS_START__ + char_struct::current_pp_fraction,X
	JMP @UNKNOWN26
@UNKNOWN20:
	TYA
	CMP @VIRTUAL02
	BNE @UNKNOWN21
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_pp_fraction
	TAX
	LDA __BSS_START__,X
	CMP #1
	BNE @UNKNOWN21
	LDA #0
	STA __BSS_START__,X
	JMP @UNKNOWN26
@UNKNOWN21:
	LDA @LOCAL01
	CLC
	ADC #char_struct::current_pp_fraction
	TAX
	TXY
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN22
	MOVE_INT_CONSTANT $00064000, @VIRTUAL06
	BRA @UNKNOWN23
@UNKNOWN22:
	MOVE_INT_CONSTANT $00019000, @VIRTUAL06
@UNKNOWN23:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	SEC
	SUB_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL01
	TAX
	LDY a:char_struct::current_pp,X
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN24
	CPY #1000
	BLTEQ @UNKNOWN26
@UNKNOWN24:
	LDA @LOCAL01
	TAX
	LDA @VIRTUAL02
	STA a:char_struct::current_pp,X
	LDA @LOCAL01
	TAX
	LDA #1
	STA __BSS_START__ + char_struct::current_pp_fraction,X
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA @LOCAL01
	PHA
	TAX
	LDA a:char_struct::current_pp,X
	PLX
	CMP a:char_struct::current_pp_target,X
	BEQ @UNKNOWN26
	LDA #1
	LDX @LOCAL00
	STA __BSS_START__,X
@UNKNOWN26:
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN30
	LDA @LOCAL01
	TAX
	LDY a:char_struct::current_hp,X
	CPY #999
	BNE @UNKNOWN27
	TAX
	LDA #1
	STA a:char_struct::current_hp_target,X
	BRA @UNKNOWN28
@UNKNOWN27:
	CPY #1
	BNE @UNKNOWN28
	TAX
	LDA #999
	STA a:char_struct::current_hp_target,X
@UNKNOWN28:
	LDA @LOCAL01
	TAX
	LDY a:char_struct::current_pp,X
	CPY #999
	BNE @UNKNOWN29
	TAX
	STZ a:char_struct::current_pp_target,X
	BRA @UNKNOWN30
@UNKNOWN29:
	CPY #0
	BNE @UNKNOWN30
	TAX
	LDA #999
	STA a:char_struct::current_pp_target,X
@UNKNOWN30:
	END_C_FUNCTION
