scoreboard objectives add Countdown dummy
execute if score countdown Countdown matches -1 run scoreboard players set countdown Countdown 3

title @a subtitle {"text":""}
title @a title [{"color":"gold","score":{"objective":"Countdown","name":"countdown"}}]
execute at @a run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 0.8

execute unless score countdown Countdown matches 0 run schedule function uhc:countdown 20

execute if score countdown Countdown matches 0 run title @a title [{"text":"GO!","color":"green"}]
execute if score countdown Countdown matches 0 run execute at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 0.8
execute if score countdown Countdown matches 0 run function uhc:start 

scoreboard players remove countdown Countdown 1