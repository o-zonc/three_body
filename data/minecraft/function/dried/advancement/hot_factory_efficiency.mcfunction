# Macro args: id, fuel, interval
# [뜨거워!] 발전과제를 보유한 동안 공장의 연료 소비량을 30% 줄이고,
# 블록 파괴 시도 주기를 10% 줄입니다.
execute unless entity @a[tag=player,advancements={2_dried/03_hot=true}] run return 0

# 연료 소비량 ×0.7 (정수 연산으로 내림, 최소 1개)
$scoreboard players set #hot_factory_fuel tmp $(fuel)
scoreboard players set #hot_factory_fuel_multiplier tmp 7
scoreboard players set #hot_factory_divisor tmp 10
scoreboard players operation #hot_factory_fuel tmp *= #hot_factory_fuel_multiplier tmp
scoreboard players operation #hot_factory_fuel tmp /= #hot_factory_divisor tmp
execute if score #hot_factory_fuel tmp matches ..0 run scoreboard players set #hot_factory_fuel tmp 1
$execute store result storage data tmp.factory.$(id).now.fuel int 1 run scoreboard players get #hot_factory_fuel tmp

# 블록 파괴 시도 주기 ×0.9 (정수 연산으로 내림, 최소 1틱)
$scoreboard players set #hot_factory_interval tmp $(interval)
scoreboard players set #hot_factory_interval_multiplier tmp 9
scoreboard players operation #hot_factory_interval tmp *= #hot_factory_interval_multiplier tmp
scoreboard players operation #hot_factory_interval tmp /= #hot_factory_divisor tmp
execute if score #hot_factory_interval tmp matches ..0 run scoreboard players set #hot_factory_interval tmp 1
$execute store result storage data tmp.factory.$(id).now.interval int 1 run scoreboard players get #hot_factory_interval tmp

return 1
