
UNKNOWN_C12D17:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL04
	LDA UNKNOWN_7E9698
	BNE @UNKNOWN4
	LDA @VIRTUAL04
	BEQ @UNKNOWN4
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @VIRTUAL02
	ASL
	TAY
	STY @LOCAL01
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA @LOCAL00
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	LDY @LOCAL01
	STA UNKNOWN_7E969A,Y
	LDA #999
	STA __BSS_START__,X
	LDA @LOCAL00
	TAX
	LDA #999
	STA CHAR_STRUCT+char_struct::current_hp,X
	LDA @LOCAL00
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::current_pp_target
	TAX
	LDA __BSS_START__,X
	STA UNKNOWN_7E96A2,Y
	LDA #0
	STA __BSS_START__,X
	LDA @LOCAL00
	TAX
	STZ CHAR_STRUCT+char_struct::current_pp,X
	INC @VIRTUAL02
@UNKNOWN1:
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN0
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA UNKNOWN_7E9698
	BEQ @UNKNOWN8
	LDA @VIRTUAL04
	BNE @UNKNOWN8
	LDA #0
	STA @LOCAL01
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA @LOCAL01
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	LDA @LOCAL01
	ASL
	TAX
	LDA UNKNOWN_7E969A,X
	STA CHAR_STRUCT+char_struct::current_hp_target,Y
	LDA UNKNOWN_7E96A2,X
	STA CHAR_STRUCT+char_struct::current_pp_target,Y
	LDA @LOCAL01
	INC
	STA @LOCAL01
@UNKNOWN6:
	STA @VIRTUAL02
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN5
@UNKNOWN8:
	LDA @VIRTUAL04
	STA UNKNOWN_7E9698
	JSL RESUME_MUSIC
	END_C_FUNCTION
