# Game Start

## update gamestate pig
scoreboard players set @e[tag=gamestate,type=pig] Gamestate 1

## spreadplayers <X> <Y> <spreadDistance > <maxDistance> <respectTeams> @a
spreadplayers 0.0 0.0 500 800 true @a

## Remove Spawn Box
fill -5 87 -5 5 96 5 minecraft:air replace
kill @e[type=minecraft:item]

clear @a
effect clear @a
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255

gamemode survival @a[team=!]
gamemode spectator @a[team=]

gamerule doDaylightCycle true

## Border Shrinks to a 2x2 for 9000 seconds = 2.5 hours
worldborder set 2 9000