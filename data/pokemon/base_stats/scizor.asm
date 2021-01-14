	db SCIZOR ; 212

	db  70, 130, 100,  65,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 25 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/scizor/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, HYPER_BEAM, PROTECT, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, FURY_CUTTER, ROOST, SWORDS_DANCE, DOUBLE_EDGE, VENOSHOCK, X_SCISSOR, CUT, STRENGTH
	; end