execute in three_body:polarnight run tp @a ~ 64 ~
gamerule minecraft:advance_time false
execute in three_body:polarnight run time set 18000

scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 0
scoreboard players add #GLOBAL visited_polar 1
scoreboard players set #GLOBAL current_dim 3

return 1