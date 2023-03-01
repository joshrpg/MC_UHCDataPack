# The first player to enter the end will set their team's end spawn point to the default
# It will swap spawn points with another team if needed

## Set #TeamEnteredEnd score
scoreboard players set #TeamEnteredEnd Gamestate 1

## Mark the first player's team spawn point for swapping
execute if entity @s[team=red] run execute as @e[type=marker,limit=1,tag=platform,tag=red] run tag @s add replace
execute if entity @s[team=blue] run execute as @e[type=marker,limit=1,tag=platform,tag=blue] run tag @s add replace
execute if entity @s[team=green] run execute as @e[type=marker,limit=1,tag=platform,tag=green] run tag @s add replace
execute if entity @s[team=aqua] run execute as @e[type=marker,limit=1,tag=platform,tag=aqua] run tag @s add replace
execute if entity @s[team=yellow] run execute as @e[type=marker,limit=1,tag=platform,tag=yellow] run tag @s add replace
execute if entity @s[team=white] run execute as @e[type=marker,limit=1,tag=platform,tag=white] run tag @s add replace
execute if entity @s[team=gold] run execute as @e[type=marker,limit=1,tag=platform,tag=gold] run tag @s add replace
execute if entity @s[team=light_purple] run execute as @e[type=marker,limit=1,tag=platform,tag=light_purple] run tag @s add replace
execute if entity @s[team=dark_purple] run execute as @e[type=marker,limit=1,tag=platform,tag=dark_purple] run tag @s add replace
execute if entity @s[team=dark_red] run execute as @e[type=marker,limit=1,tag=platform,tag=dark_red] run tag @s add replace
execute if entity @s[team=dark_aqua] run execute as @e[type=marker,limit=1,tag=platform,tag=dark_aqua] run tag @s add replace
execute if entity @s[team=dark_green] run execute as @e[type=marker,limit=1,tag=platform,tag=dark_green] run tag @s add replace
execute if entity @s[team=dark_blue] run execute as @e[type=marker,limit=1,tag=platform,tag=dark_blue] run tag @s add replace
execute if entity @s[team=dark_gray] run execute as @e[type=marker,limit=1,tag=platform,tag=dark_gray] run tag @s add replace
execute if entity @s[team=black] run execute as @e[type=marker,limit=1,tag=platform,tag=black] run tag @s add replace
execute if entity @s[team=gray] run execute as @e[type=marker,limit=1,tag=platform,tag=gray] run tag @s add replace

## If another team's spawn was set as the default spawn point, swap their spawn point with the first team's
execute if entity @e[type=marker,tag=platform,tag=taken,tag=default] run execute as @e[type=marker,tag=platform,tag=replace] run data modify entity @s Tags set from entity @e[type=marker,limit=1,tag=platform,tag=taken,tag=default] Tags

## If the first team's spawn point was not swapped, remove it
execute as @e[type=marker,tag=platform,tag=replace] run kill @s

## Remove default spawn point marker and tag
execute as @e[type=marker,tag=platform,x=100,y=49,z=0,dx=1,dy=1,dz=1] run kill @s

execute as @e[type=marker,tag=platform,tag=default] run tag @s remove default