	db GLIGAR ; 207

	db  65,  80, 105,  85,  35,  75
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, FRUSTRATION, EARTHQUAKE, IRON_TAIL, RETURN, ROCK_SLIDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SWIFT, STONE_EDGE, REST, ATTRACT, THIEF, FURY_CUTTER, ROOST, SWORDS_DANCE, DOUBLE_EDGE, COUNTER, VENOSHOCK, X_SCISSOR, CUT, STRENGTH
	; end
