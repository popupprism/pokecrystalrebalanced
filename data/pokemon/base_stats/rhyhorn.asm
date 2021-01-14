	db RHYHORN ; 111

	db  80,  85,  95,  25,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, BLIZZARD, ICY_WIND, PROTECT, FRUSTRATION, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DIG, ROCK_SLIDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, STONE_EDGE, REST, ATTRACT, DOUBLE_EDGE, STRENGTH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
