function dimensions/nether/piglin_head/active_check
scoreboard players set #piglin_head_operated tmp 0
execute unless score #piglin_head_active tmp matches 1 run return 0
function dimensions/nether/piglin_head/available_check
execute unless score #piglin_head_available tmp matches 1 run return 0

scoreboard players set #piglin_head_operated tmp 1

execute if score #piglin_shop_lvl piglin_head matches 1.. unless score #stop_wood piglin_head matches 1 run function dimensions/nether/piglin_head/action/wood
execute if score #piglin_shop_lvl piglin_head matches 2.. unless score #stop_stone piglin_head matches 1 run function dimensions/nether/piglin_head/action/stone
execute if score #piglin_shop_lvl piglin_head matches 3.. unless score #stop_mob piglin_head matches 1 run function dimensions/nether/piglin_head/action/mob
execute if score #piglin_shop_lvl piglin_head matches 4.. unless score #stop_coal piglin_head matches 1 run function dimensions/nether/piglin_head/action/coal
execute if score #piglin_shop_lvl piglin_head matches 5.. unless score #stop_iron piglin_head matches 1 run function dimensions/nether/piglin_head/action/iron
execute if score #piglin_shop_lvl piglin_head matches 6.. unless score #stop_obsidian piglin_head matches 1 run function dimensions/nether/piglin_head/action/obsidian
execute if score #piglin_shop_lvl piglin_head matches 8.. unless score #stop_quartz piglin_head matches 1 run function dimensions/nether/piglin_head/action/quartz
execute if score #piglin_shop_lvl piglin_head matches 7.. unless score #stop_blaze piglin_head matches 1 run function dimensions/nether/piglin_head/action/blaze
