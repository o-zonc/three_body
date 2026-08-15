execute unless score #piglin_shop_lvl piglin_head matches 1.. run scoreboard players reset #remain_wood piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 1.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_wood piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_wood piglin_head matches 1 run scoreboard players reset #remain_wood piglin_head
execute if score #stop_wood piglin_head matches 1 run return 0
execute unless block 0 1 4 minecraft:oak_log run scoreboard players reset #remain_wood piglin_head
execute unless block 0 1 4 minecraft:oak_log run return 0

execute unless score #remain_wood piglin_head = #remain_wood piglin_head store result score #remain_wood piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_wood piglin_head matches 1.. run scoreboard players remove #remain_wood piglin_head 1
execute if score #remain_wood piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/wood
scoreboard players reset #remain_wood piglin_head
