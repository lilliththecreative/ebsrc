
UNKNOWN_C23E8A: ;$C23E8A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	TAY
	STY $14
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
.IF .DEFINED(USA)
	STZ PRINT_ATTACKER_ARTICLE
.ENDIF
	STZ_BADOPT @LOCAL00
	LDX #.SIZEOF(enemy_data::name) + 2
=======
	STZ UNKNOWN_7E5E77
	STZ $0E
	LDX #$001B
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(TARGET_NAME_BUFFER)
	JSL MEMSET16
<<<<<<< HEAD
	LDY @LOCAL02
	CPY NUM_BATTLERS_IN_FRONT_ROW
=======
	LDY $14
	CPY NUM_BATTLERS_IN_BACK_ROW
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BLTEQ @UNKNOWN0
	TYA
	SEC
	SBC NUM_BATTLERS_IN_FRONT_ROW
	TAX
	DEX
	LDA BACK_ROW_BATTLERS,X
	AND #$00FF
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	TYX
	DEX
	LDA FRONT_ROW_BATTLERS,X
	AND #$00FF
	STA $02
@UNKNOWN1:
	LDA $02
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAY
	STY $14
	LOADPTR ENEMY_CONFIGURATION_TABLE, $06
	LDA BATTLERS_TABLE + battler::id,Y
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	INC
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #.SIZEOF(enemy_data::name)
	LDA #.LOWORD(TARGET_NAME_BUFFER)
=======
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0019
	LDA #.LOWORD(UNKNOWN_7EA9B9)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR COPY_ENEMY_NAME
	TAX
	STX $12
	LDY $14
	LDA BATTLERS_TABLE+battler::the_flag,Y
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN2
	LDA BATTLERS_TABLE+76,Y
	JSL UNKNOWN_C2B66A
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	CMP #$0002
	BEQ @UNKNOWN3
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0050
	LDX $12
	STA __BSS_START__,X
	INX
	STX $14
	REP #PROC_FLAGS::ACCUM8
	LDA $02
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA BATTLERS_TABLE+battler::the_flag,X
	CLC
	ADC #$0070
	LDX $14
	STA __BSS_START__,X
<<<<<<< HEAD
.IF .DEFINED(USA)
	LDA #1
	STA PRINT_ATTACKER_ARTICLE
.ENDIF
=======
	LDA #$0001
	STA UNKNOWN_7E5E77
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN3:
	LDX #$001A
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(TARGET_NAME_BUFFER)
	JSL REDIRECT_C1AC4A
	LDA $02
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	LDA BATTLERS_TABLE + battler::id,X
<<<<<<< HEAD
	STA ATTACKER_ENEMY_ID
.ENDIF
	END_C_FUNCTION
=======
	STA UNKNOWN_7E9658
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
