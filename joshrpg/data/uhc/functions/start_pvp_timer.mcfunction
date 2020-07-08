kill @e[tag=pvp_timer,type=minecraft:armor_stand]
summon minecraft:armor_stand 30 0 30 {CustomName:"{\"text\":\"PvP Timer\"}",CustomNameVisible:0,Invulnerable:1,NoGravity:1,Invisible:0,Tags:["pvp_timer"]}
scoreboard players set @e[tag=pvp_timer,type=minecraft:armor_stand] countDown 0