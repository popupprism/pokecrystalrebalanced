	object_const_def
	const EVOLUTIONGROVE_RANGER
	const EVOLUTIONGROVE_RANGER2
	const EVOLUTIONGROVE_TMVENOSHOCK
	const EVOLUTIONGROVE_BIGONIX
	const EVOLUTIONGROVE_PICNICKER
	const EVOLUTIONGROVE_FRUIT_TREE

EvolutionGrove_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerRangerLoganScript:
	trainer RANGER, LOGAN, EVENT_BEAT_RANGER_LOGAN, RangerLoganSeenText, RangerLoganBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RangerLoganAfterText
	waitbutton
	closetext
	end
	
TrainerRangerGarthScript:
	trainer RANGER, GARTH, EVENT_BEAT_RANGER_GARTH, RangerGarthSeenText, RangerGarthBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RangerGarthAfterText
	waitbutton
	closetext
	end
	
EvolutionGroveTMVenoshock:
	itemball TM_VENOSHOCK
	
EvolutionGroveOnixScript:
	opentext
	writetext EvolutionGroveOnixCryText
	pause 15
	cry ONIX
	closetext
	loadwildmon ONIX, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	ifequal LOSE, .NotBeaten
	disappear EVOLUTIONGROVE_BIGONIX
.NotBeaten:
	reloadmapafterbattle
	end

TrainerPicnickerKiki:
	trainer PICNICKER, KIKI, EVENT_BEAT_PICNICKER_KIKI, PicnickerKikiSeenText, PicnickerKikiBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PicnickerKikiAfterText
	waitbutton
	closetext
	end
	
EvolutionGroveHiddenRepel:
	hiddenitem REPEL, EVENT_EVOLUTION_GROVE_REPEL
	
EvolutionGroveHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_EVOLUTION_GROVE_RARE_CANDY
	
EvolutionGroveFruitTree:
	fruittree FRUITTREE_EVOLUTION_GROVE

RangerLoganSeenText:
	text "In the wild, never"
	line "drop your guard!"
	done

RangerLoganBeatenText:
	text "I was so busy"
	line "warning you, I"
	cont "dropped my guard."
	done

RangerLoganAfterText:
	text "It's my job to"
	line "keep TRAINERS like"
	cont "you safe."

	para "Guess you don't"
	line "need my help…"
	done
	
RangerGarthSeenText:
	text "Nature's got us"
	line "on its side!"
	done

RangerGarthBeatenText:
	text "Don't forget to"
	line "take your trash"
	cont "with you."
	done

RangerGarthAfterText:
	text "It isn't as safe"
	line "in this part of"
	cont "the PARK."

	para "But preserving"
	line "the natural land"
	
	para "is more important"
	line "than safety for"
	cont "tourists."
	done
	
EvolutionGroveOnixCryText:
	text "Gaoooh!!!"
	done
	
PicnickerKikiSeenText:
	text "Too many BUG-type"
	line "#MON! I've had"
	cont "it!"
	done

PicnickerKikiBeatenText:
	text "You're more"
	line "annoying than the"
	cont "BUG #MON."
	done

PicnickerKikiAfterText:
	text "It's beautiful"
	line "here, but the tall"

	para "grass ruins"
	line "everything."
	done
	
RangersHouseSign:
	text "RANGER'S HOUSE"
	done
	
EvolutionGrove_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  29, 47, RANGERS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 30,  48, BGEVENT_READ, RangersHouseSign
	bg_event 35,  49, BGEVENT_ITEM, EvolutionGroveHiddenRepel
	bg_event 17,  18, BGEVENT_ITEM, EvolutionGroveHiddenRareCandy


	def_object_events
	object_event  7, 43, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerRangerLoganScript, -1
	object_event 37, 32, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerRangerGarthScript, -1
	object_event 16, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, EvolutionGroveTMVenoshock, EVENT_EVOLUTION_GROVE_TM_VENOSHOCK
	object_event 27,  9, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EvolutionGroveOnixScript, EVENT_EVOLUTION_GROVE_GREEN_ONIX
	object_event 20, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerKiki, -1
	object_event 27, 32, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EvolutionGroveFruitTree, -1
