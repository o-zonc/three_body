execute store result score #production_amount tmp run function resource/production/base
execute if score #gold_second_lvl upgrade matches 1 run scoreboard players add #production_amount tmp 1
execute if score #gold_second_lvl upgrade matches 2 run scoreboard players add #production_amount tmp 2
execute if score #gold_second_lvl upgrade matches 3 run scoreboard players add #production_amount tmp 5
execute if score #gold_second_lvl upgrade matches 4.. run scoreboard players add #production_amount tmp 10
execute store result score #production_multiplier tmp run function resource/shop/value {id:"gold"}
scoreboard players operation #production_amount tmp *= #production_multiplier tmp
return run scoreboard players get #production_amount tmp
