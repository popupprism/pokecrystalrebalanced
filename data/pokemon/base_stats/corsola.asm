	db CORSOLA ; 222

	db  75,  55,  95,  35,  75,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/corsola/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, RAIN_DANCE, CALM_MIND, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, PROTECT, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, DEFENSE_CURL, STONE_EDGE, REST, ATTRACT, DOUBLE_EDGE, BUBBLEBEAM, COUNTER, EXPLOSION, SURF, STRENGTH, WHIRLPOOL, ICE_BEAM
	; end
