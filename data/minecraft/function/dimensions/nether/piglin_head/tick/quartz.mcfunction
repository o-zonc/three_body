execute unless score #piglin_shop_lvl piglin_head matches 8.. run scoreboard players reset #remain_quartz piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 8.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_quartz piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_quartz piglin_head matches 1 run scoreboard players reset #remain_quartz piglin_head
execute if score #stop_quartz piglin_head matches 1 run return 0
execute unless block -47 1 4 minecraft:nether_quartz_ore run scoreboard players reset #remain_quartz piglin_head
execute unless block -47 1 4 minecraft:nether_quartz_ore run return 0

execute unless score #remain_quartz piglin_head = #remain_quartz piglin_head store result score #remain_quartz piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_quartz piglin_head matches 1.. run scoreboard players remove #remain_quartz piglin_head 1
execute if score #remain_quartz piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/quartz
scoreboard players reset #remain_quartz piglin_head
