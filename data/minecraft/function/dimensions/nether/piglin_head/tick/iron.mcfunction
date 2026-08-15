execute unless score #piglin_shop_lvl piglin_head matches 5.. run scoreboard players reset #remain_iron piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 5.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_iron piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_iron piglin_head matches 1 run scoreboard players reset #remain_iron piglin_head
execute if score #stop_iron piglin_head matches 1 run return 0
execute unless block -19 1 3 minecraft:iron_ore run scoreboard players reset #remain_iron piglin_head
execute unless block -19 1 3 minecraft:iron_ore run return 0

execute unless score #remain_iron piglin_head = #remain_iron piglin_head store result score #remain_iron piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_iron piglin_head matches 1.. run scoreboard players remove #remain_iron piglin_head 1
execute if score #remain_iron piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/iron
scoreboard players reset #remain_iron piglin_head
