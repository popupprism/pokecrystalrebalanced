INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"
INCLUDE "data/pokemon/evolution_moves.asm"
INCLUDE "engine/pokemon/evolve.asm"


BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, VINE_WHIP
	db 10, LEECH_SEED
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 21, SWEET_SCENT
	db 25, GROWTH
	db 32, DOUBLE_EDGE
	db 39, SYNTHESIS
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 4, GROWL
	db 7, VINE_WHIP
	db 10, LEECH_SEED
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 22, RAZOR_LEAF
	db 24, SWEET_SCENT
	db 28, GROWTH
	db 35, DOUBLE_EDGE
	db 40, SYNTHESIS
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 4, GROWL
	db 7, VINE_WHIP
	db 10, LEECH_SEED
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 22, RAZOR_LEAF
	db 24, SWEET_SCENT
	db 28, GROWTH
	db 38, DOUBLE_EDGE
	db 43, SYNTHESIS
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 19, RAGE
	db 25, SCARY_FACE
	db 28, SLASH
	db 34, FLAMETHROWER
	db 37, FIRE_SPIN
	db 42, DRAGON_RAGE
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 22, RAGE
	db 28, SCARY_FACE
	db 31, SLASH
	db 37, FLAMETHROWER
	db 40, DRAGON_RAGE
	db 45, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW
	db 22, RAGE
	db 28, SCARY_FACE
	db 31, SLASH
	db 36, WING_ATTACK
	DB 40, FLAMETHROWER
	db 44, AIR_SLASH
	db 54, HEAT_WAVE
	db 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 13, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
	db 25, BUBBLEBEAM
	db 31, RAIN_DANCE
	db 36, AQUA_JET
	db 40, SKULL_BASH
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 13, BITE
	db 22, RAPID_SPIN
	db 25, PROTECT
	db 28, BUBBLEBEAM
	db 34, RAIN_DANCE
	db 39, AQUA_JET
	db 43, SKULL_BASH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 13, BITE
	db 22, RAPID_SPIN
	db 25, PROTECT
	db 28, BUBBLEBEAM
	db 34, RAIN_DANCE
	db 42, AQUA_JET
	db 45, SKULL_BASH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 12, POISONPOWDER
	db 12, STUN_SPORE
	db 12, SLEEP_POWDER
	db 16, GUST
	db 18, SUPERSONIC
	db 23, WHIRLWIND
	db 28, PSYBEAM
	db 34, AIR_SLASH
	db 40, SAFEGUARD
	db 48, HURRICANE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 13, FOCUS_ENERGY
	db 16, RAGE
	db 19, PURSUIT
	db 22, VENOSHOCK
	db 28, PIN_MISSILE
	db 34, DRILL_RUN
	db 40, AGILITY
	db 46, X_SCISSOR
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 21, TWISTER
	db 26, WING_ATTACK
	db 31, AGILITY
	db 37, ROOST
	db 42, AIR_SLASH
	db 49, MIRROR_MOVE
	db 53, HURRICANE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 23, TWISTER
	db 28, WING_ATTACK
	db 34, AGILITY
	db 41, ROOST
	db 46, AIR_SLASH
	db 52, MIRROR_MOVE
	db 57, HURRICANE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 23, TWISTER
	db 28, WING_ATTACK
	db 34, AGILITY
	db 42, ROOST
	db 48, AIR_SLASH
	db 54, MIRROR_MOVE
	db 60, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 22, CRUNCH
	db 28, SUPER_FANG
	db 34, DOUBLE_EDGE
	db 40, ENDURE
	db 46, FLAIL
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 23, CRUNCH
	db 31, SUPER_FANG
	db 37, DOUBLE_EDGE
	db 44, ENDURE
	db 51, FLAIL
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, PURSUIT
	db 17, AIR_CUTTER
	db 21, MIRROR_MOVE
	db 25, AGILITY
	db 29, FOCUS_ENERGY
	db 33, ROOST
	db 37, DRILL_PECK
	db 43, DRILL_RUN
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, LEER
	db 1, FURY_ATTACK
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, PURSUIT
	db 17, AIR_CUTTER
	db 23, MIRROR_MOVE
	db 28, AGILITY
	db 33, FOCUS_ENERGY
	db 38, DRILL_PECK
	db 43, ROOST
	db 50, DRILL_RUN
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 25, MUD_BOMB
	db 28, PURSUIT
	db 31, VENOSHOCK
	db 36, CRUNCH
	db 43, HAZE
	db 49, SLUDGE_BOMB
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 27, MUD_BOMB
	db 31, PURSUIT
	db 36, VENOSHOCK
	db 42, CRUNCH
	db 48, HAZE
	db 54, SLUDGE_BOMB
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 5, GROWL
	db 6, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 18, DOUBLE_TEAM
	db 21, SLAM
	db 26, SPARK
	db 33, AGILITY
	db 37, THUNDERBOLT
	db 42, LIGHT_SCREEN
	db 50, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 7, SAND_ATTACK
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 15, SWIFT
	db 19, FURY_SWIPES
	db 21, SLASH
	db 25, ROLLOUT
	db 31, DRILL_RUN
	db 37, X_SCISSOR
	db 43, EARTHQUAKE
	db 49, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 3, DEFENSE_CURL
	db 7, SAND_ATTACK
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 15, SWIFT
	db 19, FURY_SWIPES
	db 21, SLASH
	db 27, ROLLOUT
	db 33, DRILL_RUN
	db 39, X_SCISSOR
	db 46, EARTHQUAKE
	db 54, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 8, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_SWIPES
	db 23, BITE
	db 28, CHARM
	db 33, VENOSHOCK
	db 38, CRUNCH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 8, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_SWIPES
	db 25, BITE
	db 31, CHARM
	db 37, VENOSHOCK
	db 42, CRUNCH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 23, BODY_SLAM
	db 34, ATTRACT
	db 43, DRILL_RUN
	db 55, SUBMISSION
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_ATTACK
	db 23, HORN_ATTACK
	db 28, ATTRACT
	db 33, VENOSHOCK
	db 38, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_ATTACK
	db 25, HORN_ATTACK
	db 31, ATTRACT
	db 37, VENOSHOCK
	db 42, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 34, TOXIC
	db 43, DRILL_RUN
	db 55, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 19, MINIMIZE
	db 26, ENCORE
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 12, ROAR
	db 16, WILL_O_WISP
	db 21, CONFUSE_RAY
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, HEX
	db 42, EXTRASENSORY
	db 48, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, NASTY_PLOT
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, POUND
	db 9, DEFENSE_CURL
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 44, MIMIC
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SUPERSONIC
	db 9, SCREECH
	db 12, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
	db 25, AIR_CUTTER
	db 29, MEAN_LOOK
	db 33, SUPER_FANG
	db 37, HAZE
	db 41, AIR_SLASH
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 9, SCREECH
	db 12, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
	db 27, AIR_CUTTER
	db 33, MEAN_LOOK
	db 39, SUPER_FANG
	db 45, HAZE
	db 51, AIR_SLASH
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, MEGA_DRAIN
	db 26, SLUDGE
	db 32, MOONLIGHT
	db 37, GIGA_DRAIN
	db 41, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 23, MEGA_DRAIN
	db 29, SLUDGE
	db 35, MOONLIGHT
	db 41, GIGA_DRAIN
	db 48, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, SPORE
	db 22, SLASH
	db 27, GROWTH
	db 33, GIGA_DRAIN
	db 38, X_SCISSOR
	db 43, LEECH_LIFE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, SPORE
	db 22, SLASH
	db 29, GROWTH
	db 35, GIGA_DRAIN
	db 41, X_SCISSOR
	db 41, CROSS_POISON
	db 49, LEECH_LIFE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, VENOSHOCK
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 35, LEECH_LIFE
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, VENOSHOCK
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 36, LEECH_LIFE
	db 42, PSYCHIC_M
	db 49, AIR_SLASH
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 12, FURY_SWIPES
	db 17, DIG
	db 22, QUICK_ATTACK
	db 25, SAND_ATTACK
	db 28, MUD_BOMB
	db 31, SLASH
	db 37, EARTHQUAKE
	db 40, FISSURE
	db 46, NIGHT_SLASH
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 5, GROWL
	db 9, MAGNITUDE
	db 12, FURY_SWIPES
	db 17, DIG
	db 22, QUICK_ATTACK
	db 25, SAND_ATTACK
	DB 29, MUD_BOMB
	db 32, SLASH
	db 39, EARTHQUAKE
	db 43, FISSURE
	db 50, NIGHT_SLASH
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, FURY_SWIPES
	db 14, PAY_DAY
	db 17, CHARM
	db 22, FAINT_ATTACK
	db 25, HYPNOSIS
	db 29, SCREECH
	db 32, SLASH
	db 35, NASTY_PLOT
	db 44, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, FURY_SWIPES
	db 14, PAY_DAY
	db 17, CHARM
	db 22, FAINT_ATTACK
	db 25, HYPNOSIS
	db 29, SCREECH
	db 33, SLASH
	db 38, NASTY_PLOT
	db 47, NIGHT_SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 22, BUBBLEBEAM
	db 27, FURY_SWIPES
	db 31, SCREECH
	db 35, PSYCH_UP
	db 40, EXTRASENSORY
	db 44, NASTY_PLOT
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DISABLE
	db 1, CONFUSION
	db 5, TAIL_WHIP
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 22, BUBBLEBEAM
	db 27, FURY_SWIPES
	db 31, SCREECH
	db 36, PSYCH_UP
	db 42, EXTRASENSORY
	db 47, NASTY_PLOT
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 9, FURY_SWIPES
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, FOCUS_ENERGY
	db 33, SWAGGER
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, RAGE
	db 9, FURY_SWIPES
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, FOCUS_ENERGY
	db 34, SWAGGER
	db 40, CROSS_CHOP
	db 47, SCREECH
	db 54, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 6, EMBER
	db 9, LEER
	db 14, FORESIGHT
	db 20, FLAME_WHEEL
	db 25, REVERSAL
	db 31, TAKE_DOWN
	db 34, FLAMETHROWER
	db 39, AGILITY
	db 42, CRUNCH
	db 45, HEAT_WAVE
	db 52, OUTRAGE
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 11, DOUBLESLAP
	db 15, MUD_BOMB
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 31, BELLY_DRUM
	db 37, AMNESIA
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 7, HYPNOSIS
	db 11, DOUBLESLAP
	db 15, MUD_BOMB
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 32, BELLY_DRUM
	db 40, AMNESIA
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 35, SUBMISSION
	db 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, -1, ALAKAZAM
	db EVOLVE_LEVEL, 40, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 24, REFLECT
	db 28, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, LIGHT_SCREEN
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 24, REFLECT
	db 28, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, LIGHT_SCREEN
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 10, KARATE_CHOP
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
	db 25, ROCK_SMASH
	db 31, SUBMISSION
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_TRADE, -1, MACHAMP
	db EVOLVE_LEVEL, 40, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 7, FOCUS_ENERGY
	db 10, KARATE_CHOP
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
	db 25, ROCK_SMASH
	db 32, SUBMISSION
	db 40, CROSS_CHOP
	db 44, SCARY_FACE
	db 51, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 7, FOCUS_ENERGY
	db 10, KARATE_CHOP
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
	db 25, ROCK_SMASH
	db 32, SUBMISSION
	db 40, CROSS_CHOP
	db 44, SCARY_FACE
	db 51, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 29, SWEET_SCENT
	db 35, RAZOR_LEAF
	db 41, SLUDGE
	db 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 29, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 43, SLUDGE
	db 49, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, WRAP
	db 12, ACID
	db 15, TOXIC
	db 19, BUBBLEBEAM
	db 25, BARRIER
	db 31, VENOSHOCK
	db 37, SCREECH
	db 43, HEX
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, WRAP
	db 5, SUPERSONIC
	db 8, WRAP
	db 12, ACID
	db 15, TOXIC
	db 19, BUBBLEBEAM
	db 25, BARRIER
	db 36, VENOSHOCK
	db 42, SCREECH
	db 49, HEX
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, SELFDESTRUCT
	db 22, ROLLOUT
	db 25, ROCK_BLAST
	db 29, EARTHQUAKE
	db 32, EXPLOSION
	db 36, DOUBLE_EDGE
	db 39, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_TRADE, -1, GOLEM
	db EVOLVE_LEVEL, 40, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 5, DEFENSE_CURL
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, SELFDESTRUCT
	db 22, ROLLOUT
	db 27, ROCK_BLAST
	db 33, EARTHQUAKE
	db 38, EXPLOSION
	db 44, DOUBLE_EDGE
	db 49, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 5, DEFENSE_CURL
	db 11, ROCK_THROW
	db 15, MAGNITUDE
	db 18, SELFDESTRUCT
	db 22, ROLLOUT
	db 27, ROCK_BLAST
	db 33, EARTHQUAKE
	db 38, EXPLOSION
	db 44, DOUBLE_EDGE
	db 49, STONE_EDGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 25, FIRE_SPIN
	db 28, TAKE_DOWN
	db 34, AGILITY
	db 38, FIRE_BLAST
	db 42, BOUNCE
	db 46, JUMP_KICK
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 25, FIRE_SPIN
	db 28, TAKE_DOWN
	db 34, AGILITY
	db 38, FIRE_BLAST
	db 40, JUMP_KICK
	db 47, BOUNCE
	db 55, DRILL_RUN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
	db 29, BUBBLEBEAM
	db 34, EXTRASENSORY
	db 39, RECOVER
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 53, RAIN_DANCE
	db 57, PSYCH_UP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
	db 29, BUBBLEBEAM
	db 34, EXTRASENSORY
	db 41, RECOVER
	db 47, AMNESIA
	db 54, PSYCHIC_M
	db 61, RAIN_DANCE
	db 67, PSYCH_UP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 27, LOCK_ON
	db 30, SELFDESTRUCT
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 52, EXPLOSION
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 27, LOCK_ON
	db 30, SELFDESTRUCT
	db 34, SWIFT
	db 40, SCREECH
	db 46, ZAP_CANNON
	db 54, EXPLOSION
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 1, LEER
	db 7, FURY_ATTACK
	db 13, WING_ATTACK
	db 19, SLASH
	db 21, AIR_CUTTER
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 33, NIGHT_SLASH
	db 37, AIR_SLASH
	db 43, FALSE_SWIPE
	db 50, RAZOR_LEAF
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_ATTACK
	db 19, PURSUIT
	db 25, AIR_CUTTER
	db 33, DRILL_PECK
	db 37, AGILITY
	db 41, JUMP_KICK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 5, QUICK_ATTACK
	db 10, RAGE
	db 14, FURY_ATTACK
	db 19, PURSUIT
	db 25, AIR_CUTTER
	db 34, DRILL_PECK
	db 41, AGILITY
	db 47, JUMP_KICK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, LICK
	db 11, ICY_WIND
	db 17, ENCORE
	db 21, REST
	db 27, AURORA_BEAM
	db 31, AQUA_JET
	db 37, TAKE_DOWN
	db 43, ICE_BEAM
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, ICY_WIND
	db 3, GROWL
	db 7, LICK
	db 11, ICY_WIND
	db 17, ENCORE
	db 21, REST
	db 27, AURORA_BEAM
	db 31, AQUA_JET
	db 38, TAKE_DOWN
	db 45, ICE_BEAM
	db 52, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, MINIMIZE
	db 20, SLUDGE
	db 25, MUD_BOMB
	db 31, SCREECH
	db 36, SLUDGE_BOMB
	db 42, ACID_ARMOR
	db 48, TOXIC
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, SMOG
	db 1, POUND
	db 1, HARDEN
	db 5, HARDEN
	db 10, DISABLE
	db 16, MINIMIZE
	db 20, SLUDGE
	db 25, MUD_BOMB
	db 31, SCREECH
	db 36, SLUDGE_BOMB
	db 46, ACID_ARMOR
	db 53, TOXIC
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 8, SUPERSONIC
	db 13, WATER_GUN
	db 16, PROTECT
	db 20, LEER
	db 25, BUBBLEBEAM
	db 32, AURORA_BEAM
	db 37, SELFDESTRUCT
	db 43, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 41, SPIKE_CANNON
	db 52, EXPLOSION
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, MEAN_LOOK
	db 13, CURSE
	db 16, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 23, NIGHTMARE
	db 28, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 43, HEX
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
	db EVOLVE_LEVEL, 40, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, NIGHTMARE
	db 8, MEAN_LOOK
	db 13, CURSE
	db 16, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 23, NIGHTMARE
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 50, DESTINY_BOND
	db 55, HEX
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, NIGHTMARE
	db 8, MEAN_LOOK
	db 13, CURSE
	db 16, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 23, NIGHTMARE
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 50, DESTINY_BOND
	db 55, HEX
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, BIND
	db 6, SCREECH
	db 9, ROCK_THROW
	db 14, RAGE
	db 17, DIG
	db 22, SANDSTORM
	db 25, SLAM
	db 31, DRAGONBREATH
	db 37, CURSE
	db 42, IRON_TAIL
	db 49, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 21, MEDITATE
	db 26, PSYBEAM
	db 29, PSYCH_UP
	db 32, SWAGGER
	db 37, PSYCHIC_M
	db 43, NASTY_PLOT
	db 45, EXTRASENSORY
	db 53, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 21, MEDITATE
	db 26, PSYBEAM
	db 31, PSYCH_UP
	db 35, SWAGGER
	db 41, PSYCHIC_M
	db 47, NASTY_PLOT
	db 53, EXTRASENSORY
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 5, VICEGRIP
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, ENDURE
	db 31, GUILLOTINE
	db 36, AGILITY
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, LEER
	db 1, VICEGRIP
	db 5, VICEGRIP
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 21, METAL_CLAW
	db 25, STOMP
	db 31, ENDURE
	db 36, GUILLOTINE
	db 42, AGILITY
	db 48, FOCUS_ENERGY
	db 54, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, SONICBOOM
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 22, LIGHT_SCREEN
	db 27, SELFDESTRUCT
	db 33, SWIFT
	db 37, THUNDERBOLT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SELFDESTRUCT
	db 8, SONICBOOM
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 22, LIGHT_SCREEN
	db 27, SELFDESTRUCT
	db 35, SWIFT
	db 41, THUNDERBOLT
	db 47, EXPLOSION
	db 54, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 15, MEGA_DRAIN
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 27, CONFUSION
	db 33, SYNTHESIS
	db 39, SOLARBEAM
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, SCREECH
	db 13, HEADBUTT
	db 17, SCARY_FACE
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, EARTHQUAKE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, HEADBUTT
	db 5, TAIL_WHIP
	db 9, SCREECH
	db 13, HEADBUTT
	db 17, SCARY_FACE
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, EARTHQUAKE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 5, MEDITATE
	db 11, FOCUS_ENERGY
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 25, SWAGGER
	db 29, JUMP_KICK
	db 33, MIND_READER
	db 37, FORESIGHT
	db 41, ENDURE
	db 46, HI_JUMP_KICK
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, MACH_PUNCH
	db 21, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, DOUBLE_TEAM
	db 38, SKY_UPPERCUT
	db 44, PROTECT
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, WRAP
	db 17, STOMP
	db 21, RECOVER
	db 25, DISABLE
	db 29, SLAM
	db 33, ROLLOUT
	db 38, SCREECH
	db 43, DOUBLE_EDGE
	db 49, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, TACKLE
	db 6, RAPID_SPIN
	db 9, SMOKESCREEN
	db 15, SCREECH
	db 19, SELFDESTRUCT
	db 24, SLUDGE
	db 29, PAIN_SPLIT
	db 33, HAZE
	db 37, SLUDGE_BOMB
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, TACKLE
	db 1, SELFDESTRUCT
	db 6, RAPID_SPIN
	db 9, SMOKESCREEN
	db 15, SCREECH
	db 19, SELFDESTRUCT
	db 24, SLUDGE
	db 29, PAIN_SPLIT
	db 33, HAZE
	db 39, SLUDGE_BOMB
	db 45, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 9, STOMP
	db 13, FURY_ATTACK
	db 21, SCARY_FACE
	db 25, ROCK_BLAST
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
	db 45, STONE_EDGE
	db 49, EARTHQUAKE
	db 57, MEGAHORN 
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 9, STOMP
	db 13, FURY_ATTACK
	db 21, SCARY_FACE
	db 25, ROCK_BLAST
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
	db 45, STONE_EDGE
	db 49, EARTHQUAKE
	db 57, MEGAHORN 
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 12, SOFTBOILED
	db 16, DOUBLESLAP
	db 20, MINIMIZE
	db 23, SING
	db 29, EGG_BOMB
	db 31, DEFENSE_CURL
	db 37, LIGHT_SCREEN
	db 42, DOUBLE_EDGE
	db 49, HEAL_BELL
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SLEEP_POWDER
	db 8, ABSORB
	db 12, GROWTH
	db 15, POISONPOWDER
	db 19, VINE_WHIP
	db 22, BIND
	db 26, MEGA_DRAIN
	db 29, STUN_SPORE
	db 33, ANCIENTPOWER
	db 39, SLAM
	db 45, GIGA_DRAIN
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, LEER
	db 7, QUICK_ATTACK
	db 10, TAIL_WHIP
	db 13, BITE
	db 19, MACH_PUNCH
	db 22, RAGE
	db 25, DIZZY_PUNCH
	db 31, CRUNCH
	db 34, ENDURE
	db 39, THRASH
	db 43, SUBSTITUTE
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, FOCUS_ENERGY
	db 16, BUBBLEBEAM
	db 23, AGILITY
	db 27, TWISTER
	db 31, OCTAZOOKA
	db 35, HYDRO_PUMP
	db 38, DRAGONBREATH
	db 44, OUTRAGE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, FOCUS_ENERGY
	db 16, BUBBLEBEAM
	db 23, AGILITY
	db 27, TWISTER
	db 31, OCTAZOOKA
	db 40, HYDRO_PUMP
	db 48, DRAGONBREATH
	db 57, OUTRAGE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, BUBBLEBEAM
	db 21, FLAIL
	db 27, FURY_ATTACK
	db 33, WATERFALL
	db 39, HORN_DRILL
	db 45, AGILITY
	db 49, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, TAIL_WHIP
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, BUBBLEBEAM
	db 21, FLAIL
	db 27, FURY_ATTACK
	db 33, WATERFALL
	db 41, HORN_DRILL
	db 47, AGILITY
	db 54, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 15, RECOVER
	db 21, SWIFT
	db 27, BUBBLEBEAM
	db 33, MINIMIZE
	db 39, LIGHT_SCREEN
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, CONFUSION
	db 4, SUBSTITUTE
	db 8, MEDITATE
	db 11, ENCORE
	db 15, DOUBLESLAP
	db 18, MIMIC
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 31, HYPNOSIS
	db 37, PSYCHIC_M
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, AIR_CUTTER
	db 37, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 47, NIGHT_SLASH
	db 53, AIR_SLASH
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 5, LICK
	db 8, LOVELY_KISS
	db 11, POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, ICE_PUNCH
	db 21, MEAN_LOOK
	db 27, MEDITATE
	db 33, BODY_SLAM
	db 35, LOVELY_KISS
	db 39, THRASH
	db 47, PERISH_SONG
	db 55, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERSHOCK
	db 7, THUNDERSHOCK
	db 10, LOW_KICK
	db 16, SWIFT
	db 19, SPARK
	db 25, LIGHT_SCREEN
	db 31, THUNDERPUNCH
	db 38, THUNDERBOLT
	db 45, SCREECH
	db 54, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, FAINT_ATTACK
	db 19, FIRE_SPIN
	db 25, CONFUSE_RAY
	db 31, FIRE_PUNCH
	db 39, FLAMETHROWER 
	db 46, SUNNY_DAY
	db 54, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 4, BIND
	db 8, SEISMIC_TOSS
	db 13, HARDEN
	db 21, SUBMISSION
	db 28, THRASH
	db 35, X_SCISSOR
	db 38, SWORDS_DANCE
	db 45, GUILLOTINE
	db 52, CROSS_CHOP
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, FOCUS_ENERGY
	db 29, HEADBUTT
	db 35, TAKE_DOWN
	db 41, SWAGGER
	db 48, THRASH
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 23, DRAGON_RAGE
	db 26, LEER
	db 29, TWISTER
	db 32, THRASH
	db 35, SLAM
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
	db 55, HURRICANE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 4, MIST
	db 7, CONFUSE_RAY
	db 11, ICY_WIND
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 29, PERISH_SONG
	db 35, ICE_BEAM
	db 43, SAFEGUARD
	db 49, HYDRO_PUMP
	db 55, BLIZZARD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 15, GROWL
	db 22, QUICK_ATTACK
	db 25, BITE
	db 30, GROWTH
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 15, WATER_GUN
	db 22, QUICK_ATTACK
	db 29, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 15, THUNDERSHOCK
	db 22, QUICK_ATTACK
	db 29, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 15, EMBER
	db 22, QUICK_ATTACK
	db 29, BITE
	db 36, FIRE_SPIN
	db 42, HEAT_WAVE
	db 47, LEER
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, TACKLE
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 24, SHARPEN
	db 29, SPARK
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_BOMB
	db 32, PROTECT
	db 39, ANCIENTPOWER
	db 46, ROCK_BLAST
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WITHDRAW
	db 1, BITE
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_BOMB
	db 32, PROTECT
	db 39, ANCIENTPOWER
	db 40, SPIKE_CANNON
	db 49, ROCK_BLAST
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_BOMB
	db 21, SCREECH
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 41, HYDRO_PUMP
	db 47, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_BOMB
	db 21, SCREECH
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 44, HYDRO_PUMP
	db 51, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 9, BITE
	db 15, AGILITY
	db 22, ROAR
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 39, AIR_CUTTER
	db 44, AIR_SLASH
	db 49, ROCK_SLIDE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, BELLY_DRUM
	db 25, REST
	db 29, SLEEP_TALK
	db 33, BODY_SLAM
	db 36, TAKE_DOWN
	db 41, ROLLOUT
	db 49, CRUNCH
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 55, ROOST
	db 62, REFLECT
	db 69, BLIZZARD
	db 76, HURRICANE
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, ROOST
	db 49, DRILL_PECK
	db 55, ROOST
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 20, AGILITY
	db 27, ENDURE
	db 34, FLAMETHROWER
	db 41, ROOST
	db 48, AIR_SLASH
	db 55, HEAT_WAVE
	db 62, SAFEGUARD
	db 69, FLY
	db 76, HURRICANE
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 41, SAFEGUARD
	db 47, OUTRAGE
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 58, OUTRAGE
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 57, ROOST
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 81, HURRICANE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 10, TRANSFORM
	db 20, PSYWAVE
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, MIMIC
	db 80, BATON_PASS
	db 90, NASTY_PLOT
	db 100, HYPER_BEAM
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, REFLECT
	db 13, POISONPOWDER
	db 18, SYNTHESIS
	db 23, SWEET_SCENT
	db 27, BODY_SLAM
	db 32, LIGHT_SCREEN
	db 37, SAFEGUARD
	db 42, HEAL_BELL
	db 48, ANCIENTPOWER
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 6, RAZOR_LEAF
	db 9, REFLECT
	db 13, POISONPOWDER
	db 21, SYNTHESIS
	db 26, SWEET_SCENT
	db 30, BODY_SLAM
	db 35, LIGHT_SCREEN
	db 40, SAFEGUARD
	db 45, HEAL_BELL
	db 51, ANCIENTPOWER
	db 57, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 6, RAZOR_LEAF
	db 9, REFLECT
	db 13, POISONPOWDER
	db 21, SYNTHESIS
	db 26, SWEET_SCENT
	db 30, BODY_SLAM
	db 38, LIGHT_SCREEN
	db 43, SAFEGUARD
	db 48, HEAL_BELL
	db 54, ANCIENTPOWER
	db 60, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 14, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 30, SWIFT
	db 36, FLAMETHROWER
	db 42, ROLLOUT
	db 48, DOUBLE_EDGE
	db 54, OVERHEAT
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 6, SMOKESCREEN
	db 10, EMBER
	db 14, QUICK_ATTACK
	db 22, FLAME_WHEEL
	db 27, DEFENSE_CURL
	db 33, SWIFT
	db 39, FLAMETHROWER
	db 45, ROLLOUT
	db 51, DOUBLE_EDGE
	db 57, OVERHEAT
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 14, QUICK_ATTACK
	db 22, FLAME_WHEEL
	db 27, DEFENSE_CURL
	db 33, SWIFT
	db 42, FLAMETHROWER
	db 48, ROLLOUT
	db 54, DOUBLE_EDGE
	db 60, OVERHEAT
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, RAGE
	db 8, WATER_GUN
	db 13, BITE
	db 18, SCARY_FACE
	db 23, SLASH
	db 29, CRUNCH
	db 34, SCREECH
	db 40, THRASH
	db 46, SUBMISSION
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 6, RAGE
	db 8, WATER_GUN
	db 13, BITE
	db 18, SCARY_FACE
	db 25, SLASH
	db 31, CRUNCH
	db 36, SCREECH
	db 42, THRASH
	db 48, SUBMISSION
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 6, RAGE
	db 8, WATER_GUN
	db 13, BITE
	db 18, SCARY_FACE
	db 25, SLASH
	db 33, CRUNCH
	db 38, SCREECH
	db 44, THRASH
	db 50, SUBMISSION
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 19, PURSUIT
	db 25, SLAM
	db 28, REST
	db 31, BELLY_DRUM
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, EXTREMESPEED
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 21, PURSUIT
	db 28, SLAM
	db 32, REST
	db 36, BELLY_DRUM
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, EXTREMESPEED
	db 56, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, FORESIGHT
	db 9, HYPNOSIS
	db 13, PECK
	db 17, REFLECT
	db 21, CONFUSION
	db 25, TAKE_DOWN
	db 29, AIR_SLASH
	db 33, NIGHT_SHADE
	db 36, EXTRASENSORY
	db 42, ROOST
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, PECK
	db 5, FORESIGHT
	db 9, HYPNOSIS
	db 13, PECK
	db 17, REFLECT
	db 22, CONFUSION
	db 27, TAKE_DOWN
	db 32, AIR_SLASH
	db 37, NIGHT_SHADE
	db 42, EXTRASENSORY
	db 48, ROOST
	db 55, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
	db 9, COMET_PUNCH
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 22, BATON_PASS
	db 25, AIR_CUTTER
	db 30, AGILITY
	db 33, SWIFT
	db 38, DOUBLE_EDGE
	db 41, AIR_SLASH
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 9, COMET_PUNCH
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 24, BATON_PASS
	db 26, AIR_CUTTER
	db 32, AGILITY
	db 36, SWIFT
	db 41, DOUBLE_EDGE
	db 46, AIR_SLASH
	db 52, SKY_UPPERCUT
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, FURY_SWIPES
	db 12, ABSORB
	db 15, NIGHT_SHADE
	db 19, CONFUSION
	db 22, PIN_MISSILE
	db 26, QUICK_ATTACK
	db 29, SPIDER_WEB
	db 33, AGILITY
	db 36, CROSS_POISON
	db 40, PSYCHIC_M
	db 43, LEECH_LIFE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 1, ABSORB
	db 5, SCARY_FACE
	db 8, FURY_SWIPES
	db 12, ABSORB
	db 15, NIGHT_SHADE
	db 19, CONFUSION
	db 22, PIN_MISSILE
	db 27, QUICK_ATTACK
	db 31, SPIDER_WEB
	db 35, AGILITY
	db 39, CROSS_POISON
	db 43, PSYCHIC_M
	db 47, LEECH_LIFE
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 9, SCREECH
	db 12, BITE
	db 17, WING_ATTACK
	db 21, CONFUSE_RAY
	db 27, AIR_CUTTER
	db 33, MEAN_LOOK
	db 39, SUPER_FANG
	db 45, HAZE
	db 51, AIR_SLASH
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, FLAIL
	db 13, FLASH
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
	db 29, BUBBLEBEAM
	db 34, THUNDERBOLT
	db 39, REST
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, FLAIL
	db 13, FLASH
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
	db 30, BUBBLEBEAM
	db 40, THUNDERBOLT
	db 47, REST
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 12, SWEET_KISS
	db 18, NASTY_PLOT
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, SWEET_KISS
	db 13, MIMIC
	db 16, SWIFT
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, POUND
	db 9, DEFENSE_CURL
	db 13, SWEET_KISS
	db 17, GROWTH
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 10, SWEET_KISS
	db 15, SING
	db 19, ENCORE
	db 24, EXTRASENSORY
	db 28, EGG_BOMB
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 42, BATON_PASS
	db 46, DOUBLE_EDGE
	db 52, FUTURE_SIGHT
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 10, SWEET_KISS
	db 15, SING
	db 19, ENCORE
	db 24, EXTRASENSORY
	db 28, ROOST
	db 33, AIR_SLASH
	db 37, SAFEGUARD
	db 42, BATON_PASS
	db 46, DOUBLE_EDGE
	db 52, EXTREMESPEED
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 15, CONFUSION
	db 20, QUICK_ATTACK
	db 23, CONFUSE_RAY
	db 28, ROOST
	db 33, SAFEGUARD
	db 36, FUTURE_SIGHT
	db 39, CALM_MIND
	db 44, AIR_SLASH
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 15, CONFUSION
	db 20, QUICK_ATTACK
	db 23, CONFUSE_RAY
	db 30, ROOST
	db 35, SAFEGUARD
	db 39, FUTURE_SIGHT
	db 42, CALM_MIND
	db 48, AIR_SLASH
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 9, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 19, COTTON_SPORE
	db 23, SPARK
	db 27, TAKE_DOWN
	db 32, LIGHT_SCREEN
	db 36, CHARM
	db 40, HEAL_BELL
	db 47, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 5, GROWL
	db 9, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 20, COTTON_SPORE
	db 24, SPARK
	db 29, TAKE_DOWN
	db 36, LIGHT_SCREEN
	db 40, CHARM
	db 45, HEAL_BELL
	db 51, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 5, GROWL
	db 9, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 20, COTTON_SPORE
	db 24, SPARK
	db 29, TAKE_DOWN
	db 37, LIGHT_SCREEN
	db 42, CHARM
	db 48, HEAL_BELL
	db 55, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 7, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
	db 23, REST
	db 27, DOUBLE_EDGE
	db 32, RAIN_DANCE
	db 37, SLAM
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 3, DEFENSE_CURL
	db 7, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
	db 26, REST
	db 32, DOUBLE_EDGE
	db 38, RAIN_DANCE
	db 43, SLAM
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 6, FLAIL
	db 9, LOW_KICK
	db 14, ROCK_THROW
	db 17, HARDEN
	db 22, HEADBUTT
	db 25, FAINT_ATTACK
	db 30, ROCK_SLIDE
	db 36, SLAM
	db 42, DOUBLE_EDGE
	db 48, CROSS_CHOP
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 7, TAIL_WHIP
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, ABSORB
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 29, COTTON_SPORE
	db 36, GIGA_DRAIN
	db 42, BOUNCE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 4, SYNTHESIS
	db 7, TAIL_WHIP
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, ABSORB
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, COTTON_SPORE
	db 39, GIGA_DRAIN
	db 44, BOUNCE
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 4, SYNTHESIS
	db 7, TAIL_WHIP
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, ABSORB
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 34, COTTON_SPORE
	db 40, GIGA_DRAIN
	db 46, BOUNCE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 8, LICK
	db 11, BATON_PASS
	db 15, CHARM
	db 18, FURY_SWIPES
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
	db 32, DOUBLE_TEAM
	db 36, BOUNCE
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 5, MEGA_DRAIN
	db 9, LEECH_SEED
	db 13, SING
	db 19, SUNNY_DAY
	db 25, RAZOR_LEAF
	db 31, SYNTHESIS
	db 38, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, POUND
	db 1, GROWTH
	db 5, MEGA_DRAIN
	db 9, LEECH_SEED
	db 13, SING
	db 19, SUNNY_DAY
	db 25, RAZOR_LEAF
	db 33, SYNTHESIS
	db 41, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, PROTECT
	db 22, SUPERSONIC
	db 27, AIR_CUTTER
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, ENDURE
	db 54, AIR_SLASH
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 9, SLAM
	db 16, MUD_BOMB
	db 22, AMNESIA
	db 28, RECOVER
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, MIST
	db 43, HAZE
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 9, SLAM
	db 16, MUD_BOMB
	db 24, AMNESIA
	db 30, RECOVER
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, MIST
	db 48, HAZE
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 15, CONFUSION
	db 22, QUICK_ATTACK
	db 29, SWIFT
	db 36, PSYBEAM
	db 42, PSYCH_UP
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 15, PURSUIT
	db 22, QUICK_ATTACK
	db 29, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, SCREECH
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, SCREECH
	db 31, FAINT_ATTACK
	db 35, NASTY_PLOT
	db 41, MEAN_LOOK
	db 45, NIGHT_SLASH
	db 53, DRILL_PECK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 11, WATER_GUN
	db 15, CONFUSION
	db 20, DISABLE
	db 25, HEADBUTT
	db 29, BUBBLEBEAM
	db 35, EXTRASENSORY
	db 39, NASTY_PLOT
	db 43, SWAGGER
	db 48, PSYCHIC_M
	db 53, PSYCH_UP
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 5, LICK
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 27, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, SHADOW_BALL
	db 41, PERISH_SONG
	db 48, NASTY_PLOT
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 1, SUPERSONIC
	db 1, TELEPORT
	db 7, PSYWAVE
	db 12, CONFUSION
	db 19, MIMIC
	db 22, ANCIENTPOWER
	db 28, SAFEGUARD
	db 36, AGILITY
	db 42, PSYCHIC_M
	db 49, BATON_PASS
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 30, MEAN_LOOK
	db 40, CHARM
	db 50, ENCORE
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 1, STOMP
	db 5, FORESIGHT
	db 10, STOMP
	db 14, AGILITY
	db 19, PSYBEAM
	db 23, BATON_PASS
	db 28, BITE
	db 34, PSYCHIC_M
	db 41, NASTY_PLOT
	db 46, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, TAKE_DOWN
	db 12, RAPID_SPIN
	db 17, COUNTER
	db 23, SPIKES
	db 28, SWIFT
	db 31, EXPLOSION
	db 34, HARDEN
	db 39, PAIN_SPLIT
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 6, SELFDESTRUCT
	db 9, TAKE_DOWN
	db 12, RAPID_SPIN
	db 17, COUNTER
	db 23, SPIKES
	db 28, SWIFT
	db 34, EXPLOSION
	db 39, HARDEN
	db 42, PAIN_SPLIT
	db 45, DOUBLE_EDGE
	db 52, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 6, DIG
	db 9, PURSUIT
	db 13, GLARE
	db 17, ROLLOUT
	db 21, HEX
	db 25, BODY_SLAM
	db 29, SCREECH
	db 33, AIR_SLASH
	db 37, TAKE_DOWN
	db 41, ANCIENTPOWER
	db 45, DRILL_RUN
	db 49, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SAND_ATTACK
	db 9, HARDEN
	db 12, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 20, AIR_CUTTER
	db 23, FAINT_ATTACK
	db 27, SCREECH
	db 31, SLASH
	db 34, SWORDS_DANCE
	db 38, SKY_UPPERCUT
	db 42, X_SCISSOR
	db 45, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BIND
	db 1, HARDEN
	db 6, SCREECH
	db 9, ROCK_THROW
	db 14, RAGE
	db 17, DIG
	db 22, SANDSTORM
	db 25, SLAM
	db 30, DRILL_RUN
	db 33, DRAGONBREATH
	db 38, IRON_TAIL
	db 41, CRUNCH
	db 46, DOUBLE_EDGE
	db 49, STONE_EDGE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, CROSS_CHOP
	db 43, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 42, CROSS_CHOP
	db 49, CRUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 9, HARDEN
	db 9, MINIMIZE
	db 13, WATER_GUN
	db 17, ROLLOUT
	db 21, VENOSHOCK
	db 25, AQUA_JET
	db 29, PAIN_SPLIT
	db 35, PIN_MISSILE
	db 39, TAKE_DOWN
	db 46, DESTINY_BOND
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, AIR_CUTTER
	db 37, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 47, NIGHT_SLASH
	db 53, STEEL_WING
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 1, COUNTER
	db 9, WRAP
	db 13, ENCORE
	db 19, ROLLOUT
	db 22, SAFEGUARD
	db 27, REST
	db 32, ROCK_SLIDE
	db 35, SLUDGE_BOMB
	db 42, STONE_EDGE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 7, FURY_ATTACK
	db 12, ENDURE
	db 19, ROCK_SMASH
	db 25, COUNTER
	db 31, TAKE_DOWN
	db 37, NIGHT_SLASH
	db 43, REVERSAL
	db 49, CROSS_CHOP
	db 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, QUICK_ATTACK
	db 10, SCREECH
	db 14, FAINT_ATTACK
	db 21, FURY_SWIPES
	db 24, NASTY_PLOT
	db 28, ICY_WIND
	db 35, NIGHT_SLASH
	db 38, BEAT_UP
	db 42, METAL_CLAW
	db 49, BLIZZARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 8, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, SLEEP_TALK
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 8, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, SLEEP_TALK
	db 56, THRASH
	db 62, CROSS_CHOP
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 11, ROCK_THROW
	db 16, HARDEN
	db 23, RECOVER
	db 26, ANCIENTPOWER
	db 31, AMNESIA
	db 38, FLAMETHROWER
	db 41, ROCK_SLIDE
	db 46, BODY_SLAM
	db 53, OVERHEAT
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	db 8, EMBER
	db 11, ROCK_THROW
	db 16, HARDEN
	db 23, RECOVER
	db 26, ANCIENTPOWER
	db 31, AMNESIA
	db 38, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 47, BODY_SLAM
	db 55, OVERHEAT
	db 60, EARTHQUAKE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 8, POWDER_SNOW
	db 13, SAND_ATTACK
	db 16, ENDURE
	db 20, MUD_BOMB
	db 25, ICY_WIND
	db 31, TAKE_DOWN
	db 37, EARTHQUAKE
	db 40, MIST
	db 44, BLIZZARD
	db 49, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, ENDURE
	db 8, POWDER_SNOW
	db 13, SAND_ATTACK
	db 16, ENDURE
	db 20, MUD_BOMB
	db 25, ICY_WIND
	db 31, TAKE_DOWN
	db 37, EARTHQUAKE
	db 41, MIST
	db 47, BLIZZARD
	db 52, AMNESIA
	db 58, ANCIENTPOWER
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 8, WATER_GUN
	db 13, RECOVER
	db 16, ENDURE
	db 20, ROCK_BLAST
	db 25, BUBBLEBEAM
	db 28, SPIKE_CANNON
	db 32, ANCIENTPOWER
	db 39, MIRROR_COAT
	db 43, HEAL_BELL
	db 49, FLAIL
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 19, BUBBLEBEAM
	db 23, FOCUS_ENERGY
	db 27, ROCK_BLAST
	db 32, HYDRO_PUMP
	db 40, ICE_BEAM
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 19, BUBBLEBEAM
	db 23, FOCUS_ENERGY
	db 27, ROCK_BLAST
	db 32, HYDRO_PUMP
	db 36, WRAP
	db 40, ICE_BEAM
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, CHARM
	db 7, PECK
	db 13, POWDER_SNOW
	db 19, AGILITY
	db 24, AURORA_BEAM
	db 29, SPIKES
	db 35, DRILL_PECK
	db 42, ENCORE
	db 49, BLIZZARD
	db 54, BELLY_DRUM
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 4, SUPERSONIC
	db 10, BUBBLEBEAM
	db 13, HEADBUTT
	db 19, AGILITY
	db 22, WING_ATTACK
	db 28, PSYBEAM
	db 31, TAKE_DOWN
	db 37, CONFUSE_RAY
	db 40, BOUNCE
	db 46, ROOST
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, SAND_ATTACK
	db 11, SWIFT
	db 14, AGILITY
	db 20, FURY_ATTACK
	db 24, AIR_CUTTER
	db 27, SPIKES
	db 34, STEEL_WING
	db 40, AIR_SLASH
	db 46, SLASH
	db 45, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, SMOG
	db 13, ROAR
	db 17, BITE
	db 22, FORESIGHT
	db 27, BEAT_UP
	db 30, FLAME_WHEEL
	db 35, FAINT_ATTACK
	db 43, FLAMETHROWER
	db 48, CRUNCH
	db 53, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, SMOG
	db 13, ROAR
	db 17, BITE
	db 22, FORESIGHT
	db 28, BEAT_UP
	db 32, FLAME_WHEEL
	db 38, FAINT_ATTACK
	db 46, FLAMETHROWER
	db 51, CRUNCH
	db 57, NASTY_PLOT
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, FOCUS_ENERGY
	db 16, BUBBLEBEAM
	db 23, AGILITY
	db 27, TWISTER
	db 31, OCTAZOOKA
	db 40, HYDRO_PUMP
	db 48, DRAGONBREATH
	db 57, OUTRAGE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, TAKE_DOWN
	db 15, ROLLOUT
	db 19, WATER_GUN
	db 24, SLAM
	db 28, ENDURE
	db 33, CHARM
	db 37, EARTHQUAKE
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 6, FLAIL
	db 10, TAKE_DOWN
	db 15, ROLLOUT
	db 19, WATER_GUN
	db 24, SLAM
	db 25, MAGNITUDE
	db 28, RAPID_SPIN
	db 33, SCARY_FACE
	db 37, EARTHQUAKE
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, TACKLE
	db 1, CONVERSION
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 24, DEFENSE_CURL
	db 29, SPARK
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, LICK
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, SAND_ATTACK
	db 21, TAKE_DOWN
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, EXTRASENSORY
	db 38, JUMP_KICK
	db 42, BOUNCE
	db 49, MEGAHORN
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 5, MEDITATE
	db 10, COMET_PUNCH
	db 10, LOW_KICK
	db 15, FOCUS_ENERGY
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEDITATE
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, FORESIGHT
	db 25, COUNTER
	db 33, QUICK_ATTACK
	db 37, AGILITY
	db 42, TRIPLE_KICK
	db 46, PROTECT
	db 49, ROLLOUT
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 8, SWEET_KISS
	db 11, POWDER_SNOW
	db 15, CONFUSION
	db 18, SING
	db 21, MEAN_LOOK
	db 25, SCREECH
	db 31, ICY_WIND
	db 37, PSYCHIC_M
	db 41, PERISH_SONG
	db 45, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_KICK
	db 16, SWIFT
	db 19, SPARK
	db 25, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 34, SCREECH
	db 37, THUNDERBOLT
	db 46, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, FAINT_ATTACK
	db 19, FIRE_SPIN
	db 25, CONFUSE_RAY
	db 28, FIRE_PUNCH
	db 37, FLAMETHROWER 
	db 43, SUNNY_DAY
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, MILK_DRINK
	db 15, COUNTER
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, EXTRASENSORY
	db 35, CHARM
	db 42, DOUBLE_EDGE
	db 48, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 12, SOFTBOILED
	db 16, DOUBLESLAP
	db 20, MINIMIZE
	db 23, SING
	db 29, EGG_BOMB
	db 31, DEFENSE_CURL
	db 37, LIGHT_SCREEN
	db 42, DOUBLE_EDGE
	db 49, HEAL_BELL
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
	db 50, EXTRASENSORY
	db 57, RAIN_DANCE
	db 64, EXTREMESPEED
	db 71, THUNDER
	db 78, CALM_MIND
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
	db 50, EXTRASENSORY
	db 57, FIRE_BLAST
	db 64, EXTREMESPEED
	db 71, SACRED_FIRE
	db 78, CALM_MIND
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, ROAR
	db 15, BUBBLEBEAM
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, MIST
	db 43, MIRROR_COAT
	db 50, EXTRASENSORY
	db 57, RAIN_DANCE
	db 64, EXTREMESPEED
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 21, ROCK_SLIDE
	db 27, THRASH
	db 33, SCARY_FACE
	db 39, CRUNCH
	db 45, EARTHQUAKE
	db 51, STONE_EDGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 21, ROCK_SLIDE
	db 27, THRASH
	db 36, SCARY_FACE
	db 42, CRUNCH
	db 48, EARTHQUAKE
	db 54, STONE_EDGE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 21, ROCK_SLIDE
	db 27, THRASH
	db 36, SCARY_FACE
	db 42, CRUNCH
	db 48, EARTHQUAKE
	db 54, STONE_EDGE
	db 63, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 9, SAFEGUARD
	db 15, GUST
	db 23, ROOST
	db 29, CONFUSION
	db 37, RAIN_DANCE
	db 43, SWIFT
	db 51, HYDRO_PUMP
	db 57, RECOVER
	db 65, EXTRASENSORY
	db 71, WHIRLWIND
	db 79, FUTURE_SIGHT
	db 85, AEROBLAST
	db 92, CALM_MIND
	db 99, HURRICANE
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 9, SAFEGUARD
	db 15, GUST
	db 23, ROOST
	db 29, EMBER
	db 37, SUNNY_DAY
	db 43, SWIFT
	db 51, FIRE_BLAST
	db 57, RECOVER
	db 65, EXTRASENSORY
	db 71, WHIRLWIND
	db 79, FUTURE_SIGHT
	db 85, SACRED_FIRE
	db 92, CALM_MIND
	db 99, HURRICANE
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves
