
BTLACT_SPY: ;$C28770
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	LOADPTR TEXT_BLOCK_EF69EA, $0E
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::offense,X
	STA $06
	STZ $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	JSL DISPLAY_TEXT_WAIT
	LOADPTR TEXT_BLOCK_EF69FF, $0E
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::defense,X
	STA $06
	STZ $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	JSL DISPLAY_TEXT_WAIT
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::fire_resist,X
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6A0D
@UNKNOWN0:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::freeze_resist,X
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN1
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6A24
@UNKNOWN1:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::flash_resist,X
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN2
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6A3C
@UNKNOWN2:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::paralysis_resist,X
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN3
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6A54
@UNKNOWN3:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::hypnosis_resist,X
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN4
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6A6C
@UNKNOWN4:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::brainshock_resist,X
	AND #$00FF
	CMP #$00FF
	BNE @UNKNOWN5
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6A7F
@UNKNOWN5:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN6
	LDA #$0003
	JSL FIND_INVENTORY_SPACE2
	CMP #$0000
	BEQ @UNKNOWN6
	LDA .LOWORD(ITEM_DROPPED)
	BEQ @UNKNOWN6
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(ITEM_DROPPED)
	JSL REDIRECT_C1ACF8
	.A16
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF7DD5
	STZ .LOWORD(ITEM_DROPPED)
@UNKNOWN6:
	PLD
	RTL