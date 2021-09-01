tellraw @p ["",{"text":"End of Episode ","color":"light_purple"},{"score":{"name":"@e[tag=pvp_timer,type=minecraft:armor_stand,limit=1]","objective":"epCounter"},"color":"light_purple"}]
execute at @a as @a run playsound minecraft:entity.arrow.hit_player master @s
scoreboard players add @e[tag=pvp_timer,type=minecraft:armor_stand] epCounter 1
scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] epCounterTimer 0