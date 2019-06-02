# UHC INIT

## Setup World Spawn/Lobby
tp @p 0.0 91 0.0
setblock -5 90 -5 structure_block{mode:"LOAD",powered:0b,name:"uhc:lobby"}
setblock -5 89 -5 minecraft:redstone_block
setblock -5 89 -5 minecraft:air
setworldspawn 0 90 0
gamerule doDaylightCycle false
effect give @a minecraft:weakness 100000 255 true

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

## Setup scoreboard
scoreboard objectives add Kills playerKillCount
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add Deaths deathCount
scoreboard players set @a Deaths 0

## Setup world border
worldborder add 2000
worldborder center 0.0 0.0

## Setup Teams
### team add <teamName>
### team modify <teamName> color <color>
team add black
team modify black color black
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
team add gold
team modify gold color gold
team add gray
team modify gray color gray
team add dark_gray
team modify dark_gray color dark_gray
team add blue
team modify blue color blue
team add green
team modify green color green
team add aqua
team modify aqua color aqua
team add red
team modify red color red
team add light_purple
team modify light_purple color light_purple
team add yellow
team modify yellow color yellow
team add white
team modify white color white
