
UNKNOWN_C23008:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX #.LOWORD(GAME_STATE) + game_state::party_npc_1
	STX @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	STA GAME_STATE+game_state::party_npc_1_id_copy
	REP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE+game_state::party_npc_1_hp
	STA GAME_STATE + game_state::party_npc_1_hp_copy
	LDY #.LOWORD(GAME_STATE) + game_state::party_npc_2
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,Y
	STA GAME_STATE + game_state::party_npc_2_id_copy
	REP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE+game_state::party_npc_2_hp
	STA GAME_STATE + game_state::party_npc_2_hp_copy
	LDA __BSS_START__,Y
	AND #$00FF
	JSL REMOVE_CHAR_FROM_PARTY
	LDX @LOCAL00
	LDA __BSS_START__,X
	AND #$00FF
	JSL REMOVE_CHAR_FROM_PARTY
	LDY #.LOWORD(GAME_STATE) + game_state::money_carried
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, GAME_STATE+game_state::wallet_backup
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	END_C_FUNCTION
