tellraw @a ["",{"text":"Game will start in ","color":"light_purple"},{"score":{"name":"@e[tag=pvp_timer,type=minecraft:armor_stand,limit=1]","objective":"CountDown"},"color":"light_purple"}]
execute at @a as @a run playsound minecraft:block.note_block.bell master @s
scoreboard players add @e[tag=pvp_timer,type=minecraft:armor_stand] countDown -1
execute unless score @e[type=minecraft:armor_stand,tag=pvp_timer,limit=1] countDown matches 0 run scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] epCounterTimer 0
execute if score @e[type=minecraft:armor_stand,tag=pvp_timer,limit=1] countDown matches 0 run tellraw @a {"text":"GO!","color":"light_purple"}