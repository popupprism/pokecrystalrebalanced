	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST4

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	scene_script .GetUnownDex ; SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .ScientistCallback

.DummyScene0:
	end

.GetUnownDex:
	prioritysjump .GetUnownDexScript
	end

.ScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

.GetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllUnown
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist2Text_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

RuinsOfAlphResearchCenterPhoto: ; unreferenced
	jumptext RuinsOfAlphResearchCenterProfSilktreePhotoText

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end
	
RuinsOfAlphFossilManiacScript:
	faceplayer
	opentext
	writetext RuinsofAlphFossilManiacText
	waitbutton
	checkitem DOME_FOSSIL
	iftrue .DomeFossil
	checkitem HELIX_FOSSIL
	iftrue .HelixFossil
	checkitem OLD_AMBER
	iftrue .OldAmber
	closetext
	end
	
.DomeFossil
	writetext RuinsofAlphFossilTrueText
	yesorno
	iffalse .Refused
	writetext GiveDomeFossilText
	waitbutton
	writetext RuinsofAlphFossilWaitText
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 60
	special FadeInQuickly
	opentext
	writetext RuinsofAlphKabutoText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedKabutoText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke KABUTO, 25
	writetext RuinsofAlphManiacFinishText
	takeitem DOME_FOSSIL
	waitbutton
	closetext
	end
	
.HelixFossil
	writetext RuinsofAlphFossilTrueText
	yesorno
	iffalse .Refused
	writetext GiveHelixFossilText
	waitbutton
	writetext RuinsofAlphFossilWaitText
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 60
	special FadeInQuickly
	opentext
	writetext RuinsofAlphOmanyteText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedOmanyteText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OMANYTE, 25
	writetext RuinsofAlphManiacFinishText
	takeitem HELIX_FOSSIL
	waitbutton
	closetext
	end
	
.OldAmber
	writetext RuinsofAlphFossilTrueText
	yesorno
	iffalse .Refused
	writetext GiveOldAmberText
	waitbutton
	writetext RuinsofAlphFossilWaitText
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 60
	special FadeInQuickly
	opentext
	writetext RuinsofAlphAerodactylText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedAerodactylText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AERODACTYL, 20
	writetext RuinsofAlphManiacFinishText
	takeitem OLD_AMBER
	waitbutton
	closetext
	end
	
.NoRoom:
	writetext RuinofAlphNoRoomForFossilText
	waitbutton
	closetext
	end

.Refused:
	writetext RuinofAlphDisappointmentText
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"

	para "I modified your"
	line "#DEX."

	para "I added an"
	line "optional #DEX"

	para "to store UNOWN"
	line "data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "<PLAYER>'s #DEX"
	line "was upgraded."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "The UNOWN you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "You caught all the"
	line "UNOWN variations?"

	para "That's a great"
	line "achievement!"

	para "I've set up the"
	line "printer here for"
	cont "handling UNOWN."

	para "Feel free to use"
	line "it anytime."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "The RUINS are"
	line "about 1500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "I wonder how many"
	line "kinds of #MON"
	cont "are in the RUINS?"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "#MON appeared"
	line "in the RUINS?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
	text "Our investigation,"
	line "with your help, is"

	para "giving us insight"
	line "into the RUINS."

	para "The RUINS appear"
	line "to have been built"

	para "as a habitat for"
	line "#MON."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "There are odd pat-"
	line "terns drawn on the"

	para "walls of the"
	line "RUINS."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the RUINS."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "The strange #-"
	line "MON you saw in the"
	cont "RUINS?"

	para "They appear to be"
	line "very much like the"

	para "drawings on the"
	line "walls there."

	para "Hmm…"

	para "That must mean"
	line "there are many"
	cont "kinds of them…"
	done

RuinsOfAlphResearchCenterUnusedText1: ; unreferenced
	text "We think something"
	line "caused the cryptic"

	para "patterns to appear"
	line "in the RUINS."

	para "We've focused our"
	line "studies on that."
	done

RuinsOfAlphResearchCenterUnusedText2: ; unreferenced
	text "According to my"
	line "research…"

	para "Those mysterious"
	line "patterns appeared"

	para "when the #COM"
	line "CENTER was built."

	para "It must mean that"
	line "radio waves have"

	para "some sort of a"
	line "link…"
	done

RuinsOfAlphResearchCenterScientist2Text_GotAllUnown:
	text "Why did those"
	line "ancient patterns"

	para "appear on the wall"
	line "now?"

	para "The mystery"
	line "deepens…"
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINS OF ALPH"

	para "Exploration"
	line "Year 10"
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "Mystery #MON"
	line "Name: UNOWN"

	para "A total of 26"
	line "kinds found."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "This doesn't seem"
	line "to work yet."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "UNOWN may be"
	line "printed out."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "It's a photo of"
	line "the RESEARCH"

	para "CENTER'S founder,"
	line "PROF.SILKTREE."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"
	done

RuinsofAlphFossilManiacText:
	text "I guess the RUINS"
	line "are interesting,"
	cont "but…"

	para "To tell you the"
	line "the truth, I'm"
	
	para "more of a FOSSIL"
	line "MANIAC, myself."
	
	para "If you happen to"
	line "come across an old"
	
	para "FOSSIL out there,"
	line "would you show me?"
	done
	
RuinsofAlphFossilTrueText:
	text "Oooh! That's it!"
	line "That's a genuine"
	cont "FOSSIL!"
	
	para "If you want, I can"
	line "revive the FOSSIL."
	
	para "That's right! A"
	line "#MON from the"
	cont "ancient past..."
	
	para "How about it?"
	line "Can I have it?"
	done
	
GiveDomeFossilText:
	text "<PLAYER> gave the"
	line "man DOME FOSSIL."
	done
	
GiveHelixFossilText:
	text "<PLAYER> gave the"
	line "man HELIX FOSSIL."
	done
	
GiveOldAmberText:
	text "<PLAYER> gave the"
	line "man OLD AMBER."
	done
	
RuinsofAlphFossilWaitText:
	text "OK. Stay right"
	line "there..."
	done
	
RuinsofAlphKabutoText:
	text "The revival was a"
	line "great success! It"
	
	para "was a fossil of"
	line "KABUTO."
	done
	
RuinsofAlphOmanyteText:
	text "The revival was a"
	line "great success! It"
	
	para "was a fossil of"
	line "OMANYTE."
	done
	
RuinsofAlphAerodactylText:
	text "The revival was a"
	line "great success! It"
	
	para "was a fossil of"
	line "AERODACTYL."
	done

ReceivedKabutoText:
	text "<PLAYER> received"
	line "KABUTO!"
	done
	
ReceivedOmanyteText:
	text "<PLAYER> received"
	line "OMANYTE!"
	done
	
ReceivedAerodactylText:
	text "<PLAYER> received"
	line "AERODACTYL!"
	done
	
RuinsofAlphManiacFinishText:
	text "Ancient #MON"
	line "revived from a"
	cont "long sleep..."
	
	para "I hope the world"
	line "is ready for them."
	done

RuinofAlphDisappointmentText:
	text "I'm so bored..."
	done

RuinofAlphNoRoomForFossilText:
	text "You have no room"
	line "for it in your"
	cont "party..."
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	object_event  1,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphFossilManiacScript, -1
