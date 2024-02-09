
UNKNOWN_C04FFE: ;$C04FFE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA GAME_STATE + game_state::unknownB0
	CMP #$0002
	BNE @UNKNOWN0
	LDA #$0001
	JMP @UNKNOWN28
@UNKNOWN0:
	LDA OVERWORLD_STATUS_SUPPRESSION
	BEQ @UNKNOWN1
	LDA #$0001
	JMP @UNKNOWN28
@UNKNOWN1:
	STZ $16
	STZ $14
	LDA #$0000
	STA $04
	STA $02
	STA $12
	JMP @UNKNOWN23
@UNKNOWN2:
	LDA __BSS_START__+game_state::player_controlled_party_members,X
	AND #$00FF
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	STA CURRENT_PARTY_MEMBER_TICK
	TAX
	LDA __BSS_START__+char_struct::afflictions,X
	AND #$00FF
	TAY
	STY $10
	CPY #$0001
	BEQL @UNKNOWN22
	CPY #$0002
	BEQL @UNKNOWN22
	CPY #$0005
	BNE @UNKNOWN7
	LDA $02
	ASL
	CLC
	ADC #.LOWORD(OVERWORLD_DAMAGE_COUNTDOWN_FRAMES)
	TAX
	LDA __BSS_START__,X
	BEQ @UNKNOWN6
	DEC
	STA __BSS_START__,X
	BNEL @UNKNOWN14
<<<<<<< HEAD
	INC @VIRTUAL04
	LDA CURRENT_PARTY_MEMBER_TICK
=======
	INC $04
	LDA UNKNOWN_7E4DC6
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #char_struct::current_hp
	TAX
	LDA __BSS_START__,X
	SEC
	SBC #$000A
	STA __BSS_START__,X
	LDA CURRENT_PARTY_MEMBER_TICK
	CLC
	ADC #char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	SEC
	SBC #$000A
	STA __BSS_START__,X
	LDA $02
	JSR UNKNOWN_C04F9F
	JMP @UNKNOWN14
@UNKNOWN6:
	LDA #$0078
	STA __BSS_START__,X
	JMP @UNKNOWN14
@UNKNOWN7:
	CPY #$0004
	BCC @UNKNOWN8
	CPY #$0007
	BLTEQ @UNKNOWN9
@UNKNOWN8:
	LDA GAME_STATE+game_state::trodden_tile_type
	AND #$000C
	CMP #$000C
	BNEL @UNKNOWN14
@UNKNOWN9:
	LDA $02
	ASL
	CLC
	ADC #.LOWORD(OVERWORLD_DAMAGE_COUNTDOWN_FRAMES)
	TAX
	LDA __BSS_START__,X
	BEQ @UNKNOWN12
	DEC
	STA __BSS_START__,X
	BNE @UNKNOWN14
	INC $04
	CPY #$0004
	BNE @UNKNOWN10
	LDA CURRENT_PARTY_MEMBER_TICK
	CLC
	ADC #char_struct::current_hp
	TAX
	LDA __BSS_START__,X
	SEC
	SBC #$000A
	STA __BSS_START__,X
	LDA CURRENT_PARTY_MEMBER_TICK
	CLC
	ADC #char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	SEC
	SBC #$000A
	STA __BSS_START__,X
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA CURRENT_PARTY_MEMBER_TICK
	CLC
	ADC #char_struct::current_hp
	TAX
	LDA __BSS_START__,X
	DEC
	DEC
	STA __BSS_START__,X
	LDA CURRENT_PARTY_MEMBER_TICK
	CLC
	ADC #char_struct::current_hp_target
	TAX
	LDA __BSS_START__,X
	DEC
	DEC
	STA __BSS_START__,X
@UNKNOWN11:
	LDA $02
	JSR UNKNOWN_C04F9F
	BRA @UNKNOWN14
@UNKNOWN12:
	CPY #$0004
	BNE @UNKNOWN13
	LDA #$0078
	STA __BSS_START__,X
	BRA @UNKNOWN14
@UNKNOWN13:
	LDA #$00F0
	STA __BSS_START__,X
@UNKNOWN14:
	LDX CURRENT_PARTY_MEMBER_TICK
	LDA __BSS_START__+char_struct::current_hp,X
	CMP #$8000
	BGT @UNKNOWN16
	CMP #$0000
	BNE @UNKNOWN21
@UNKNOWN16:
	LDY $10
	CPY #$0001
	BEQ @UNKNOWN22
	LDA #$0000
	STA $0E
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA $0E
	CLC
	ADC CURRENT_PARTY_MEMBER_TICK
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ __BSS_START__+char_struct::afflictions,X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	INC
	STA $0E
@UNKNOWN18:
	STA $02
	LDA #$0006
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN17
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	LDX CURRENT_PARTY_MEMBER_TICK
=======
	LDA #$0001
	LDX UNKNOWN_7E4DC6
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA a:char_struct::afflictions,X
	LDX CURRENT_PARTY_MEMBER_TICK
	REP #PROC_FLAGS::ACCUM8
	STZ a:char_struct::current_hp_target,X
	LDX CURRENT_PARTY_MEMBER_TICK
	STZ a:char_struct::current_hp,X
	LDX CURRENT_PARTY_MEMBER_TICK
	LDA a:char_struct::unknown59,X
	ASL
	TAX
	LDA #$0010
	STA ENTITY_SCRIPT_VAR3_TABLE,X
	INC $16
	BRA @UNKNOWN22
@UNKNOWN21:
	LDY $10
	CPY #$0002
	BEQ @UNKNOWN22
	CLC
	ADC $14
	STA $14
@UNKNOWN22:
	LDA $12
	STA $02
	INC $02
	LDA $02
	STA $12
@UNKNOWN23:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA __BSS_START__+game_state::unknown96,X
	AND #$00FF
	BEQ @UNKNOWN25
	AND #$00FF
	CLC
	SBC #$0004
	JUMPLTEQS @UNKNOWN2
@UNKNOWN25:
	LDA $04
	BEQ @UNKNOWN26
	JSR UNKNOWN_C04F60
@UNKNOWN26:
	LDA $16
	BEQ @UNKNOWN27
	STZ PARTY_MEMBERS_ALIVE_OVERWORLD
	JSL UPDATE_PARTY
	JSL UNKNOWN_C07B52
	JSL UNKNOWN_C09451
@UNKNOWN27:
	LDA $14
@UNKNOWN28:
	PLD
	RTL
