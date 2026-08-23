# 기존 material 점수 기반의 정보/시간을 새 보관소로 한 번만 이전한다.
execute if score #meta_migrated meta matches 1 run return 0
execute if score #information material matches 1.. run scoreboard players operation #information_bank meta = #information material
execute if score #time material matches 1.. run scoreboard players operation #time_bank meta = #time material
scoreboard players set #meta_migrated meta 1
return 1
