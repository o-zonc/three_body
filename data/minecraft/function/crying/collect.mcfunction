# 우는 흑요석 수집
# Macro args: id, x, z
# 각 차원 조각은 한 번만 수집되며, 수집할 때 극야의 대응 위치에 엔더 수정을 하나 생성합니다.

# 설치 완료 스코어가 권위 상태입니다. 재인터렉션에서는 청크 로드나 엔티티 변경을 전혀 하지 않습니다.
$execute if score #crying_$(id) var matches 1 if score #$(id) crystal_state matches 1 run function crying/advancement_sync
$execute if score #crying_$(id) var matches 1 if score #$(id) crystal_state matches 1 run title @s actionbar [{"score":{"name":"#crying_count","objective":"var"},color:"dark_gray"},{"text":" / 4",color:"dark_gray"}]
$execute if score #crying_$(id) var matches 1 if score #$(id) crystal_state matches 1 run return 0

# 기존 저장 데이터에는 설치 완료 스코어가 없으므로, 최초 재인터렉션에서 한 번만 정리·설치합니다.
$execute in polarnight store success score #crying_crystal_forceload_added tmp run forceload add $(x) $(z)
$execute if score #crying_$(id) var matches 1 in polarnight positioned $(x) 67 $(z) as @e[type=minecraft:end_crystal,distance=..2] run data merge entity @s {Invulnerable:0b}
$execute if score #crying_$(id) var matches 1 in polarnight positioned $(x) 67 $(z) run kill @e[type=minecraft:end_crystal,distance=..2]
$execute if score #crying_$(id) var matches 1 in polarnight store success score #$(id) crystal_state run summon minecraft:end_crystal $(x) 67 $(z) {Invulnerable:1b,ShowBottom:0b,Tags:["crying_obsidian_crystal","crying_$(id)_crystal"]}
$execute if score #crying_$(id) var matches 1 run function crying/advancement_sync
$execute if score #crying_$(id) var matches 1 run title @s actionbar [{"score":{"name":"#crying_count","objective":"var"},color:"dark_gray"},{"text":" / 4",color:"dark_gray"}]
$execute if score #crying_$(id) var matches 1 if score #crying_crystal_forceload_added tmp matches 1 in polarnight run forceload remove $(x) $(z)
$execute if score #crying_$(id) var matches 1 run return 0

$scoreboard players set #crying_$(id) var 1
scoreboard players add #crying_count var 1
execute if score #crying_count var matches 5.. run scoreboard players set #crying_count var 4

# 첫 수집에서도 태그가 누락된 과거 중복 수정까지 좌표 기준으로 제거한 뒤 정확히 하나만 설치합니다.
$execute in polarnight positioned $(x) 67 $(z) as @e[type=minecraft:end_crystal,distance=..2] run data merge entity @s {Invulnerable:0b}
$execute in polarnight positioned $(x) 67 $(z) run kill @e[type=minecraft:end_crystal,distance=..2]
$execute in polarnight store success score #$(id) crystal_state run summon minecraft:end_crystal $(x) 67 $(z) {Invulnerable:1b,ShowBottom:0b,Tags:["crying_obsidian_crystal","crying_$(id)_crystal"]}

# 수집한 세계에 대응하는 발전과제 조건을 지급합니다.
function crying/advancement_sync

title @s actionbar [{"score":{"name":"#crying_count","objective":"var"}, color:"dark_purple"},{"text":" / 4", color:"dark_gray"}]

$execute if score #crying_crystal_forceload_added tmp matches 1 in polarnight run forceload remove $(x) $(z)
