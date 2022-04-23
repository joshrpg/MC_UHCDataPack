# Do the hunger things

execute if data storage uhc:border {width: 32} if data storage uhc:border {nether_hunger_strike: 0} run tellraw @a[nbt={Dimension: "minecraft:the_nether"}] {"text":"Hunger will gradually increase every minute if you don't leave the Nether.","color":"blue"}

data modify storage uhc:border nether_hunger_strike set value 1

scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrike 1

execute if score @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrike matches 1200 run effect give @a[nbt={Dimension: "minecraft:the_nether"}] hunger 60
execute if score @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrike matches 2400 run effect give @a[nbt={Dimension: "minecraft:the_nether"}] hunger 60 1
execute if score @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrike matches 3600 run effect give @a[nbt={Dimension: "minecraft:the_nether"}] hunger 60 2
execute if score @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrike matches 4800 run effect give @a[nbt={Dimension: "minecraft:the_nether"}] hunger 60 3
execute if score @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrike >= @e[type=minecraft:armor_stand,limit=1,tag=hunger_timer] netherHungerStrikeTimeLimit run effect give @a[nbt={Dimension: "minecraft:the_nether"}] minecraft:hunger 1 4
