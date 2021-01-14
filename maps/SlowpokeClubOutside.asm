	object_const_def
	const SLOWPOKECLUBOUTSIDE_ROCKET
	const SLOWPOKECLUBOUTSIDE_ROCKET2
	const SLOWPOKECLUBOUTSIDE_ROCKET3
	const SLOWPOKECLUBOUTSIDE_LASS

SlowpokeClubOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	
SlowpokeClubOutsideGuardScript:
	jumptextfaceplayer SlowpokeClubOutsideGuardText
	
SlowpokeClubOutsideHarborGuardScript:
	jumptextfaceplayer SlowpokeClubOutsideHarborGuardText
	
SlowpokeClubOutsideLassScript:
	faceplayer
	opentext
	writetext SlowpokeClubOutsideLassText
	waitbutton
	closetext
	end
	
SlowpokeClubSign:
	jumptext SlowpokeClubSignText
	
SlowpokeHarborSign:
	jumptext SlowpokeHarborSignText
	
SlowpokeClubSignText:
	text "SLOWPOKE CLUB"

	para "For distinguished"
	line "trainers to relax!"
	done
	
SlowpokeHarborSignText:
	text "SLOWPOKE CLUB"

	para "Harbor for members"
	line "only!"
	done
		
SlowpokeClubOutsideGuardText:
	text "Unless you have a"
	line "SLOWPOKETAIL, beat"
	cont "it, kid."

	para "This is a club for"
	line "adults of refined"
	cont "taste!"
	done
	
SlowpokeClubOutsideHarborGuardText:
	text "This way's members"
	line "only, brat."

	done
	
SlowpokeClubOutsideLassText:
	text "I heard this club"
	line "is really some-"
	cont "thing else!"

	para "But...I don't know"
	line "where to buy any"
	cont "SLOWPOKETAIL!"
	done
	
SlowpokeClubOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  7, SLOWPOKE_CLUB_1F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  9, BGEVENT_READ, SlowpokeClubSign
	bg_event  8, 17, BGEVENT_READ, SlowpokeHarborSign

	def_object_events
	object_event 24, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScoutScript, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	object_event  8,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeClubOutsideGuardScript, -1
	object_event  8, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeClubOutsideHarborGuardScript, -1
	object_event 13, 11, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SlowpokeClubOutsideLassScript, -1

