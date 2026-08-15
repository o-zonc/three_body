scoreboard players set #piglin_head_active tmp 0
execute if score #piglin_shop_lvl piglin_head matches 1.. unless score #stop_wood piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 2.. unless score #stop_stone piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 3.. unless score #stop_mob piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 4.. unless score #stop_coal piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 5.. unless score #stop_iron piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 6.. unless score #stop_obsidian piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 8.. unless score #stop_quartz piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
execute if score #piglin_shop_lvl piglin_head matches 7.. unless score #stop_blaze piglin_head matches 1 run scoreboard players set #piglin_head_active tmp 1
