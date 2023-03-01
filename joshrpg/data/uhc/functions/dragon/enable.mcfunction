# Enable Dragon UHC state, scores, and spawns

## Set Dragon UHC Gamestate
scoreboard players set dragon_uhc Gamestate 1

## Create DragonKill Tracking Scoreboard
scoreboard objectives add DragonKills minecraft.killed:minecraft.ender_dragon

## Revoke advancement just in case
advancement revoke @a through uhc:kill_dragon

## Create a separate end spawn points
execute in the_end run function uhc:dragon/create_spawn_points