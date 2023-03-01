# UHC INIT

## Setup World Spawn/Lobby

execute unless entity @e[tag=lobby_locator] run summon minecraft:marker 0 64 0 {Tags:["lobby_locator"]}
execute unless entity @e[tag=lobby_locator,tag=lobby_placed] run function uhc:locate_lobby

## Setup Game Rules

### Overworld

execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:overworld run gamerule announceAdvancements false

### Nether

execute in minecraft:the_nether run gamerule naturalRegeneration false
execute in minecraft:the_nether run gamerule announceAdvancements false

### End

execute in minecraft:the_end run gamerule naturalRegeneration false
execute in minecraft:the_end run gamerule announceAdvancements false

### Other rules

gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doWeatherCycle false
gamerule doFireTick false

## Setup scoreboard

scoreboard objectives add Kills playerKillCount
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add Deaths deathCount
scoreboard players set @a Deaths 0
scoreboard objectives setdisplay sidebar
scoreboard objectives remove Gamemode

## Create PVP Announcement Timer

scoreboard objectives add pvpAnnCounter dummy "PVP Announcement Timer"
scoreboard players set @e pvpAnnCounter 0

## Create the game state scores

scoreboard objectives add Gamestate dummy
setblock 30 0 30 air
execute unless entity @e[type=pig,tag=gamestate] run summon minecraft:pig 30 0 30 {CustomName: '{"text":"Game State Pig"}', CustomNameVisible: 0, Invulnerable: 1, NoAI: 1, PersistenceRequired: 1, Silent: 1, Tags: ["gamestate"]}
scoreboard players set @e[tag=gamestate,type=pig] Gamestate 0
scoreboard players reset spread_players
scoreboard players reset #ReadyUpCheckAcitve
scoreboard players reset dragon_uhc
scoreboard players reset #TeamEnteredEnd
scoreboard objectives remove DragonKills
execute in the_end run forceload remove all
tag @a remove dead

## Setup world borders
## Don't change the order because this works only on spigot/papermc

### Setup world border for overworld

execute in minecraft:overworld run worldborder set 2000
execute in minecraft:overworld run worldborder center 0.0 0.0

## Setup Teams

### team add <teamName>
### team modify <teamName> color <color>

team add admin
team add spec
team modify spec color gray
team add black
team modify black color black
team add white
team modify white color white
team add blue
team modify blue color blue
team add green
team modify green color green
team add red
team modify red color red
team add yellow
team modify yellow color yellow
team add gray
team modify gray color gray
team add aqua
team modify aqua color aqua
team add gold
team modify gold color gold
team add dark_gray
team modify dark_gray color dark_gray
team add dark_blue
team modify dark_blue color dark_blue
team add dark_green
team modify dark_green color dark_green
team add dark_aqua
team modify dark_aqua color dark_aqua
team add dark_red
team modify dark_red color dark_red
team add dark_purple
team modify dark_purple color dark_purple
team add light_purple
team modify light_purple color light_purple

## Init Timers

### Create Hunger Timer

kill @e[tag=hunger_timer,type=minecraft:armor_stand]
summon minecraft:armor_stand 30 0 30 {CustomName: '{"text":"Hunger Timer"}', CustomNameVisible: 0, Invulnerable: 1, NoGravity: 1, Invisible: 0, Tags: ["hunger_timer"]}
scoreboard objectives remove netherHungerStrike
scoreboard objectives add netherHungerStrike dummy "Hunger Timer"
scoreboard objectives add netherHungerStrikeTimeLimit dummy "Hunger Timer Limit"
scoreboard players set @e[tag=hunger_timer,type=minecraft:armor_stand] netherHungerStrike 0
scoreboard players set @e[tag=hunger_timer,type=minecraft:armor_stand] netherHungerStrikeTimeLimit 6000
data modify storage uhc:border nether_hunger_strike set value 0
data modify storage uhc:border width set value 0