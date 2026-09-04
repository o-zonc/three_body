# 시간이 정지된 다른 세계에 차원 이동기 없이 진입한 경우 긴급 귀환 수단을 지급한다.
# 멸망 연출이 진행 중이라면, 멸망 전부터 시간이 정지돼 있었던 경우에만 인위적 이동으로 인정한다.
execute unless score #GLOBAL era_paused matches 1 run return 0
execute if score #disaster_running run matches 1 unless score #GLOBAL era_observed matches 1 run return 0

# 구매 여부가 아니라 실제 인벤토리에서 허용된 귀환/차원 이동기 세 종류를 검사한다.
execute store result score #overworld_mover_count tmp run clear @s minecraft:green_dye[minecraft:custom_data~{overworld_move:1b}] 0
execute store result score #overworld_escape_count tmp run clear @s minecraft:green_dye[minecraft:custom_data~{overworld_escape:1b}] 0
execute store result score #dimension_mover_count tmp run clear @s minecraft:brick[minecraft:custom_data~{disaster:1b}] 0
execute if score #overworld_mover_count tmp matches 1.. run return 0
execute if score #overworld_escape_count tmp matches 1.. run return 0
execute if score #dimension_mover_count tmp matches 1.. run return 0

# 지급 성공 여부와 무관하게, 이동기 없이 시간 정지 세계에 진입한 행위 자체를 기록한다.
function item/give/overworld_escape
function mover/unauthorized/warn_start

# 위반 횟수는 문명 공용 상태이며, 두 번째 위반에서만 재난을 한 번 예약한다.
scoreboard players add #unauthorized_dim_moves var 1
execute if score #unauthorized_dim_moves var matches 2.. unless score #unauthorized_disaster_done var matches 1 run function mover/unauthorized/schedule_disaster
