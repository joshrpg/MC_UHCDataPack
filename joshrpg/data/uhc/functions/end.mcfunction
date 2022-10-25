# Game End

## Reset border
execute in minecraft:overworld run worldborder set 2000

## Set to day, and clear weather
time set noon
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

## Show kills scoreboard
scoreboard objectives setdisplay sidebar Kills

## Create Gamemode trigger
scoreboard objectives add Gamemode trigger

## Update gamestate
scoreboard players set @e[tag=gamestate,type=pig] Gamestate 2