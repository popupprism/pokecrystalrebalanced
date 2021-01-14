	db SEAKING ; 119

	db  80,  92,  65,  78,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/seaking/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, BODY_SLAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, SWORDS_DANCE, DOUBLE_EDGE, BUBBLEBEAM, BOUNCE, SURF, WATERFALL, ICE_BEAM
	; end