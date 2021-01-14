HyperBeamDamage:
	ldh a, [hBattleTurn]
	and a
	jr z, .Player

	ld a, [wEnemyMonSpecies]
	cp CYNDAQUIL
	jr z, .Fire
	cp CHIKORITA
	jr z, .Grass
	cp TOTODILE
	jr z, .Water
	jp .Normal
	
.Player
	ld a, [wBattleMonSpecies]
	cp CYNDAQUIL
	jr z, .Fire
	cp CHIKORITA
	jr z, .Grass
	cp TOTODILE
	jr z, .Water
	jp .Normal

.Fire
	ld a, 150
	ld d, a

	ld a, FIRE
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	ld [hl], FIRE
	pop af
	
	ld a, d
	push af
	call BattleCommand_DamageStats ; damagestats
	pop af
	ld d, a
	
	ld hl, BlastBurnText
	jp StdBattleTextbox
	ret
	
.Grass
	ld a, 150
	ld d, a

	ld a, GRASS
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	ld [hl], GRASS
	pop af
	
	ld a, d
	push af
	call BattleCommand_DamageStats ; damagestats
	pop af
	ld d, a
	
	ld hl, FrenzyPlantText
	jp StdBattleTextbox
	ret
	
.Water
	ld a, 150
	ld d, a

	ld a, WATER
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	ld [hl], WATER
	pop af
	
	ld a, d
	push af
	call BattleCommand_DamageStats ; damagestats
	pop af
	ld d, a
	
	ld hl, HydroCannonText
	jp StdBattleTextbox
	ret
	
.Normal
	ld a, 150
	ld d, a

	ld a, NORMAL
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	ld [hl], NORMAL
	pop af
	
	ld a, d
	push af
	call BattleCommand_DamageStats ; damagestats
	pop af
	ld d, a
.End
	ret
