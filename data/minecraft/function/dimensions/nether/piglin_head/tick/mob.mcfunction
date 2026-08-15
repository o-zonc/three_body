execute unless score #piglin_shop_lvl piglin_head matches 3.. run scoreboard players reset #remain_mob piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 3.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_mob piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_mob piglin_head matches 1 run scoreboard players reset #remain_mob piglin_head
execute if score #stop_mob piglin_head matches 1 run return 0
execute if score #mob_remain generate matches 1.. run scoreboard players reset #remain_mob piglin_head
execute if score #mob_remain generate matches 1.. run return 0
execute positioned 3.5 1.9375 4.5 unless entity @e[tag=mob,tag=!blaze,type=item_display,distance=..0.2] run scoreboard players reset #remain_mob piglin_head
execute positioned 3.5 1.9375 4.5 unless entity @e[tag=mob,tag=!blaze,type=item_display,distance=..0.2] run return 0

execute unless score #remain_mob piglin_head = #remain_mob piglin_head store result score #remain_mob piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_mob piglin_head matches 1.. run scoreboard players remove #remain_mob piglin_head 1
execute if score #remain_mob piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/mob
scoreboard players reset #remain_mob piglin_head
