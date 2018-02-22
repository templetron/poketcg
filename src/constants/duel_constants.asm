DECK_NAME_SIZE        EQU 24
DECK_SIZE             EQU 60
MAX_BENCH_POKEMON     EQU 5
MAX_PLAY_AREA_POKEMON EQU 6 ; arena + bench

; hWhoseTurn constants
PLAYER_TURN   EQUS "HIGH(wPlayerDuelVariables)"
OPPONENT_TURN EQUS "HIGH(wOpponentDuelVariables)"

; wDuelFinished constants
DUEL_WON  EQU $1
DUEL_LOST EQU $2
DUEL_DRAW EQU $3

; Box message id's
	const_def
	const BOXMSG_PLAYERS_TURN
	const BOXMSG_OPPONENTS_TURN
	const BOXMSG_BETWEEN_TURNS
	const BOXMSG_DECISION
	const BOXMSG_BENCH_POKEMON
	const BOXMSG_ARENA_POKEMON
	const BOXMSG_COIN_TOSS

; wPlayerDuelVariables or wOpponentDuelVariables constants
DUELVARS_CARD_LOCATIONS                  EQUS "LOW(wPlayerCardLocations)"              ; 00
DUELVARS_HAND                            EQUS "LOW(wPlayerHand)"                       ; 42
DUELVARS_DECK_CARDS                      EQUS "LOW(wPlayerDeckCards)"                  ; 7e
DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK     EQUS "LOW(wPlayerNumberOfCardsNotInDeck)"     ; ba
DUELVARS_ARENA_CARD                      EQUS "LOW(wPlayerArenaCard)"                  ; bb
DUELVARS_BENCH                           EQUS "LOW(wPlayerBench)"                      ; bc
DUELVARS_ARENA_CARD_HP                   EQUS "LOW(wPlayerArenaCardHP)"                ; c8
DUELVARS_BENCH1_CARD_HP                  EQUS "LOW(wPlayerBench1CardHP)"               ; c9
DUELVARS_BENCH2_CARD_HP                  EQUS "LOW(wPlayerBench2CardHP)"               ; ca
DUELVARS_BENCH3_CARD_HP                  EQUS "LOW(wPlayerBench3CardHP)"               ; cb
DUELVARS_BENCH4_CARD_HP                  EQUS "LOW(wPlayerBench4CardHP)"               ; cc
DUELVARS_BENCH5_CARD_HP                  EQUS "LOW(wPlayerBench5CardHP)"               ; cd
DUELVARS_ARENA_CARD_CHANGED_TYPE         EQUS "LOW(wPlayerArenaCardChangedType)"       ; d4
DUELVARS_BENCH1_CARD_CHANGED_TYPE        EQUS "LOW(wPlayerBench1CardChangedType)"      ; d5
DUELVARS_BENCH2_CARD_CHANGED_TYPE        EQUS "LOW(wPlayerBench2CardChangedType)"      ; d6
DUELVARS_BENCH3_CARD_CHANGED_TYPE        EQUS "LOW(wPlayerBench3CardChangedType)"      ; d7
DUELVARS_BENCH4_CARD_CHANGED_TYPE        EQUS "LOW(wPlayerBench4CardChangedType)"      ; d8
DUELVARS_BENCH5_CARD_CHANGED_TYPE        EQUS "LOW(wPlayerBench5CardChangedType)"      ; d9
DUELVARS_ARENA_CARD_SUBSTATUS1           EQUS "LOW(wPlayerArenaCardSubstatus1)"        ; e7
DUELVARS_ARENA_CARD_SUBSTATUS2           EQUS "LOW(wPlayerArenaCardSubstatus2)"        ; e8
DUELVARS_ARENA_CARD_CHANGED_WEAKNESS     EQUS "LOW(wPlayerArenaCardChangedWeakness)"   ; e9
DUELVARS_ARENA_CARD_CHANGED_RESISTANCE   EQUS "LOW(wPlayerArenaCardChangedResistance)" ; ea
DUELVARS_ARENA_CARD_SUBSTATUS3           EQUS "LOW(wPlayerArenaCardSubstatus3)"        ; eb
DUELVARS_PRIZES                          EQUS "LOW(wPlayerPrizes)"                     ; ec
DUELVARS_NUMBER_OF_CARDS_IN_DISCARD_PILE EQUS "LOW(wPlayerNumberOfCardsInDiscardPile)" ; ed
DUELVARS_NUMBER_OF_CARDS_IN_HAND         EQUS "LOW(wPlayerNumberOfCardsInHand)"        ; ee
DUELVARS_NUMBER_OF_POKEMON_IN_PLAY       EQUS "LOW(wPlayerNumberOfPokemonInPlay)"      ; ef
DUELVARS_ARENA_CARD_STATUS               EQUS "LOW(wPlayerArenaCardStatus)"            ; f0
DUELVARS_DUELIST_TYPE                    EQUS "LOW(wPlayerDuelistType)"                ; f1
DUELVARS_ARENA_CARD_DISABLED_MOVE_INDEX  EQUS "LOW(wPlayerArenaCardDisabledMoveIndex)" ; f2

; card location constants (DUELVARS_CARD_LOCATIONS)
CARD_LOCATION_DECK         EQU $00
CARD_LOCATION_HAND         EQU $01
CARD_LOCATION_DISCARD_PILE EQU $02
CARD_LOCATION_PRIZE        EQU $08
CARD_LOCATION_ARENA        EQU $10
CARD_LOCATION_BENCH_1      EQU $11
CARD_LOCATION_BENCH_2      EQU $12
CARD_LOCATION_BENCH_3      EQU $13
CARD_LOCATION_BENCH_4      EQU $14
CARD_LOCATION_BENCH_5      EQU $15

; card location flags (DUELVARS_CARD_LOCATIONS)
CARD_LOCATION_PLAY_AREA_F  EQU 4 ; includes arena and bench
CARD_LOCATION_PLAY_AREA    EQU 1 << CARD_LOCATION_PLAY_AREA_F
CARD_LOCATION_JUST_DRAWN_F EQU 6
CARD_LOCATION_JUST_DRAWN   EQU 1 << CARD_LOCATION_JUST_DRAWN_F

; duelist types (DUELVARS_DUELIST_TYPE)
DUELIST_TYPE_PLAYER   EQU $00
DUELIST_TYPE_LINK_OPP EQU $01
DUELIST_TYPE_AI_OPP   EQU $80

; status conditions (DUELVARS_ARENA_CARD_STATUS)
; two statuses can be combined if they are identified by a different nybble
NO_STATUS       EQU $00
CONFUSED        EQU $01
ASLEEP          EQU $02
PARALYZED       EQU $03
POISONED        EQU $80
DOUBLE_POISONED EQU $c0

PASSIVE_STATUS_MASK  EQU $f ; confused, asleep or paralyzed

; substatus conditions (DUELVARS_ARENA_CARD_SUBSTATUS*)
SUBSTATUS1_AGILITY      EQU $0c
SUBSTATUS1_FLY          EQU $0d
SUBSTATUS1_HARDEN       EQU $0e
SUBSTATUS1_NO_DAMAGE_STIFFEN  EQU $0f
SUBSTATUS1_NO_DAMAGE_10 EQU $10
SUBSTATUS1_NO_DAMAGE_11 EQU $11
SUBSTATUS1_REDUCE_BY_20 EQU $13
SUBSTATUS1_BARRIER      EQU $14
SUBSTATUS1_HALVE_DAMAGE EQU $15
SUBSTATUS1_DESTINY_BOND EQU $16
SUBSTATUS1_NO_DAMAGE_17 EQU $17
SUBSTATUS1_NEXT_TURN_DOUBLE_DAMAGE EQU $19
SUBSTATUS1_REDUCE_BY_10 EQU $1e

SUBSTATUS2_SMOKESCREEN    EQU $01
SUBSTATUS2_SAND_ATTACK    EQU $02
SUBSTATUS2_REDUCE_BY_20   EQU $03
SUBSTATUS2_AMNESIA        EQU $04
SUBSTATUS2_TAIL_WAG       EQU $05
SUBSTATUS2_LEER           EQU $06
SUBSTATUS2_POUNCE         EQU $07
SUBSTATUS2_UNABLE_RETREAT EQU $09
SUBSTATUS2_BONE_ATTACK    EQU $0b
SUBSTATUS2_GROWL          EQU $12

SUBSTATUS3_THIS_TURN_DOUBLE_DAMAGE EQU 0
SUBSTATUS3_HEADACHE                EQU 1

; wNoDamageOrEffect constants
NO_DAMAGE_OR_EFFECT_AGILITY      EQU $01
NO_DAMAGE_OR_EFFECT_BARRIER      EQU $02
NO_DAMAGE_OR_EFFECT_FLY          EQU $03
NO_DAMAGE_OR_EFFECT_TRANSPARENCY EQU $04
NO_DAMAGE_OR_EFFECT_NSHIELD      EQU $05
