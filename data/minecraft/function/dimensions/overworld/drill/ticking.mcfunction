# D의 시련에서는 드릴이 손실되어 진행하지 않음
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 run return 0

# 동굴 해금 전에는 드릴을 진행하지 않음
execute unless score #cave unlock matches 1 run return 0

# 이전 저장 데이터에 #y가 없을 때의 시작 높이
execute unless score #y var = #y var run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000
execute if score #5_1_effective tmp matches 1 run return 0

# 현재 업그레이드 값과 깊이를 반영한 최종 속력을 읽음
execute store result score #drill_effective_speed tmp run function dimensions/overworld/drill/value/effective_speed
function dimensions/overworld/shop/crystal_shop/apply/drill_speed
execute store result score #drill_limit_value tmp run function dimensions/overworld/drill/value/limit_value

# 현재 limit보다 높을 때만 아래로 진행하고, 초과 하강분은 limit에서 막음
execute if score #y var > #drill_limit_value tmp run scoreboard players operation #y var -= #drill_effective_speed tmp
execute if score #y var < #drill_limit_value tmp run scoreboard players operation #y var = #drill_limit_value tmp
