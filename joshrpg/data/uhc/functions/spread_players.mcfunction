# Spread Players

## spreadplayers <X> <Y> <spreadDistance> <maxDistance> <respectTeams> @a

spreadplayers 0.0 0.0 500 800 true @a[team=!spec,team=!admin]

## Remove Spawn Box

execute at @e[tag=lobby_locator] run fill ~5 ~ ~5 ~-5 ~6 ~-5 minecraft:air replace
kill @e[tag=lobby_locator]
kill @e[type=minecraft:item]

## Give players slowness and jump boost so they cannot move

effect give @a[team=!admin] minecraft:slowness 1000000 255 true
effect give @a[team=!admin] minecraft:jump_boost 1000000 128 true

## Set spread_players Gamestate to mark players as spread

scoreboard players set spread_players Gamestate 1

## Start team ready up if start was not already run

execute unless score @e[type=pig,tag=gamestate,limit=1] Gamestate matches 1 run function uhc:ready_up/init