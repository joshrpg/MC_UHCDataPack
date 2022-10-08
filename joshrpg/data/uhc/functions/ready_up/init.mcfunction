# Checks how many teams are active and enables players to ready up their team.

##Sets how many active teams there are

scoreboard objectives add activeteams dummy "Num of Teams Active"

scoreboard players set NumTeams activeteams 0

execute as @r[team=red] run scoreboard players add NumTeams activeteams 1
execute as @r[team=blue] run scoreboard players add NumTeams activeteams 1
execute as @r[team=green] run scoreboard players add NumTeams activeteams 1
execute as @r[team=aqua] run scoreboard players add NumTeams activeteams 1
execute as @r[team=yellow] run scoreboard players add NumTeams activeteams 1
execute as @r[team=white] run scoreboard players add NumTeams activeteams 1
execute as @r[team=gray] run scoreboard players add NumTeams activeteams 1
execute as @r[team=gold] run scoreboard players add NumTeams activeteams 1
execute as @r[team=light_purple] run scoreboard players add NumTeams activeteams 1
execute as @r[team=dark_purple] run scoreboard players add NumTeams activeteams 1
execute as @r[team=dark_red] run scoreboard players add NumTeams activeteams 1
execute as @r[team=dark_aqua] run scoreboard players add NumTeams activeteams 1
execute as @r[team=dark_green] run scoreboard players add NumTeams activeteams 1
execute as @r[team=dark_blue] run scoreboard players add NumTeams activeteams 1
execute as @r[team=dark_gray] run scoreboard players add NumTeams activeteams 1
execute as @r[team=black] run scoreboard players add NumTeams activeteams 1

## Set Up Vote System For Teams Readying Up

scoreboard objectives add readyup dummy "Teams That Are Ready"

scoreboard players set #NumTeamsReady readyup 0
scoreboard players set #ReadyUpCheckAcitve readyup 0

execute as @r[team=red] run scoreboard players set RedTeam readyup 0
execute as @r[team=blue] run scoreboard players set BlueTeam readyup 0
execute as @r[team=green] run scoreboard players set GreenTeam readyup 0
execute as @r[team=aqua] run scoreboard players set AquaTeam readyup 0
execute as @r[team=yellow] run scoreboard players set YellowTeam readyup 0
execute as @r[team=white] run scoreboard players set WhiteTeam readyup 0
execute as @r[team=gray] run scoreboard players set GrayTeam readyup 0
execute as @r[team=gold] run scoreboard players set GoldTeam readyup 0
execute as @r[team=light_purple] run scoreboard players set LightPurpleTeam readyup 0
execute as @r[team=dark_purple] run scoreboard players set DarkPurpleTeam readyup 0
execute as @r[team=dark_red] run scoreboard players set DarkRedTeam readyup 0
execute as @r[team=dark_aqua] run scoreboard players set DarkAquaTeam readyup 0
execute as @r[team=dark_green] run scoreboard players set DarkGreenTeam readyup 0
execute as @r[team=dark_blue] run scoreboard players set DarkBlueTeam readyup 0
execute as @r[team=dark_gray] run scoreboard players set DarkGrayTeam readyup 0
execute as @r[team=black] run scoreboard players set BlackTeam readyup 0

## Puts sidebar up so people can see who's ready

scoreboard objectives setdisplay sidebar readyup 

## Enables people to vote

scoreboard objectives add readyuptrigger trigger
scoreboard players enable @a readyuptrigger

tellraw @a ["",{"text":"================================\nReady up your team by clicking ","color":"gold"},{"text":"here!","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger readyuptrigger set 1"}},{"text":"\n================================","color":"gold"}]

title @a subtitle [{"text":"Ready up in Chat!","color":"gold"}]
title @a title {"text":""}

# Starts the checks on which teams have readied up

scoreboard players set #ReadyUpCheckAcitve readyup 1
