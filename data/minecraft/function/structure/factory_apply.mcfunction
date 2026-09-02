scoreboard players set #structure_apply_context var 1
execute if score #factory_structure_pending var matches 0 run function common/structure/factory/off
execute if score #factory_structure_pending var matches 1 run function common/structure/factory/on
# ON 적용 함수 안의 interaction deduplicate가 끝난 뒤에만 표시등을 복원한다.
execute if score #factory_structure_pending var matches 1 run function factory/refresh_lights
scoreboard players set #structure_apply_context var 0
