	db TOTODILE ; 158

	db  50,  65,  64,  43,  44,  48
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/totodile/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BODY_SLAM, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, ROCK_SLIDE, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, REST, ATTRACT, SWORDS_DANCE, DOUBLE_EDGE, BUBBLEBEAM, SUBMISSION, CUT, SURF, WHIRLPOOL, ICE_BEAM
	; end