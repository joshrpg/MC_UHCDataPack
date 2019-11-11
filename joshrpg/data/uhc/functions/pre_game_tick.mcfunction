# Pre game script

## Give every player a weakness effect so they cannot punch each other

effect give @a[team=!admin] minecraft:weakness 100000 255 true
effect give @a[team=!admin] minecraft:mining_fatigue 1000000 255 true

## Admins don't this stuff

effect clear @a[team=admin]


## Teleport any player who tries to escape back to the box

tp @a[distance=8..,x=0,y=91,z=0,team=!admin] 0 91 0

# Pre game gamemodes

gamemode creative @a[team=admin]
gamemode adventure @a[team=!admin]