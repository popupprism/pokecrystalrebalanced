	db HERACROSS ; 214

	db  80, 125,  75,  85,  40,  95
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 25 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/heracross/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, ROCK_SLIDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, STONE_EDGE, REST, ATTRACT, THIEF, FURY_CUTTER, SWORDS_DANCE, DOUBLE_EDGE, COUNTER, CUT, STRENGTH
	; end
