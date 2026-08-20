execute store result score #production_amount tmp run function resource/production/base
execute if score #special_second_lvl upgrade matches 1 run scoreboard players add #production_amount tmp 1
execute if score #special_second_lvl upgrade matches 2 run scoreboard players add #production_amount tmp 2
execute if score #special_second_lvl upgrade matches 3 run scoreboard players add #production_amount tmp 5
execute if score #special_second_lvl upgrade matches 4.. run scoreboard players add #production_amount tmp 10
return run scoreboard players get #production_amount tmp
