	db WARTORTLE ; 008

	db  59,  63,  80,  58,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/wartortle/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, BODY_SLAM, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, PROTECT, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, DEFENSE_CURL, REST, ATTRACT, DOUBLE_EDGE, BUBBLEBEAM, SUBMISSION, COUNTER, SEISMIC_TOSS, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
