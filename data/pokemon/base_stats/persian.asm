	db PERSIAN ; 053

	db  65,  75,  60, 115,  70,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/persian/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, HYPER_BEAM, ICY_WIND, PROTECT, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, PROTECT, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, DOUBLE_EDGE, BUBBLEBEAM, ICE_BEAM, THUNDERBOLT
	; end
