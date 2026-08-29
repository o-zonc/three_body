# Macro args: id, fuel, interval
# [뜨거워!] 발전과제를 보유한 동안 블록 파괴 시도 주기를 10% 줄입니다.
# 연료 할인은 소수 누적 계산을 위해 factory/energy/apply_fuel에서 함께 처리합니다.
execute unless entity @a[tag=player,advancements={2_dried/03_hot=true}] run return 0

scoreboard players set #hot_factory_divisor tmp 10
# 블록 파괴 시도 주기 ×0.9 (정수 연산으로 내림, 최소 1틱)
$scoreboard players set #hot_factory_interval tmp $(interval)
scoreboard players set #hot_factory_interval_multiplier tmp 9
scoreboard players operation #hot_factory_interval tmp *= #hot_factory_interval_multiplier tmp
scoreboard players operation #hot_factory_interval tmp /= #hot_factory_divisor tmp
execute if score #hot_factory_interval tmp matches ..0 run scoreboard players set #hot_factory_interval tmp 1
$execute store result storage data tmp.factory.$(id).now.interval int 1 run scoreboard players get #hot_factory_interval tmp

return 1
