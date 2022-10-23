# Set player's spawnpoint to the location of their death (or above it)

## Must loop moving player up until finding air, or they cannot respawn there
execute at @s unless block ~ ~ ~ minecraft:air run execute at @s run tp ~ ~1 ~
execute at @s unless block ~ ~ ~ minecraft:air run function uhc:set_deathpoint

## Once air is found, set spawnpoint and dead tag
execute at @s if block ~ ~ ~ minecraft:air run execute as @s at @s run spawnpoint @s ~ ~ ~ ~
execute at @s if block ~ ~ ~ minecraft:air run tag @s add dead