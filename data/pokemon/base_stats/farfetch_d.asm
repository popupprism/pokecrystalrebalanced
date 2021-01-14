	db FARFETCH_D ; 083

	db  67,  90,  65,  70,  68,  72 ;432
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM, STICK ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/farfetch_d/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, PROTECT, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, ROOST, SWORDS_DANCE, DOUBLE_EDGE, HEAT_WAVE, CUT, FLY
	; end
