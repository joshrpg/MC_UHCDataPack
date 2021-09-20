# UHC INIT

## Setup World Spawn/Lobby

setblock -5 90 -5 structure_block{mode:"LOAD",powered:0b,name:"uhc:lobby"}
setblock -5 89 -5 minecraft:redstone_block
setblock -5 89 -5 minecraft:air
setworldspawn 0 90 0

## Setup Game Rules

### Overworld

difficulty peaceful
execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:overworld run gamerule announceAdvancements false

### Nether

execute in minecraft:the_nether run gamerule naturalRegeneration false
execute in minecraft:the_nether run gamerule announceAdvancements false

### End

execute in minecraft:the_end run gamerule naturalRegeneration false
execute in minecraft:the_end run gamerule announceAdvancements false

### Other rules

gamerule doDaylightCycle false
gamerule commandBlockOutput false

## Setup scoreboard

scoreboard objectives add Kills playerKillCount
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add Deaths deathCount
scoreboard players set @a Deaths 0

## Create PVP Announcement Timer

scoreboard objectives add pvpAnnCounter dummy "PVP Announcement Timer"
scoreboard players set @e pvpAnnCounter 0

## Create Episode Counter

scoreboard objectives add epCounterTimer dummy "Episode Counter Timer"
scoreboard players set @e epCounterTimer 0

scoreboard objectives add epCounter dummy "Episode Counter"
scoreboard players set @e epCounter 0

## Create Episode Counter

scoreboard objectives add countDownTimer dummy "Count Down Timer"
scoreboard players set @e countDownTimer 0

scoreboard objectives add countDown dummy "Count Down Counter"
scoreboard players set @e countDown 0

## Create the game state pig

scoreboard objectives add Gamestate dummy
setblock 30 0 30 air
execute unless entity @e[type=pig,tag=gamestate] run summon minecraft:pig 30 0 30 {CustomName:"{\"text\":\"Game State Pig\"}",CustomNameVisible:0,Invulnerable:1,NoAI:1,PersistenceRequired:1,Silent:1,Tags:["gamestate"]}
scoreboard players set @e[tag=gamestate,type=pig] Gamestate 0

## Setup world borders
## Don't change the order because this works only on spigot/papermc

### Setup world border for overworld

execute in minecraft:overworld run worldborder set 4000
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