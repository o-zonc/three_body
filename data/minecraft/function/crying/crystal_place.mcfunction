# 엔드 수정 설치 청크를 먼저 로드하고, 다음 틱 이후 실제 보정을 예약합니다.
# Macro args: id, x, z

$scoreboard players set #crystal_$(id)_pending var 1
scoreboard players set #crying_crystal_forceload_added tmp 0
$execute unless score #crystal_$(id)_forceload_owned var matches 1 in minecraft:polarnight store success score #crying_crystal_forceload_added tmp run forceload add $(x) $(z)
$execute if score #crying_crystal_forceload_added tmp matches 1 run scoreboard players set #crystal_$(id)_forceload_owned var 1
schedule function crying/crystal_place_finish 2t replace
