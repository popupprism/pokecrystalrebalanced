	object_const_def
	const RANGERSHOUSE_RANGER
	const RANGERSHOUSE_TWIN

RangersHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
RangersHouseRangerScript:
	faceplayer
	opentext
	checkevent EVENT_GET_BULBASAUR
	iftrue .HowsBulbasaur
	writetext ProtectiveBulbasaurText
	waitbutton
	readvar VAR_DEXSEEN
	ifgreater 30 - 1, .GiveBulbasaur
	closetext
	end
	
.GiveBulbasaur:
	writetext DexCatchBulbasaurText
	yesorno
	iffalse .Refused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	waitsfx
	writetext ReceivedBulbasaurText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke BULBASAUR, 10
	writetext ThankYouBulbasaurText
	setevent EVENT_GET_BULBASAUR
	waitbutton
	closetext
	end
	
.HowsBulbasaur:
	writetext RangersHouseRangerAfterGiftText
	waitbutton
	closetext
	end
	
.Refused:
	writetext PoorBulbasaurText
	waitbutton
	closetext
	end
	
.NoRoom:
	writetext YouHaveNoRoomBulbaText
	waitbutton
	closetext
	end
	
RangersHouseTwinScript:
	jumptextfaceplayer RangersHouseTwinText
	
ProtectiveBulbasaurText:
	text "As a RANGER, it's"
	line "my job to look"
	
	para "after the park and"
	line "the #MON in it."
	
	para "But this BULBASAUR"
	line "I'm looking after"
	
	para "is a little too"
	line "shy around humans."
	
	para "BULBASAUR needs to"
	line "meet a TRAINER who"
	
	para "has met a lot of"
	line "#MON already."
	done
	
DexCatchBulbasaurText:
	text "Is that a #DEX?"
	line "Can I see it?"
	
	para "Wow, you're an"
	line "experienced sort"
	cont "already, huh?"
	
	para "Well, if you"
	line "don't mind, how"
	
	para "would you feel"
	line "about raising my"
	cont "BULBASAUR?"
	done
	
ReceivedBulbasaurText:
	text "<PLAYER> received"
	line "BULBASAUR!"
	done
	
ThankYouBulbasaurText:
	text "Take good care of"
	line "BULBASAUR, now."
	
	para "You're welcome to"
	line "come visit us here"
	cont "anytime."
	done
	
RangersHouseRangerAfterGiftText:
	text "I wanted to do the"
	line "gym challenge when"
	cont "I was young."
	
	para "See all of the"
	line "#MON in the wide"
	cont "world."
	
	para "But I'm content to"
	line "watch you kids try"
	cont "from afar."
	done

PoorBulbasaurText:
	text "He'll be scared of"
	line "people forever at"
	cont "this rate..."
	done
	
YouHaveNoRoomBulbaText:
	text "You have no room"
	line "for BULBASAUR."
	done
	
RangersHouseTwinText:
	text "My daddy is a"
	line "park RANGER!"
	
	para "He's busy lots"
	line "but I get to play"
	
	para "with TEDDIURSA"
	line "when he goes out."
	done

RangersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 7, EVOLUTION_GROVE, 1
	warp_event  4, 7, EVOLUTION_GROVE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RangersHouseRangerScript, -1
	object_event  5, 7, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RangersHouseTwinScript, -1

