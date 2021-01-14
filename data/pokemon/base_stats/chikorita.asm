	db CHIKORITA ; 152

	db  45,  49,  65,  45,  49,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/chikorita/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, BODY_SLAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, PROTECT, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, SWORDS_DANCE, DOUBLE_EDGE, COUNTER, CUT, FLASH
	; end
