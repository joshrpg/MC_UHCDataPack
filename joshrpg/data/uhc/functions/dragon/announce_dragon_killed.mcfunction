# Announce killer of the ender dragon
# Uses a statistics score to be more accurate

execute as @a[limit=1,scores={DragonKills=0..}] run execute as @s run tellraw @a [{"selector":"@s"}, {"text":" killed the Ender Dragon!","color":"white"}]