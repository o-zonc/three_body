execute unless score #stronghold_overworld upgrade matches 1.. run return 0
# 돌의 0회 재생산은 유적의 최소 1 보정보다 우선한다.
execute if score #stronghold_regen_value tmp matches 0 run return 0
scoreboard players set #stronghold_multiplier tmp 80
scoreboard players operation #stronghold_regen_value tmp *= #stronghold_multiplier tmp
scoreboard players set #stronghold_divisor tmp 100
scoreboard players operation #stronghold_regen_value tmp /= #stronghold_divisor tmp
execute if score #stronghold_regen_value tmp matches ..0 run scoreboard players set #stronghold_regen_value tmp 1
