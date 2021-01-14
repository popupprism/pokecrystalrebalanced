	db VENUSAUR ; 003

	db  80,  82,  83,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/venusaur/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, BODY_SLAM, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, PROTECT, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, DEFENSE_CURL, REST, ATTRACT, FURY_CUTTER, SWORDS_DANCE, DOUBLE_EDGE, VENOSHOCK, CUT, FLASH
	; end
