execute unless score #piglin_shop_lvl piglin_head matches 7.. run scoreboard players reset #remain_blaze piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 7.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_blaze piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_blaze piglin_head matches 1 run scoreboard players reset #remain_blaze piglin_head
execute if score #stop_blaze piglin_head matches 1 run return 0
execute if score #blaze_remain generate matches 1.. run scoreboard players reset #remain_blaze piglin_head
execute if score #blaze_remain generate matches 1.. run return 0
execute positioned -76.5 1.9375 13.5 unless entity @e[tag=blaze,type=item_display,distance=..0.2] run scoreboard players reset #remain_blaze piglin_head
execute positioned -76.5 1.9375 13.5 unless entity @e[tag=blaze,type=item_display,distance=..0.2] run return 0

execute unless score #remain_blaze piglin_head = #remain_blaze piglin_head store result score #remain_blaze piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_blaze piglin_head matches 1.. run scoreboard players remove #remain_blaze piglin_head 1
execute if score #remain_blaze piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/blaze
scoreboard players reset #remain_blaze piglin_head
