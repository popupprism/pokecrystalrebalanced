BattleCommand_Venoshock:
; venoshock
; get the opponent's status condition
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
; return if it's 0 (no condition)
	and 1 << PSN
	ret z
; it's not 0, so double damage
	jp DoubleDamage