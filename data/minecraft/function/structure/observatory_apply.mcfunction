scoreboard players set #structure_apply_context var 1
execute if score #observatory_structure_pending var matches 0 run function common/structure/observatory/off
execute if score #observatory_structure_pending var matches 1 run function common/structure/observatory/on
# 구조물 적용으로 리스폰 정박기가 다시 놓인 뒤 영구 해금 상태를 외형에 동기화한다.
execute if score #observatory_structure_pending var matches 1 if score #observatory unlock matches 1.. at @e[type=interaction,tag=era,limit=1] run setblock ~ ~ ~ respawn_anchor[charges=4] replace
scoreboard players set #structure_apply_context var 0
