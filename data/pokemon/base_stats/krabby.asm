	db KRABBY ; 098

	db  30, 105,  90,  50,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/krabby/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BODY_SLAM, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PROTECT, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, SWORDS_DANCE, DOUBLE_EDGE, BUBBLEBEAM, X_SCISSOR, CUT, SURF, STRENGTH, WHIRLPOOL, ICE_BEAM
	; end
