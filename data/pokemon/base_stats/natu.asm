	db NATU ; 177

	db  40,  50,  45,  70,  70,  45
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 190 ; catch rate
	db 73 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/natu/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, GIGA_DRAIN, CALM_MIND, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, ROOST, DOUBLE_EDGE, HEAT_WAVE, THUNDER_WAVE, FLASH
	; end