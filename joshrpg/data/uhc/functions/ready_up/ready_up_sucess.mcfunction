# Results from teams readying up.

## Clear ready teams scoreboards

scoreboard players reset #ReadyUpCheckAcitve

scoreboard objectives setdisplay sidebar

scoreboard objectives remove readyup
scoreboard objectives remove readyuptrigger

scoreboard players set NumTeams activeteams 0

## Annouce all teams are ready

title @a subtitle {"text":"Everyone is Ready!","color":"gold"}
title @a title {"text":""}

## Start countdown to start the game

schedule function uhc:countdown 40