kill @e[tag=pvp_timer,type=minecraft:armor_stand]
summon minecraft:armor_stand 30 0 30 {CustomName:"{\"text\":\"PvPTimer\"}",CustomNameVisible:0,Invulnerable:1,NoGravity:1,Invisible:0,Tags:["pvp_timer"]}
scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] pvpAnnCounter 0
scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] epCounter 1
scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] epCounterTimer 0