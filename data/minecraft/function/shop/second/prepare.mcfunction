# Macro args: id
$execute unless score #$(id)_second_lvl upgrade = #$(id)_second_lvl upgrade run scoreboard players set #$(id)_second_lvl upgrade 0
$scoreboard players operation #second_lvl tmp = #$(id)_second_lvl upgrade
scoreboard players set #second_current tmp 0
scoreboard players set #second_next tmp 0
execute if score #second_lvl tmp matches 1 run scoreboard players set #second_current tmp 1
execute if score #second_lvl tmp matches 2 run scoreboard players set #second_current tmp 2
execute if score #second_lvl tmp matches 3 run scoreboard players set #second_current tmp 5
execute if score #second_lvl tmp matches 4.. run scoreboard players set #second_current tmp 10
execute if score #second_lvl tmp matches 0 run scoreboard players set #second_next tmp 1
execute if score #second_lvl tmp matches 1 run scoreboard players set #second_next tmp 2
execute if score #second_lvl tmp matches 2 run scoreboard players set #second_next tmp 5
execute if score #second_lvl tmp matches 3 run scoreboard players set #second_next tmp 10

# 열기·냉기 단말은 보너스 대신 자연 지급 주기를 표시합니다.
$execute if score #second_lvl tmp matches 0 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 1200
$execute if score #second_lvl tmp matches 1 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 900
$execute if score #second_lvl tmp matches 2 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 600
$execute if score #second_lvl tmp matches 3 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 400
$execute if score #second_lvl tmp matches 4.. if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_current tmp 200
$execute if score #second_lvl tmp matches 0 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 900
$execute if score #second_lvl tmp matches 1 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 600
$execute if score #second_lvl tmp matches 2 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 400
$execute if score #second_lvl tmp matches 3 if score #$(id)_second_kind tmp matches 1 run scoreboard players set #second_next tmp 200

# 금·다이아몬드에 적용되는 공통 생산량 보너스와 실제 적용 수치
execute store result score #second_production_base tmp run function resource/production/base
scoreboard players operation #second_common_bonus tmp = #second_production_base tmp
scoreboard players remove #second_common_bonus tmp 1
execute store result score #second_extreme_multiplier tmp run function resource/production/extreme_multiplier
scoreboard players operation #second_common_effective tmp = #second_common_bonus tmp
scoreboard players operation #second_common_effective tmp *= #second_extreme_multiplier tmp

data remove storage data tmp.cost
execute if score #second_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"copper",amount:100},{type:"iron",amount:100}]
execute if score #second_lvl tmp matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:250},{type:"emerald",amount:50}]
execute if score #second_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"emerald",amount:150},{type:"lapis",amount:100}]
execute if score #second_lvl tmp matches 3 run data modify storage data tmp.cost set value [{type:"emerald",amount:400},{type:"lapis",amount:300}]
