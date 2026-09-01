# Macro args: id, fuel. 모든 연료 할인을 100배 정밀도로 누적한 뒤 반올림한다.
$scoreboard players set #factory_energy_fuel tmp $(fuel)
scoreboard players set #factory_energy_scale tmp 100
scoreboard players operation #factory_energy_fuel tmp *= #factory_energy_scale tmp
scoreboard players set #factory_energy_divisor tmp 100

# [뜨거워!] 발전과제: 석탄 소비 30% 감소
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players set #factory_energy_multiplier tmp 70
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players operation #factory_energy_fuel tmp *= #factory_energy_multiplier tmp
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players operation #factory_energy_fuel tmp /= #factory_energy_divisor tmp

# 태양광 발전 연구: Lv.1은 25%, Lv.2 이상은 60% 감소
scoreboard players set #factory_energy_multiplier tmp 75
execute if score #factory_energy_level upgrade matches 2.. run scoreboard players set #factory_energy_multiplier tmp 40
execute if score #factory_energy_level upgrade matches 1.. run scoreboard players operation #factory_energy_fuel tmp *= #factory_energy_multiplier tmp
execute if score #factory_energy_level upgrade matches 1.. run scoreboard players operation #factory_energy_fuel tmp /= #factory_energy_divisor tmp

# 0.5개 미만은 무료, 그 이상은 가장 가까운 정수로 반올림한다.
execute if score #factory_energy_fuel tmp matches ..49 run scoreboard players set #factory_energy_fuel tmp 0
execute if score #factory_energy_fuel tmp matches 50.. run scoreboard players add #factory_energy_fuel tmp 50
execute if score #factory_energy_fuel tmp matches 50.. run scoreboard players operation #factory_energy_fuel tmp /= #factory_energy_divisor tmp
$execute store result storage data tmp.factory.$(id).now.fuel int 1 run scoreboard players get #factory_energy_fuel tmp
