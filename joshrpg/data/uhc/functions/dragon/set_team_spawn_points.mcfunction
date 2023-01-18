# Set an end spawn point for each of the active teams

execute if entity @p[team=red] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","red"]}
execute if entity @p[team=blue] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","blue"]}
execute if entity @p[team=green] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","green"]}
execute if entity @p[team=aqua] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","aqua"]}
execute if entity @p[team=yellow] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","yellow"]}
execute if entity @p[team=white] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","white"]}
execute if entity @p[team=gold] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","gold"]}
execute if entity @p[team=light_purple] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","light_purple"]}
execute if entity @p[team=dark_purple] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","dark_purple"]}
execute if entity @p[team=dark_red] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","dark_red"]}
execute if entity @p[team=dark_aqua] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","dark_aqua"]}
execute if entity @p[team=dark_green] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","dark_green"]}
execute if entity @p[team=dark_blue] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","dark_blue"]}
execute if entity @p[team=dark_gray] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","dark_gray"]}
execute if entity @p[team=black] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","black"]}
execute if entity @p[team=gray] run execute in the_end as @e[type=marker,limit=1,sort=random,tag=platform,tag=!taken] run data merge entity @s {Tags:["platform","taken","gray"]}

## Tag the default spawn point
execute in the_end as @e[type=marker,tag=platform,x=100,y=49,z=0,dx=1,dy=1,dz=1] run tag @s add default

## Forceload additional chunks where the spawn platforms will be
execute in the_end at @e[type=marker,tag=platform,tag=taken] run forceload add ~2 ~2 ~-2 ~-2

## Unload unnecessary chunks of unused spawn points
execute in the_end at @e[type=marker,tag=platform,tag=!taken] run forceload remove ~2 ~2 ~-2 ~-2