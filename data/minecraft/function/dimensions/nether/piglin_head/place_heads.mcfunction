execute if score #piglin_shop_lvl piglin_head matches 1.. unless block 0 2 4 piglin_head run setblock 0 2 4 minecraft:piglin_head[powered=false,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 1.. unless score #stop_wood piglin_head matches 1 run setblock 0 2 4 minecraft:piglin_head[powered=true,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 1.. if score #stop_wood piglin_head matches 1 run setblock 0 2 4 minecraft:piglin_head[powered=false,rotation=0] replace
execute unless score #piglin_shop_lvl piglin_head matches 1.. run setblock 0 2 4 air replace

execute if score #piglin_shop_lvl piglin_head matches 2.. unless block -3 2 4 piglin_head run setblock -3 2 4 minecraft:piglin_head[powered=false,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 2.. unless score #stop_stone piglin_head matches 1 run setblock -3 2 4 minecraft:piglin_head[powered=true,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 2.. if score #stop_stone piglin_head matches 1 run setblock -3 2 4 minecraft:piglin_head[powered=false,rotation=0] replace
execute unless score #piglin_shop_lvl piglin_head matches 2.. run setblock -3 2 4 air replace

execute if score #piglin_shop_lvl piglin_head matches 3.. unless block 3 2 4 piglin_head run setblock 3 2 4 minecraft:piglin_head[powered=false,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 3.. unless score #stop_mob piglin_head matches 1 run setblock 3 2 4 minecraft:piglin_head[powered=true,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 3.. if score #stop_mob piglin_head matches 1 run setblock 3 2 4 minecraft:piglin_head[powered=false,rotation=0] replace
execute unless score #piglin_shop_lvl piglin_head matches 3.. run setblock 3 2 4 air replace

execute if score #piglin_shop_lvl piglin_head matches 4.. unless block -15 2 3 piglin_head run setblock -15 2 3 minecraft:piglin_head[powered=false,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 4.. unless score #stop_coal piglin_head matches 1 run setblock -15 2 3 minecraft:piglin_head[powered=true,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 4.. if score #stop_coal piglin_head matches 1 run setblock -15 2 3 minecraft:piglin_head[powered=false,rotation=0] replace
execute unless score #piglin_shop_lvl piglin_head matches 4.. run setblock -15 2 3 air replace

execute if score #piglin_shop_lvl piglin_head matches 5.. unless block -19 2 3 piglin_head run setblock -19 2 3 minecraft:piglin_head[powered=false,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 5.. unless score #stop_iron piglin_head matches 1 run setblock -19 2 3 minecraft:piglin_head[powered=true,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 5.. if score #stop_iron piglin_head matches 1 run setblock -19 2 3 minecraft:piglin_head[powered=false,rotation=0] replace
execute unless score #piglin_shop_lvl piglin_head matches 5.. run setblock -19 2 3 air replace

execute if score #piglin_shop_lvl piglin_head matches 6.. unless block -17 2 5 piglin_head run setblock -17 2 5 minecraft:piglin_head[powered=false,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 6.. unless score #stop_obsidian piglin_head matches 1 run setblock -17 2 5 minecraft:piglin_head[powered=true,rotation=0] replace
execute if score #piglin_shop_lvl piglin_head matches 6.. if score #stop_obsidian piglin_head matches 1 run setblock -17 2 5 minecraft:piglin_head[powered=false,rotation=0] replace
execute unless score #piglin_shop_lvl piglin_head matches 6.. run setblock -17 2 5 air replace

execute if score #piglin_shop_lvl piglin_head matches 8.. unless block -47 2 4 piglin_head run setblock -47 2 4 minecraft:piglin_head[powered=false,rotation=8] replace
execute if score #piglin_shop_lvl piglin_head matches 8.. unless score #stop_quartz piglin_head matches 1 run setblock -47 2 4 minecraft:piglin_head[powered=true,rotation=8] replace
execute if score #piglin_shop_lvl piglin_head matches 8.. if score #stop_quartz piglin_head matches 1 run setblock -47 2 4 minecraft:piglin_head[powered=false,rotation=8] replace
execute unless score #piglin_shop_lvl piglin_head matches 8.. run setblock -47 2 4 air replace

execute if score #piglin_shop_lvl piglin_head matches 7.. unless block -77 2 13 piglin_head run setblock -77 2 13 minecraft:piglin_head[powered=false,rotation=4] replace
execute if score #piglin_shop_lvl piglin_head matches 7.. unless score #stop_blaze piglin_head matches 1 run setblock -77 2 13 minecraft:piglin_head[powered=true,rotation=4] replace
execute if score #piglin_shop_lvl piglin_head matches 7.. if score #stop_blaze piglin_head matches 1 run setblock -77 2 13 minecraft:piglin_head[powered=false,rotation=4] replace
execute unless score #piglin_shop_lvl piglin_head matches 7.. run setblock -77 2 13 air replace
