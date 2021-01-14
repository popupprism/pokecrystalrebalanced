	db CUBONE ; 104

	db  50,  50,  95,  35,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp
	db NO_ITEM, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/cubone/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, BLIZZARD, ICY_WIND, PROTECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SLIDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, DOUBLE_EDGE, BUBBLEBEAM, SUBMISSION, COUNTER, SEISMIC_TOSS, STRENGTH, FLAMETHROWER, ICE_BEAM
	; end
