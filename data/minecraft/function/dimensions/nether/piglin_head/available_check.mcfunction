scoreboard players set #piglin_head_available tmp 0

execute if score #piglin_shop_lvl piglin_head matches 1.. unless score #stop_wood piglin_head matches 1 if block 0 1 4 minecraft:oak_log run scoreboard players set #piglin_head_available tmp 1
execute if score #piglin_shop_lvl piglin_head matches 2.. unless score #stop_stone piglin_head matches 1 if block -3 1 4 minecraft:stone run scoreboard players set #piglin_head_available tmp 1
execute if score #piglin_shop_lvl piglin_head matches 3.. unless score #stop_mob piglin_head matches 1 unless score #mob_remain generate matches 1.. positioned 3.5 1.9375 4.5 if entity @e[tag=mob,tag=!blaze,type=item_display,distance=..0.2] run scoreboard players set #piglin_head_available tmp 1
execute if score #piglin_shop_lvl piglin_head matches 4.. unless score #stop_coal piglin_head matches 1 if block -15 1 3 minecraft:coal_ore run scoreboard players set #piglin_head_available tmp 1
execute if score #piglin_shop_lvl piglin_head matches 5.. unless score #stop_iron piglin_head matches 1 if block -19 1 3 minecraft:iron_ore run scoreboard players set #piglin_head_available tmp 1
execute if score #piglin_shop_lvl piglin_head matches 6.. unless score #stop_obsidian piglin_head matches 1 if block -17 1 5 minecraft:obsidian run function dimensions/nether/piglin_head/available_obsidian
execute if score #piglin_shop_lvl piglin_head matches 8.. unless score #stop_quartz piglin_head matches 1 if block -47 1 4 minecraft:nether_quartz_ore run scoreboard players set #piglin_head_available tmp 1
execute if score #piglin_shop_lvl piglin_head matches 7.. unless score #stop_blaze piglin_head matches 1 unless score #blaze_remain generate matches 1.. positioned -76.5 1.9375 13.5 if entity @e[tag=blaze,type=item_display,distance=..0.2] run scoreboard players set #piglin_head_available tmp 1
