	db PUPITAR ; 247

	db  70,  84,  70,  51,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 40 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/pupitar/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, ROCK_SLIDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, STONE_EDGE, REST, ATTRACT, DOUBLE_EDGE, COUNTER
	; end
