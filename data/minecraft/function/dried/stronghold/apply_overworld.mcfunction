execute unless score #stronghold_overworld upgrade matches 1.. run return 0
# 이미 0인 재생산 대기는 그대로 유지한다.
execute if score #stronghold_regen_value tmp matches 0 run return 0
scoreboard players set #stronghold_multiplier tmp 80
scoreboard players operation #stronghold_regen_value tmp *= #stronghold_multiplier tmp
scoreboard players set #stronghold_divisor tmp 100
scoreboard players operation #stronghold_regen_value tmp /= #stronghold_divisor tmp
