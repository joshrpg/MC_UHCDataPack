# Pre game script

## Give every player a weakness effect so they cannot punch each other

effect give @a[team=!admin] minecraft:weakness 100000 255 true
effect give @a[team=!admin] minecraft:mining_fatigue 1000000 255 true
effect give @a[team=!admin] minecraft:saturation 1000000 255 true
effect give @a[team=!admin] minecraft:resistance 1000000 255 true

## Admins don't this stuff

effect clear @a[team=admin]


## Teleport any player who tries to escape back to the box

execute at @e[tag=lobby_locator] run tp @a[distance=7..,team=!admin] ~ ~1 ~

# Pre game gamemodes

execute unless score spread_players Gamestate matches 1 run gamemode creative @a[team=admin]
gamemode adventure @a[team=!admin]