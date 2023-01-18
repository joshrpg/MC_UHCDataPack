# Triggered by getting advancement enter_end
# Either set player spawn to default if first or teleports to spawn point

execute if score #TeamEnteredEnd Gamestate matches 1 run execute as @s run function uhc:dragon/teleport_to_end_spawn_point
execute unless score #TeamEnteredEnd Gamestate matches 1 run execute as @s run function uhc:dragon/first_player