execute unless score #piglin_shop_lvl piglin_head matches 6.. run scoreboard players reset #remain_obsidian piglin_head
execute unless score #piglin_shop_lvl piglin_head matches 6.. run return 0
execute if score #stop_all piglin_head matches 1 run scoreboard players reset #remain_obsidian piglin_head
execute if score #stop_all piglin_head matches 1 run return 0
execute if score #stop_obsidian piglin_head matches 1 run scoreboard players reset #remain_obsidian piglin_head
execute if score #stop_obsidian piglin_head matches 1 run return 0
execute unless block -17 1 5 minecraft:obsidian run scoreboard players reset #remain_obsidian piglin_head
execute unless block -17 1 5 minecraft:obsidian run return 0
scoreboard players set #piglin_head_available tmp 0
function dimensions/nether/piglin_head/available_obsidian
execute unless score #piglin_head_available tmp matches 1 run scoreboard players reset #remain_obsidian piglin_head
execute unless score #piglin_head_available tmp matches 1 run return 0

execute unless score #remain_obsidian piglin_head = #remain_obsidian piglin_head store result score #remain_obsidian piglin_head run function dimensions/nether/piglin_head/value/speed_up_value
execute if score #remain_obsidian piglin_head matches 1.. run scoreboard players remove #remain_obsidian piglin_head 1
execute if score #remain_obsidian piglin_head matches 1.. run return 0

function dimensions/nether/piglin_head/action/obsidian
scoreboard players reset #remain_obsidian piglin_head
