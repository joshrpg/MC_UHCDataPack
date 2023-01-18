# Place the player's spawn point obsidian platform and teleport player to it

## Place spawn point's platform
execute if entity @s[team=red] run execute at @e[type=marker,limit=1,tag=platform,tag=red] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=blue] run execute at @e[type=marker,limit=1,tag=platform,tag=blue] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=green] run execute at @e[type=marker,limit=1,tag=platform,tag=green] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=aqua] run execute at @e[type=marker,limit=1,tag=platform,tag=aqua] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=yellow] run execute at @e[type=marker,limit=1,tag=platform,tag=yellow] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=white] run execute at @e[type=marker,limit=1,tag=platform,tag=white] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=gold] run execute at @e[type=marker,limit=1,tag=platform,tag=gold] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=light_purple] run execute at @e[type=marker,limit=1,tag=platform,tag=light_purple] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=dark_purple] run execute at @e[type=marker,limit=1,tag=platform,tag=dark_purple] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=dark_red] run execute at @e[type=marker,limit=1,tag=platform,tag=dark_red] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=dark_aqua] run execute at @e[type=marker,limit=1,tag=platform,tag=dark_aqua] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=dark_green] run execute at @e[type=marker,limit=1,tag=platform,tag=dark_green] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=dark_blue] run execute at @e[type=marker,limit=1,tag=platform,tag=dark_blue] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=dark_gray] run execute at @e[type=marker,limit=1,tag=platform,tag=dark_gray] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=black] run execute at @e[type=marker,limit=1,tag=platform,tag=black] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform
execute if entity @s[team=gray] run execute at @e[type=marker,limit=1,tag=platform,tag=gray] positioned ~-2 ~-1 ~-2 run place template uhc:end_spawn_platform

## Teleport player
execute as @s[team=red] run tp @e[type=marker,limit=1,tag=platform,tag=red]
execute as @s[team=blue] run tp @e[type=marker,limit=1,tag=platform,tag=blue]
execute as @s[team=green] run tp @e[type=marker,limit=1,tag=platform,tag=green]
execute as @s[team=aqua] run tp @e[type=marker,limit=1,tag=platform,tag=aqua]
execute as @s[team=yellow] run tp @e[type=marker,limit=1,tag=platform,tag=yellow]
execute as @s[team=white] run tp @e[type=marker,limit=1,tag=platform,tag=white]
execute as @s[team=gold] run tp @e[type=marker,limit=1,tag=platform,tag=gold]
execute as @s[team=light_purple] run tp @e[type=marker,limit=1,tag=platform,tag=light_purple]
execute as @s[team=dark_purple] run tp @e[type=marker,limit=1,tag=platform,tag=dark_purple]
execute as @s[team=dark_red] run tp @e[type=marker,limit=1,tag=platform,tag=dark_red]
execute as @s[team=dark_aqua] run tp @e[type=marker,limit=1,tag=platform,tag=dark_aqua]
execute as @s[team=dark_green] run tp @e[type=marker,limit=1,tag=platform,tag=dark_green]
execute as @s[team=dark_blue] run tp @e[type=marker,limit=1,tag=platform,tag=dark_blue]
execute as @s[team=dark_gray] run tp @e[type=marker,limit=1,tag=platform,tag=dark_gray]
execute as @s[team=black] run tp @e[type=marker,limit=1,tag=platform,tag=black]
execute as @s[team=gray] run tp @e[type=marker,limit=1,tag=platform,tag=gray]