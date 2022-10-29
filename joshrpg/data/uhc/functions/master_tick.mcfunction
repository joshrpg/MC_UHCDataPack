# Checks for if the game has started based on the pregame pig

execute if score @e[type=pig,tag=gamestate,limit=1] Gamestate matches 0 run function uhc:pre_game_tick
execute if score @e[type=pig,tag=gamestate,limit=1] Gamestate matches 1 run function uhc:dur_game_tick
execute if score @e[type=pig,tag=gamestate,limit=1] Gamestate matches 2 run function uhc:post_game_tick
execute if score #ReadyUpCheckAcitve readyup matches 1 run function uhc:ready_up/check_ready_teams