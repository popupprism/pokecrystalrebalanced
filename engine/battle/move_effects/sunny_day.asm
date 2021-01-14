BattleCommand_StartSun:
; startsun

	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyMonItem
	jr nz, .Item
	ld hl, wBattleMonItem

.Item:
	ld a, [hl]
	cp HEAT_ROCK
	jr nz, .NoHeatRock
	
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 8
	ld [wWeatherCount], a
	jp .Animate

.NoHeatRock:
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	
.Animate:
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox
