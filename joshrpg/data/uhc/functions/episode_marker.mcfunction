tellraw @p ["",{"text":"End of Episode ","color":"light_purple"},{"score":{"name":"e[type=minecraft:armor_stand,tag=pvp_timer,limit=1]","objective":"epCounter"},"color":"light_purple"}]
scoreboard players add @e[tag=pvp_timer,type=minecraft:armor_stand] epCounter 1
scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] epCounterTimer 0