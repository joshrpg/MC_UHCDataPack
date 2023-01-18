# Game Start

## make sure the gamestate pig exists

execute unless entity @e[type=pig,tag=gamestate] run summon minecraft:pig 30 0 30 {CustomName: '{"text":"Game State Pig"}', CustomNameVisible: 0, Invulnerable: 1, NoAI: 1, PersistenceRequired: 1, Silent: 1, Tags: ["gamestate"]}

## update gamestate pig

scoreboard players set @e[tag=gamestate,type=pig] Gamestate 1

## spreadplayers if not done already

execute unless score spread_players Gamestate matches 1 run function uhc:spread_players

## Set up players

clear @a
effect clear @a
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255
effect give @a[team=admin] minecraft:night_vision 1000000 0 true

## Reset Deaths scoareboards

scoreboard players reset @a Deaths

## Set game modes

gamemode survival @a[team=!admin]
gamemode spectator @a[team=admin]
#gamemode spectator @a[team=]

## Do some time stuff

time set 0t
gamerule doDaylightCycle true

## Game Rules

gamerule disableRaids false
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doWeatherCycle true
gamerule doFireTick true

## Border Shrinks to a 2x2 for 9000 seconds (2.5 hours)

# Disabling until I can figure out why the borders don't sync. Probably math.
# execute in minecraft:the_nether run worldborder set 2 9000

## Border Shrinks to a 64x64 for 9000 seconds (2.5 hours) unless it's a Dragon UHC

execute unless score dragon_uhc Gamestate matches 1 run execute in minecraft:overworld run worldborder set 64 9000

## If it's a Dragon UHC, assign teams end spawn points

execute if score dragon_uhc Gamestate matches 1 run function uhc:dragon/set_team_spawn_points

## Makes sure the game is set to "hard"

difficulty hard

## Start PvP timer

function uhc:pvp_timer_start
