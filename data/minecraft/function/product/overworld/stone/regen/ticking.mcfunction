execute if score #disable_stone_production var matches 1 run return 0
execute unless score #stone unlock matches 1 run setblock -3 1 4 air replace
execute unless score #stone unlock matches 1 run return 0

execute unless block -3 1 4 air run return run scoreboard players reset #stone_remain generate

# 돌 파괴
execute if block -3 1 4 air unless score #stone_remain generate = #stone_remain generate run function product/overworld/stone/regen/break
