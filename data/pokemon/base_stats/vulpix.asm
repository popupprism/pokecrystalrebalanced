	db VULPIX ; 037

	db  38,  41,  40,  65,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F75 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, REST, ATTRACT, DOUBLE_EDGE, WILL_O_WISP, HEAT_WAVE, FLAMETHROWER
	; end