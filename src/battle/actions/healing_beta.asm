
BTLACT_HEALING_B: ;$C29B7A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA CURRENT_TARGET
	CLC
	ADC #$001D
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP #$0005
	BEQ @UNKNOWN0
	CMP #$0004
	BEQ @UNKNOWN1
	BRA @UNKNOWN2
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_MODOKU_OFF
	BRA @UNKNOWN5
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIMOCHI_OFF
	BRA @UNKNOWN5
@UNKNOWN2:
	LDA CURRENT_TARGET
	CLC
	ADC #$001F
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP #$0002
	BNE @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_NAMIDA_OFF
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA CURRENT_TARGET
	CLC
	ADC #$0020
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN4
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_HEN_OFF
	BRA @UNKNOWN5
@UNKNOWN4:
	JSL BTLACT_HEALING_A
@UNKNOWN5:
	PLD
	RTL
