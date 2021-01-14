BattleCommand_Facade:
; Facade
; get the user's status condition
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
; return if it's 0 (no condition)
	and 1 << PSN | 1 << BRN | 1 << PAR
	ret z
; it's not 0, so double damage
	jp DoubleDamage
	
