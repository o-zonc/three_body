# 만료 뒤 위험한 연출/정산 상태라면 pending을 유지하고 다음 tick에 다시 검사합니다.
execute if score #disaster_running run matches 1 run return 0
execute if score #GLOBAL reckoning_pending matches 1.. run return 0
execute if score #frozen_maze_active var matches 1 run return 0
execute if score #dawn_reset_pending var matches 1 run return 0
execute if entity @a[tag=ending_active] run return 0
execute if entity @e[tag=story_intro] run return 0
execute unless score #block intro matches 1 run return 0

# 기존 문명의 정산이 가능한 세 기본 차원에서 첫 안전 시점에만 시작합니다.
execute unless score #GLOBAL current_dim matches 0..2 run return 0
execute as @a[tag=player,limit=1] at @s run function resource/color/event/meteor_start
