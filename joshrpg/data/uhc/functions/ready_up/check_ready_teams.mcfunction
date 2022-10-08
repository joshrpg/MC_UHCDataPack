#Check to see which teams are ready, looped when running ready up
say "Checking"
execute if entity @p[team=red,scores={readyuptrigger=1..}] run function uhc:ready_up/team/red_team
execute if entity @p[team=blue,scores={readyuptrigger=1..}] run function uhc:ready_up/team/blue_team
execute if entity @p[team=green,scores={readyuptrigger=1..}] run function uhc:ready_up/team/green_team
execute if entity @p[team=aqua,scores={readyuptrigger=1..}] run function uhc:ready_up/team/aqua_team
execute if entity @p[team=yellow,scores={readyuptrigger=1..}] run function uhc:ready_up/team/yellow_team
execute if entity @p[team=white,scores={readyuptrigger=1..}] run function uhc:ready_up/team/white_team
execute if entity @p[team=gray,scores={readyuptrigger=1..}] run function uhc:ready_up/team/gray_team
execute if entity @p[team=gold,scores={readyuptrigger=1..}] run function uhc:ready_up/team/gold_team
execute if entity @p[team=light_purple,scores={readyuptrigger=1..}] run function uhc:ready_up/team/light_purple_team
execute if entity @p[team=dark_purple,scores={readyuptrigger=1..}] run function uhc:ready_up/team/dark_purple_team
execute if entity @p[team=dark_red,scores={readyuptrigger=1..}] run function uhc:ready_up/team/dark_red_team
execute if entity @p[team=dark_aqua,scores={readyuptrigger=1..}] run function uhc:ready_up/team/dark_aqua_team
execute if entity @p[team=dark_green,scores={readyuptrigger=1..}] run function uhc:ready_up/team/dark_green_team
execute if entity @p[team=dark_blue,scores={readyuptrigger=1..}] run function uhc:ready_up/team/dark_blue_team
execute if entity @p[team=dark_gray,scores={readyuptrigger=1..}] run function uhc:ready_up/team/dark_gray_team
execute if entity @p[team=black,scores={readyuptrigger=1..}] run function uhc:ready_up/team/black_team

execute unless score NumTeams activeteams matches 0 if score #NumTeamsReady readyup = NumTeams activeteams run function uhc:ready_up/ready_up_sucess