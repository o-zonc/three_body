execute unless score #piglin_shop_lvl piglin_head matches 2.. run scoreboard players reset #remain_stone piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 2.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_stone piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_stone piglin_head matches 1 run scoreboard players reset #remain_stone piglin_head
execute if score #stop_stone piglin_head matches 1 run return 0
execute unless block -3 -59 35 minecraft:stone run scoreboard players reset #remain_stone piglin_head
execute unless block -3 -59 35 minecraft:stone run return 0

execute unless score #remain_stone piglin_head = #remain_stone piglin_head store result score #remain_stone piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_stone piglin_head matches 1.. run scoreboard players remove #remain_stone piglin_head 1
execute if score #remain_stone piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/stone
scoreboard players reset #remain_stone piglin_head
