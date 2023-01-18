# Forceloads and summons a marker at all 16 spawn platform possible locations

# Forceload Chunks

## 90 degree angles:
## this first location is the default spawn
execute in the_end run forceload add 100 0
execute in the_end run forceload add 0 100
execute in the_end run forceload add -100 0
execute in the_end run forceload add 0 -100

## 22.5 degree angles:
execute in the_end run forceload add 38 -92
execute in the_end run forceload add 92 38
execute in the_end run forceload add -38 92
execute in the_end run forceload add -92 -38

## 45 degree angles:
execute in the_end run forceload add 71 -71
execute in the_end run forceload add 71 71
execute in the_end run forceload add -71 71
execute in the_end run forceload add -71 -71

## 67.5 degree angles:
execute in the_end run forceload add 92 -38
execute in the_end run forceload add 38 92
execute in the_end run forceload add -92 38
execute in the_end run forceload add -38 -92

## Kill any spawn point markers already summoned
execute in the_end run kill @e[type=marker,tag=platform]

# Summon markers

## 90 degree angles:
## this first location is the default spawn
execute in the_end run summon minecraft:marker 100 49 0 {Tags:["platform"],Rotation:[90f]}
execute in the_end run summon minecraft:marker 0 49 100 {Tags:["platform"],Rotation:[180f]}
execute in the_end run summon minecraft:marker -100 49 0 {Tags:["platform"],Rotation:[270f]}
execute in the_end run summon minecraft:marker 0 49 -100 {Tags:["platform"],Rotation:[360f]}

## 22.5 degree angles:
execute in the_end run summon minecraft:marker 38 49 -92 {Tags:["platform"],Rotation:[22.5f]}
execute in the_end run summon minecraft:marker 92 49 38 {Tags:["platform"],Rotation:[112.5f]}
execute in the_end run summon minecraft:marker -38 49 92 {Tags:["platform"],Rotation:[202.5f]}
execute in the_end run summon minecraft:marker -92 49 -38 {Tags:["platform"],Rotation:[292.5f]}

## 45 degree angles:
execute in the_end run summon minecraft:marker 71 49 -71 {Tags:["platform"],Rotation:[45f]}
execute in the_end run summon minecraft:marker 71 49 71 {Tags:["platform"],Rotation:[135f]}
execute in the_end run summon minecraft:marker -71 49 71 {Tags:["platform"],Rotation:[225f]}
execute in the_end run summon minecraft:marker -71 49 -71 {Tags:["platform"],Rotation:[315f]}

## 67.5 degree angles:
execute in the_end run summon minecraft:marker 92 49 -38 {Tags:["platform"],Rotation:[67.5f]}
execute in the_end run summon minecraft:marker 38 49 92 {Tags:["platform"],Rotation:[157.5f]}
execute in the_end run summon minecraft:marker -92 49 38 {Tags:["platform"],Rotation:[247.5f]}
execute in the_end run summon minecraft:marker -38 49 -92 {Tags:["platform"],Rotation:[337.5f]}