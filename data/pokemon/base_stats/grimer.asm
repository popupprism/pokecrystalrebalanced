	db GRIMER ; 088

	db  80,  80,  50,  25,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp
	db NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/grimer/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, GIGA_DRAIN, FRUSTRATION, THUNDER, RETURN, PROTECT, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, EXPLOSION, VENOSHOCK, FLAMETHROWER, THUNDERBOLT
	; end
