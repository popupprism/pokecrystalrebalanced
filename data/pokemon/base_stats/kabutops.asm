	db KABUTOPS ; 141

	db  60, 115, 105,  80,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 30 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/kabutops/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, BODY_SLAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, RETURN, ROCK_SLIDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, STONE_EDGE, REST, ATTRACT, THIEF, FURY_CUTTER, SWORDS_DANCE, DOUBLE_EDGE, BUBBLEBEAM, SUBMISSION, SEISMIC_TOSS, X_SCISSOR, CUT, SURF, WHIRLPOOL, ICE_BEAM
	; end
