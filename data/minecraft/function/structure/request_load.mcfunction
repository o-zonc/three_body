# Macro args: id, dim, from_x, from_z, to_x, to_z, apply, release
scoreboard players set #structure_forceload_added tmp 0
# 같은 구조물의 작업이 이미 청크를 확보했다면 중복 forceload 명령을 생략합니다.
$execute unless score #$(id)_forceload_owned var matches 1 in $(dim) store success score #structure_forceload_added tmp run forceload add $(from_x) $(from_z) $(to_x) $(to_z)
$execute if score #structure_forceload_added tmp matches 1 run scoreboard players set #$(id)_forceload_owned var 1
$schedule clear structure/$(release)
$schedule function structure/$(apply) 2t replace
