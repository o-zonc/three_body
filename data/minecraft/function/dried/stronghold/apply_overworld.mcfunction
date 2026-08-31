execute unless score #stronghold_overworld upgrade matches 1.. run return 0
# 이미 0인 재생산 대기는 그대로 유지한다.
execute if score #stronghold_regen_value tmp matches 0 run return 0
scoreboard players set #stronghold_multiplier tmp 80
scoreboard players operation #stronghold_regen_value tmp *= #stronghold_multiplier tmp
scoreboard players set #stronghold_divisor tmp 100
scoreboard players operation #stronghold_regen_value tmp /= #stronghold_divisor tmp
# 양수였던 재생산 대기가 정수 나눗셈으로 0틱이 되지 않도록 최솟값을 1틱으로 고정한다.
execute if score #stronghold_regen_value tmp matches 0 run scoreboard players set #stronghold_regen_value tmp 1
