scoreboard players set #material_max tmp 999999999
execute if score #material_add_value tmp matches ..0 run return 0
execute if score #wood material matches ..-1 run scoreboard players set #wood material 0
scoreboard players operation #material_add_limit tmp = #material_max tmp
scoreboard players operation #material_add_limit tmp -= #wood material
execute if score #material_add_limit tmp matches ..0 run scoreboard players operation #wood material = #material_max tmp
execute if score #material_add_limit tmp matches ..0 run return 0
execute if score #material_add_value tmp > #material_add_limit tmp run scoreboard players operation #material_add_value tmp = #material_add_limit tmp
scoreboard players operation #wood material += #material_add_value tmp

# 실제 나무를 처음 획득한 순간 목기 시대에 진입합니다.
# 이전 문명에서 발전과제를 이미 완료한 경우 grant만으로는 보상 함수가 다시 실행되지 않으므로,
# 현재 시대가 초기 상태라면 시대 진입 함수를 직접 한 번 실행합니다.
execute if score #wood material matches 1.. unless score #overworld civilization_age matches 1.. as @a[tag=player,limit=1] at @s run function story/overworld/age/02_wood_age
