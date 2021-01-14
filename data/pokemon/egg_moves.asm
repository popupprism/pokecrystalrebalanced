INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:
	db LIGHT_SCREEN
	db SKULL_BASH
	db SAFEGUARD
	db CHARM
	db PETAL_DANCE
	db AMNESIA
	db SLUDGE
	db -1 ; end

CharmanderEggMoves:
	db BELLY_DRUM
	db ANCIENTPOWER
	db ROCK_SLIDE
	db BITE
	db OUTRAGE
	db BEAT_UP
	db CRUNCH
	db COUNTER
	db -1 ; end

SquirtleEggMoves:
	db MIRROR_COAT
	db HAZE
	db MIST
	db CONFUSION
	db FORESIGHT
	db FLAIL
	db -1 ; end

PidgeyEggMoves:
	db PURSUIT
	db FAINT_ATTACK
	db FORESIGHT
	db AIR_CUTTER
	db AIR_SLASH
	db EXTREMESPEED
	db -1 ; end

RattataEggMoves:
	db SCREECH
	db FLAME_WHEEL
	db FURY_SWIPES
	db BITE
	db COUNTER
	db REVERSAL
	db SWAGGER
	db -1 ; end

SpearowEggMoves:
	db FAINT_ATTACK
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
	db WHIRLWIND
	db -1 ; end

EkansEggMoves:
	db PURSUIT
	db SLAM
	db VENOSHOCK
	db BEAT_UP
	db CRUNCH
	db SCARY_FACE
	db DISABLE
	db -1 ; end

SandshrewEggMoves:
	db FLAIL
	db SAFEGUARD
	db COUNTER
	db RAPID_SPIN
	db METAL_CLAW
	db X_SCISSOR
	db NIGHT_SLASH
	db -1 ; end

NidoranFEggMoves:
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db FOCUS_ENERGY
	db CHARM
	db COUNTER
	db BEAT_UP
	db PURSUIT
	db SKULL_BASH
	db -1 ; end

NidoranMEggMoves:
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db CONFUSION
	db AMNESIA
	db CONFUSION
	db COUNTER
	db BEAT_UP
	db -1 ; end

VulpixEggMoves:
	db FAINT_ATTACK
	db HYPNOSIS
	db FLAIL
	db DISABLE
	db SAFEGUARD
	db HEAT_WAVE
	db EXTRASENSORY
	db -1 ; end

ZubatEggMoves:
	db QUICK_ATTACK
	db PURSUIT
	db FAINT_ATTACK
	db GUST
	db WHIRLWIND
	db NASTY_PLOT
	db HYPNOSIS
	db EXTRASENSORY
	db HURRICANE
	db -1 ; end

OddishEggMoves:
	db SWORDS_DANCE
	db RAZOR_LEAF
	db FLAIL
	db SYNTHESIS
	db CHARM
	db -1 ; end

ParasEggMoves:
	db FALSE_SWIPE
	db SCREECH
	db COUNTER
	db PSYBEAM
	db FLAIL
	db LIGHT_SCREEN
	db PURSUIT
	db METAL_CLAW
	db CROSS_POISON
	db AGILITY
	db LEECH_SEED
	db -1 ; end

VenonatEggMoves:
	db BATON_PASS
	db SCREECH
	db GIGA_DRAIN
	db AGILITY
	db MORNING_SUN
	db -1 ; end

DiglettEggMoves:
	db FAINT_ATTACK
	db SCREECH
	db ANCIENTPOWER
	db PURSUIT
	db BEAT_UP
	db REVERSAL
	db -1 ; end

MeowthEggMoves:
	db NIGHT_SLASH
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db FORESIGHT
	db FLAIL
	db TAIL_WHIP
	db -1 ; end

PsyduckEggMoves:
	db ICE_BEAM
	db HYPNOSIS
	db PSYBEAM
	db FORESIGHT
	db LIGHT_SCREEN
	db FUTURE_SIGHT
	db PSYCHIC_M
	db CROSS_CHOP
	db CONFUSE_RAY
	db MUD_BOMB
	db ENCORE
	db -1 ; end

MankeyEggMoves:
	db ROCK_SLIDE
	db FORESIGHT
	db MEDITATE
	db COUNTER
	db REVERSAL
	db BEAT_UP
	db ENCORE
	db -1 ; end

GrowlitheEggMoves:
	db BODY_SLAM
	db SAFEGUARD
	db CRUNCH
	db THRASH
	db FIRE_SPIN
	db HEAT_WAVE
	db MORNING_SUN
	db -1 ; end

PoliwagEggMoves:
	db MIST
	db SPLASH
	db BUBBLEBEAM
	db HAZE
	db MIND_READER
	db ENCORE
	db -1 ; end

AbraEggMoves:
	db LIGHT_SCREEN
	db ENCORE
	db BARRIER
	db -1 ; end

MachopEggMoves:
	db LIGHT_SCREEN
	db MEDITATE
	db ENCORE
	db -1 ; end

BellsproutEggMoves:
	db SWORDS_DANCE
	db ENCORE
	db REFLECT
	db SYNTHESIS
	db LEECH_LIFE
	db -1 ; end

TentacoolEggMoves:
	db AURORA_BEAM
	db MIRROR_COAT
	db RAPID_SPIN
	db HAZE
	db SAFEGUARD
	db CONFUSE_RAY
	db -1 ; end

GeodudeEggMoves:
	db ROCK_BLAST
	db ROCK_SLIDE
	db FLAIL
	db -1 ; end

PonytaEggMoves:
	db FLAME_WHEEL
	db THRASH
	db DOUBLE_KICK
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db MORNING_SUN
	db -1 ; end

SlowpokeEggMoves:
	db SAFEGUARD
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db -1 ; end

FarfetchDEggMoves:
	db FORESIGHT
	db MIRROR_MOVE
	db GUST
	db QUICK_ATTACK
	db FLAIL
	db -1 ; end

DoduoEggMoves:
	db QUICK_ATTACK
	db SUPERSONIC
	db HAZE
	db FAINT_ATTACK
	db FLAIL
	db MIRROR_MOVE
	db -1 ; end

SeelEggMoves:
	db LICK
	db PERISH_SONG
	db DISABLE
	db PECK
	db SLAM
	db ENCORE
	db -1 ; end

GrimerEggMoves:
	db HAZE
	db MEAN_LOOK
	db LICK
	db EXPLOSION
	db -1 ; end

ShellderEggMoves:
	db BUBBLEBEAM
	db TAKE_DOWN
	db BARRIER
	db RAPID_SPIN
	db SCREECH
	db ROCK_BLAST
	db -1 ; end

GastlyEggMoves:
	db PSYWAVE
	db PERISH_SONG
	db HAZE
	db EXPLOSION
	db DISABLE
	db -1 ; end

OnixEggMoves:
	db ROCK_SLIDE
	db FLAIL
	db EXPLOSION
	db ROCK_BLAST
	db -1 ; end

DrowzeeEggMoves:
	db LIGHT_SCREEN
	db BARRIER
	db NASTY_PLOT
	db -1 ; end

KrabbyEggMoves:
	db DIG
	db HAZE
	db AMNESIA
	db FLAIL
	db SLAM
	db SLASH
	db NIGHT_SLASH
	db X_SCISSOR
	db ANCIENTPOWER
	db AGILITY
	db -1 ; end

ExeggcuteEggMoves:
	db SYNTHESIS
	db MOONLIGHT
	db REFLECT
	db MEGA_DRAIN
	db ANCIENTPOWER
	db -1 ; end

CuboneEggMoves:
	db ROCK_SLIDE
	db ANCIENTPOWER
	db BELLY_DRUM
	db SCREECH
	db SKULL_BASH
	db PERISH_SONG
	db SWORDS_DANCE
	db DOUBLE_KICK
	db -1 ; end

LickitungEggMoves:
	db BELLY_DRUM
	db MAGNITUDE
	db BODY_SLAM
	db SUBSTITUTE
	db AMNESIA
	db -1 ; end

KoffingEggMoves:
	db SCREECH
	db PSYWAVE
	db PSYBEAM
	db DESTINY_BOND
	db PAIN_SPLIT
	db -1 ; end

RhyhornEggMoves:
	db CRUNCH
	db REVERSAL
	db ROCK_SLIDE
	db THRASH
	db PURSUIT
	db COUNTER
	db MAGNITUDE
	db SKULL_BASH
	db -1 ; end

ChanseyEggMoves:
	db PRESENT
	db METRONOME
	db HEAL_BELL
	db SUBSTITUTE
	db MUD_BOMB
	db -1 ; end

TangelaEggMoves:
	db FLAIL
	db CONFUSION
	db MEGA_DRAIN
	db REFLECT
	db AMNESIA
	db LEECH_SEED
	db -1 ; end

KangaskhanEggMoves:
	db STOMP
	db FORESIGHT
	db FOCUS_ENERGY
	db SAFEGUARD
	db DISABLE
	db SUBSTITUTE
	db OUTRAGE
	db LOW_KICK
	db -1 ; end

HorseaEggMoves:
	db FLAIL
	db AURORA_BEAM
	db OCTAZOOKA
	db DISABLE
	db SPLASH
	db DRAGON_RAGE
	db AIR_SLASH
	db HURRICANE
	db -1 ; end

GoldeenEggMoves:
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db -1 ; end

MrMimeEggMoves:
	db FUTURE_SIGHT
	db HYPNOSIS
	db MIMIC
	db CONFUSE_RAY
	db NASTY_PLOT
	db -1 ; end

ScytherEggMoves:
	db COUNTER
	db SAFEGUARD
	db BATON_PASS
	db X_SCISSOR
	db REVERSAL
	db LIGHT_SCREEN
	db ENDURE
	db NIGHT_SLASH
	db -1 ; end

PinsirEggMoves:
	db FURY_ATTACK
	db FLAIL
	db FALSE_SWIPE
	db FAINT_ATTACK
	db QUICK_ATTACK
	db -1 ; end

LaprasEggMoves:
	db AURORA_BEAM
	db FORESIGHT
	db SUBSTITUTE
	db HORN_DRILL
	db ANCIENTPOWER
	db FISSURE
	db -1 ; end

EeveeEggMoves:
	db FLAIL
	db CHARM
	db GROWTH
	db ENDURE
	db REVERSAL
	db -1 ; end

OmanyteEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db SLAM
	db SUPERSONIC
	db HAZE
	db -1 ; end

KabutoEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db RAPID_SPIN
	db DIG
	db FLAIL
	db CONFUSE_RAY
	db -1 ; end

AerodactylEggMoves:
	db WHIRLWIND
	db PURSUIT
	db FORESIGHT
	db -1 ; end

SnorlaxEggMoves:
	db LICK
	db CHARM
	db FISSURE
	db SUBSTITUTE
	db PURSUIT
	db -1 ; end

DratiniEggMoves:
	db LIGHT_SCREEN
	db MIST
	db HAZE
	db SUPERSONIC
	db EXTREMESPEED
	db -1 ; end

ChikoritaEggMoves:
	db VINE_WHIP
	db LEECH_SEED
	db COUNTER
	db ANCIENTPOWER
	db FLAIL
	db SING
	db SWORDS_DANCE
	db -1 ; end

CyndaquilEggMoves:
	db FURY_SWIPES
	db QUICK_ATTACK
	db REVERSAL
	db THRASH
	db FORESIGHT
	db DOUBLE_KICK
	db SUBMISSION
	db EXTRASENSORY
	db -1 ; end

TotodileEggMoves:
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
	db ANCIENTPOWER
	db SWORDS_DANCE
	db ROCK_SLIDE
	db OUTRAGE
	db AQUA_JET
	db -1 ; end

SentretEggMoves:
	db DOUBLE_EDGE
	db PURSUIT
	db SLASH
	db FOCUS_ENERGY
	db REVERSAL
	db SUBSTITUTE
	db CHARM
	db SUPER_FANG
	db EXTREMESPEED
	db -1 ; end

HoothootEggMoves:
	db MIRROR_MOVE
	db SUPERSONIC
	db FAINT_ATTACK
	db WING_ATTACK
	db WHIRLWIND
	db AGILITY
	db NIGHT_SHADE
	db FUTURE_SIGHT
	db HURRICANE
	db -1 ; end

LedybaEggMoves:
	db PSYBEAM
	db COUNTER
	db LIGHT_SCREEN
	db SKY_UPPERCUT
	db SCREECH
	db ENCORE
	db -1 ; end

SpinarakEggMoves:
	db PSYBEAM
	db DISABLE
	db SONICBOOM
	db BATON_PASS
	db PURSUIT
	db -1 ; end

ChinchouEggMoves:
	db FLAIL
	db SUPERSONIC
	db SCREECH
	db HEAL_BELL
	db AMNESIA
	db PSYBEAM
	db AGILITY
	db MIST
	db -1 ; end

PichuEggMoves:
	db REVERSAL
	db COUNTER
	db PRESENT
	db ENCORE
	db DOUBLESLAP
	db FLAIL
	db -1 ; end

CleffaEggMoves:
	db PRESENT
	db METRONOME
	db AMNESIA
	db BELLY_DRUM
	db SPLASH
	db MIMIC
	db SUBSTITUTE
	db HEAL_BELL
	db -1 ; end

IgglybuffEggMoves:
	db PERISH_SONG
	db PRESENT
	db FAINT_ATTACK
	db -1 ; end

TogepiEggMoves:
	db PRESENT
	db MIRROR_MOVE
	db PECK
	db FORESIGHT
	db FUTURE_SIGHT
	db NASTY_PLOT
	db EXTRASENSORY
	db -1 ; end

NatuEggMoves:
	db HAZE
	db DRILL_PECK
	db QUICK_ATTACK
	db FAINT_ATTACK
	db STEEL_WING
	db EXTRASENSORY
	db -1 ; end

MareepEggMoves:
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db SAFEGUARD
	db SCREECH
	db REFLECT
	db OUTRAGE
	db SAND_ATTACK
	db -1 ; end

MarillEggMoves:
	db LIGHT_SCREEN
	db PRESENT
	db AMNESIA
	db FUTURE_SIGHT
	db BELLY_DRUM
	db PERISH_SONG
	db SUPERSONIC
	db FORESIGHT
	db SUBSTITUTE
	db AQUA_JET
	db -1 ; end

SudowoodoEggMoves:
	db SELFDESTRUCT
	db DEFENSE_CURL
	db -1 ; end

HoppipEggMoves:
	db CONFUSION
	db GROWL
	db ENCORE
	db DOUBLE_EDGE
	db REFLECT
	db AMNESIA
	db PAY_DAY
	db HEAL_BELL
	db CHARM
	db -1 ; end

AipomEggMoves:
	db COUNTER
	db SCREECH
	db PURSUIT
	db AGILITY
	db THIEF
	db SLAM
	db DOUBLESLAP
	db BEAT_UP
	db BOUNCE
	db -1 ; end

YanmaEggMoves:
	db WHIRLWIND
	db REVERSAL
	db LEECH_LIFE
	db FAINT_ATTACK
	db PURSUIT
	db ENDURE
	db AIR_CUTTER
	db -1 ; end

WooperEggMoves:
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db ENCORE
	db DOUBLE_KICK
	db -1 ; end

MurkrowEggMoves:
	db WHIRLWIND
	db DRILL_PECK
	db QUICK_ATTACK
	db MIRROR_MOVE
	db WING_ATTACK
	db AIR_CUTTER
	db -1 ; end

MisdreavusEggMoves:
	db SCREECH
	db DESTINY_BOND
	db NASTY_PLOT
	db -1 ; end

GirafarigEggMoves:
	db TAKE_DOWN
	db AMNESIA
	db FORESIGHT
	db FUTURE_SIGHT
	db BEAT_UP
	db DOUBLE_KICK
	db MIRROR_COAT
	db -1 ; end

PinecoEggMoves:
	db REFLECT
	db PIN_MISSILE
	db FLAIL
	db SWIFT
	db -1 ; end

DunsparceEggMoves:
	db COUNTER
	db ANCIENTPOWER
	db ROCK_SLIDE
	db BITE
	db RAGE
	db HEX
	db CURSE
	db AGILITY
	db -1 ; end

GligarEggMoves:
	db METAL_CLAW
	db WING_ATTACK
	db X_SCISSOR
	db COUNTER
	db NIGHT_SLASH
	db CROSS_POISON
	db -1 ; end

SnubbullEggMoves:
	db METRONOME
	db FAINT_ATTACK
	db REFLECT
	db PRESENT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db LEER
	db -1 ; end

QwilfishEggMoves:
	db FLAIL
	db HAZE
	db BUBBLEBEAM
	db SUPERSONIC
	db -1 ; end

ShuckleEggMoves:
	db SWEET_SCENT
	db -1 ; end

HeracrossEggMoves:
	db HARDEN
	db COUNTER
	db FLAIL
	db FALSE_SWIPE
	db PURSUIT
	db -1 ; end

SneaselEggMoves:
	db COUNTER
	db FOCUS_ENERGY
	db FORESIGHT
	db REFLECT
	db BITE
	db -1 ; end

TeddiursaEggMoves:
	db CRUNCH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db FOCUS_ENERGY
	db COUNTER
	db METAL_CLAW
	db NIGHT_SLASH
	db BELLY_DRUM
	db -1 ; end

SlugmaEggMoves:
	db ACID_ARMOR
	db HEAT_WAVE
	db CURSE
	db SMOKESCREEN
	db ROLLOUT
	db REFLECT
	db ANCIENTPOWER
	db -1 ; end

SwinubEggMoves:
	db TAKE_DOWN
	db BITE
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db FISSURE
	db -1 ; end

CorsolaEggMoves:
	db ROCK_SLIDE
	db SAFEGUARD
	db SCREECH
	db MIST
	db AMNESIA
	db BARRIER
	db CONFUSE_RAY
	db -1 ; end

RemoraidEggMoves:
	db AURORA_BEAM
	db OCTAZOOKA
	db SUPERSONIC
	db HAZE
	db SCREECH
	db THUNDER_WAVE
	db FLAIL
	db -1 ; end

DelibirdEggMoves:
	db AURORA_BEAM
	db QUICK_ATTACK
	db FUTURE_SIGHT
	db SPLASH
	db RAPID_SPIN
	db -1 ; end

MantineEggMoves:
	db TWISTER
	db HYDRO_PUMP
	db HAZE
	db SLAM
	db MIRROR_COAT
	db ROCK_SLIDE
	db -1 ; end

SkarmoryEggMoves:
	db DRILL_PECK
	db PURSUIT
	db WHIRLWIND
	db AIR_SLASH
	db -1 ; end

HoundourEggMoves:
	db FIRE_SPIN
	db RAGE
	db PURSUIT
	db COUNTER
	db MEAN_LOOK
	db REVERSAL
	db BEAT_UP
	db NASTY_PLOT
	db -1 ; end

PhanpyEggMoves:
	db FOCUS_ENERGY
	db BODY_SLAM
	db ANCIENTPOWER
	db WATER_GUN
	db HYDRO_PUMP
	db -1 ; end

StantlerEggMoves:
	db REFLECT
	db MEAN_LOOK
	db DISABLE
	db LIGHT_SCREEN
	db BITE
	db EXTRASENSORY
	db THRASH
	db DOUBLE_KICK
	db -1 ; end

TyrogueEggMoves:
	db RAPID_SPIN
	db HI_JUMP_KICK
	db MACH_PUNCH
	db MIND_READER
	db COUNTER
	db -1 ; end

SmoochumEggMoves:
	db MEDITATE
	db NASTY_PLOT
	db HEAL_BELL
	db -1 ; end

ElekidEggMoves:
	db KARATE_CHOP
	db BARRIER
	db MEDITATE
	db CROSS_CHOP
	db -1 ; end

MagbyEggMoves:
	db KARATE_CHOP
	db COMET_PUNCH
	db BARRIER
	db SCREECH
	db CROSS_CHOP
	db -1 ; end

MiltankEggMoves:
	db PRESENT
	db REVERSAL
	db SEISMIC_TOSS
	db DIZZY_PUNCH
	db -1 ; end

LarvitarEggMoves:
	db PURSUIT
	db STOMP
	db OUTRAGE
	db FOCUS_ENERGY
	db ANCIENTPOWER
	db -1 ; end

NoEggMoves:
	db -1 ; end
