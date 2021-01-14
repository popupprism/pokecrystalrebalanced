BattleCommand_Growth:
; growth

	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels
	
.go
	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jr z,  .raise2
	jp .raise

.raise
; Raise Attack and Special Attack 1
; If no stats can be increased, don't.

	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise
	
	ld a, $1
	ld [wBattleAnimParam], a
	call AnimateCurrentMove
	call ResetMiss
	call BattleCommand_AttackUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialAttackUp
	jp BattleCommand_StatUpMessage

.raise2

; Raise Attack and Special Attack 2
; If no stats can be increased, don't.

	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

	ld a, $1
	ld [wBattleAnimParam], a
	call AnimateCurrentMove
	call ResetMiss
	call BattleCommand_AttackUp2
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialAttackUp2
	jp BattleCommand_StatUpMessage

.cantraise

; Can't raise either stat.

	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextbox
