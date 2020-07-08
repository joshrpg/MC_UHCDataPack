# Game Start

## update gamestate pig

scoreboard players set @e[tag=gamestate,type=pig] Gamestate 1

## spreadplayers <X> <Y> <spreadDistance > <maxDistance> <respectTeams> @a

spreadplayers 0.0 0.0 500 800 true @a

## Remove Spawn Box

fill -5 87 -5 5 96 5 minecraft:air replace
kill @e[type=minecraft:item]

## Set up players

clear @a
effect clear @a
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255

## Reset Deaths scoareboards

scoreboard players reset @a Deaths

## Set game modes

gamemode survival @a[team=!]
gamemode spectator @a[team=admin]
gamemode spectator @a[team=]

## Do some time stuff

time set 0
gamerule doDaylightCycle true

## Border Shrinks to a 2x2 for 9000 seconds (2.5 hours)

execute in minecraft:the_nether run worldborder set 2 9000

## Border Shrinks to a 16x16 for 9000 seconds (2.5 hours)

execute in minecraft:overworld run worldborder set 16 9000

## Makes sure the game is set to "hard"

difficulty hard

## Start PvP timer

function uhc:start_pvp_timer
