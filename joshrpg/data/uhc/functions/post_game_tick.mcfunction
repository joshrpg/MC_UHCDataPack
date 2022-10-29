# Post Game Script
# Allow players to switch between survival, creative, spectator mode

## Clear death scores and tags
function uhc:reset_deaths

## Switch player's gamemode  
execute as @a[gamemode=!survival,scores={Gamemode=1}] run gamemode survival @s
execute as @a[gamemode=!creative,scores={Gamemode=2}] run gamemode creative @s
execute as @a[gamemode=!spectator,scores={Gamemode=3}] run gamemode spectator @s

## Give or remove night vision
effect give @a[gamemode=!survival] night_vision 1000000 0 true
effect clear @a[gamemode=survival] night_vision

## Enable Gamemode trigger
scoreboard players enable @a Gamemode

## Send message for changing Gamemode trigger score
tellraw @a[scores={Gamemode=0..}] ["",{"text":"Switch Game Mode: ","color":"gold"},{"text":"Survival","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Gamemode set 1"}},{"text":" "}, {"text":"Creative","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Gamemode set 2"}},{"text":" "},{"text":"Spectator","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Gamemode set 3"}}]

## Change Gamemode trigger score to prevent message spam
scoreboard players set @a Gamemode -1