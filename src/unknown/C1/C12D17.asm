
<<<<<<< HEAD
UNKNOWN_C12D17:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL04
	LDA HPPP_METER_FLIPOUT_MODE
=======
UNKNOWN_C12D17: ;$C12D17
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STA $04
	LDA UNKNOWN_7E9698
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNE @UNKNOWN4
	LDA $04
	BEQ @UNKNOWN4
	LDA #$0000
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	ASL
	TAY
	STY $10
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $0E
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
<<<<<<< HEAD
	LDY @LOCAL01
	STA HPPP_METER_FLIPOUT_MODE_HP_BACKUPS,Y
=======
	LDY $10
	STA UNKNOWN_7E969A,Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #999
	STA __BSS_START__,X
	LDA $0E
	TAX
	LDA #999
<<<<<<< HEAD
	STA PARTY_CHARACTERS+char_struct::current_hp,X
	LDA @LOCAL00
=======
	STA CHAR_STRUCT+char_struct::current_hp,X
	LDA $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::current_pp_target
	TAX
	LDA __BSS_START__,X
<<<<<<< HEAD
	STA HPPP_METER_FLIPOUT_MODE_PP_BACKUPS,Y
	LDA #0
=======
	STA UNKNOWN_7E96A2,Y
	LDA #$0000
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA __BSS_START__,X
	LDA $0E
	TAX
<<<<<<< HEAD
	STZ PARTY_CHARACTERS+char_struct::current_pp,X
	INC @VIRTUAL02
=======
	STZ CHAR_STRUCT+char_struct::current_pp,X
	INC $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN1:
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN0
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA HPPP_METER_FLIPOUT_MODE
	BEQ @UNKNOWN8
	LDA $04
	BNE @UNKNOWN8
	LDA #$0000
	STA $10
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA $10
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	LDA $10
	ASL
	TAX
<<<<<<< HEAD
	LDA HPPP_METER_FLIPOUT_MODE_HP_BACKUPS,X
	STA PARTY_CHARACTERS+char_struct::current_hp_target,Y
	LDA HPPP_METER_FLIPOUT_MODE_PP_BACKUPS,X
	STA PARTY_CHARACTERS+char_struct::current_pp_target,Y
	LDA @LOCAL01
=======
	LDA UNKNOWN_7E969A,X
	STA CHAR_STRUCT+char_struct::current_hp_target,Y
	LDA UNKNOWN_7E96A2,X
	STA CHAR_STRUCT+char_struct::current_pp_target,Y
	LDA $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	INC
	STA $10
@UNKNOWN6:
	STA $02
	LDA #PLAYER_CHAR_COUNT
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN5
@UNKNOWN8:
<<<<<<< HEAD
	LDA @VIRTUAL04
	STA HPPP_METER_FLIPOUT_MODE
=======
	LDA $04
	STA UNKNOWN_7E9698
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL RESUME_MUSIC
	PLD
	RTS
