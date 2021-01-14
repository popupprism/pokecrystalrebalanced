	db CLOYSTER ; 091

	db  50,  95, 180,  70,  85,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/cloyster/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, BODY_SLAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, DOUBLE_EDGE, BUBBLEBEAM, EXPLOSION, SURF, WHIRLPOOL, ICE_BEAM
	; end