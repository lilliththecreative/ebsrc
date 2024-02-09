
HP_PP_ROLLER: ;$C2109F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA UNKNOWN_7E9697
	AND #$00FF
	BNEL @UNKNOWN30
	LDA UNKNOWN_7E0002
	AND #$00FF
	AND #$0003
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	BEQL @UNKNOWN30
	AND #$00FF
	STA $12
	CLC
	SBC #$0004
	JUMPGTS @UNKNOWN30
	LDA $12
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $10
	LDA UNKNOWN_7E9698
	BNE @UNKNOWN4
	LDA $10
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	STX $0E
	LDA __BSS_START__,X
	AND #$0001
	BEQL @UNKNOWN14
@UNKNOWN4:
	LDA $10
	TAX
	LDY a:char_struct::current_hp,X
	TAX
	LDA a:char_struct::current_hp_target,X
	STA $02
	TYA
	CMP $02
	BCS @UNKNOWN9
	LDA $10
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	TXY
	STY $0E
	LDA UNKNOWN_7E9696
	AND #$00FF
	BNE @UNKNOWN5
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN6
@UNKNOWN5:
	MOVE_INT_CONSTANT $00064000, $06
	BRA @UNKNOWN7
@UNKNOWN6:
	JSR UNKNOWN_C20F58
@UNKNOWN7:
	MOVE_INT $06, $0A
	LDY $0E
	MOVE_INT_YPTRSRC __BSS_START__, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $10
	CLC
	ADC #char_struct::current_hp
	TAX
	LDA __BSS_START__,X
	CMP $02
	BCCL @UNKNOWN15
	LDA $02
	STA __BSS_START__,X
	LDA $10
	TAX
	LDA #$0001
	STA a:char_struct::current_hp_fraction,X
	JMP @UNKNOWN15
@UNKNOWN9:
	TYA
	CMP $02
	BNE @UNKNOWN10
	LDA $10
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	LDA __BSS_START__,X
	CMP #$0001
	BNE @UNKNOWN10
	LDA #$0000
	STA __BSS_START__,X
	JMP @UNKNOWN15
@UNKNOWN10:
	LDA $10
	CLC
	ADC #char_struct::current_hp_fraction
	TAX
	TXY
	STY $0E
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN11
	MOVE_INT_CONSTANT $00064000, $06
	BRA @UNKNOWN12
@UNKNOWN11:
	JSR UNKNOWN_C20F58
@UNKNOWN12:
	MOVE_INT $06, $0A
	LDY $0E
	MOVE_INT_YPTRSRC __BSS_START__, $06
	SEC
	SUB_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $10
	TAX
	LDY a:char_struct::current_hp,X
	TYA
	CMP $02
	BCC @UNKNOWN13
	CPY #1000
	BLTEQ @UNKNOWN15
@UNKNOWN13:
	LDA $10
	TAX
	LDA $02
	STA a:char_struct::current_hp,X
	LDA $10
	TAX
	LDA #$0001
	STA a:char_struct::current_hp_fraction,X
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA $10
	PHA
	TAX
	LDA a:char_struct::current_hp,X
	PLX
	CMP a:char_struct::current_hp_target,X
	BEQ @UNKNOWN15
	LDA #$0001
	LDX $0E
	STA __BSS_START__,X
@UNKNOWN15:
	LDA UNKNOWN_7E9698
	BNE @UNKNOWN16
	LDA $10
	CLC
	ADC #$0048
	TAX
	STX $0E
	LDA __BSS_START__,X
	AND #$0001
	BEQL @UNKNOWN25
@UNKNOWN16:
	LDA $10
	TAX
	LDY a:char_struct::current_pp,X
	TAX
	LDA a:char_struct::current_pp_target,X
	STA $02
	TYA
	CMP $02
	BCS @UNKNOWN20
	LDA $10
	CLC
	ADC #$0048
	TAX
	TXY
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN17
	MOVE_INT_CONSTANT $00064000, $06
	BRA @UNKNOWN18
@UNKNOWN17:
	MOVE_INT_CONSTANT $00019000, $06
@UNKNOWN18:
	MOVE_INT $06, $0A
	MOVE_INT_YPTRSRC __BSS_START__, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $10
	CLC
	ADC #$004A
	TAX
	LDA __BSS_START__,X
	CMP $02
	BCCL @UNKNOWN26
	LDA $02
	STA __BSS_START__,X
	LDA $10
	TAX
	LDA #$0001
	STA __BSS_START__+72,X
	JMP @UNKNOWN26
@UNKNOWN20:
	TYA
	CMP $02
	BNE @UNKNOWN21
	LDA $10
	CLC
	ADC #$0048
	TAX
	LDA __BSS_START__,X
	CMP #$0001
	BNE @UNKNOWN21
	LDA #$0000
	STA __BSS_START__,X
	JMP @UNKNOWN26
@UNKNOWN21:
	LDA $10
	CLC
	ADC #$0048
	TAX
	TXY
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN22
	MOVE_INT_CONSTANT $00064000, $06
	BRA @UNKNOWN23
@UNKNOWN22:
	MOVE_INT_CONSTANT $00019000, $06
@UNKNOWN23:
	MOVE_INT $06, $0A
	MOVE_INT_YPTRSRC __BSS_START__, $06
	SEC
	SUB_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $10
	TAX
	LDY a:char_struct::current_pp,X
	TYA
	CMP $02
	BCC @UNKNOWN24
	CPY #1000
	BLTEQ @UNKNOWN26
@UNKNOWN24:
	LDA $10
	TAX
	LDA $02
	STA a:char_struct::current_pp,X
	LDA $10
	TAX
	LDA #$0001
	STA __BSS_START__+72,X
	BRA @UNKNOWN26
@UNKNOWN25:
	LDA $10
	PHA
	TAX
	LDA a:char_struct::current_pp,X
	PLX
	CMP a:char_struct::current_pp_target,X
	BEQ @UNKNOWN26
	LDA #$0001
	LDX $0E
	STA __BSS_START__,X
@UNKNOWN26:
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN30
	LDA $10
	TAX
	LDY a:char_struct::current_hp,X
	CPY #$03E7
	BNE @UNKNOWN27
	TAX
	LDA #$0001
	STA a:char_struct::current_hp_target,X
	BRA @UNKNOWN28
@UNKNOWN27:
	CPY #$0001
	BNE @UNKNOWN28
	TAX
	LDA #$03E7
	STA a:char_struct::current_hp_target,X
@UNKNOWN28:
	LDA $10
	TAX
	LDY a:char_struct::current_pp,X
	CPY #$03E7
	BNE @UNKNOWN29
	TAX
	STZ a:char_struct::current_pp_target,X
	BRA @UNKNOWN30
@UNKNOWN29:
	CPY #$0000
	BNE @UNKNOWN30
	TAX
	LDA #$03E7
	STA a:char_struct::current_pp_target,X
@UNKNOWN30:
	PLD
	RTL
