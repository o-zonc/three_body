execute unless score #piglin_shop_lvl piglin_head matches 4.. run scoreboard players reset #remain_coal piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 4.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_coal piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_coal piglin_head matches 1 run scoreboard players reset #remain_coal piglin_head
execute if score #stop_coal piglin_head matches 1 run return 0
execute unless block -15 1 3 minecraft:coal_ore run scoreboard players reset #remain_coal piglin_head
execute unless block -15 1 3 minecraft:coal_ore run return 0

execute unless score #remain_coal piglin_head = #remain_coal piglin_head store result score #remain_coal piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_coal piglin_head matches 1.. run scoreboard players remove #remain_coal piglin_head 1
execute if score #remain_coal piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/coal
scoreboard players reset #remain_coal piglin_head
