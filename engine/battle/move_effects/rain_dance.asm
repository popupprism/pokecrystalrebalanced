BattleCommand_StartRain:
; startrain

	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyMonItem
	jr nz, .Item
	ld hl, wBattleMonItem

.Item:
	ld a, [hl]
	cp DAMP_ROCK
	jr nz, .NoDampRock
	
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 8
	ld [wWeatherCount], a
	jp .Animate

.NoDampRock:
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	
.Animate:
	call AnimateCurrentMove
	ld hl, DownpourText
	jp StdBattleTextbox
