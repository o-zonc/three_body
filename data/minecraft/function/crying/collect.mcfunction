# 우는 흑요석 수집
# Macro args: id, x, z
# 각 차원 조각은 한 번만 수집되며, 수집할 때 극야의 대응 위치에 엔더 수정을 하나 생성합니다.

# 이미 수집한 조각이면 비밀 발전과제를 동기화하고 현재 진행도만 다시 표시합니다.
$execute if score #crying_$(id) var matches 1 run function crying/advancement_sync
$execute if score #crying_$(id) var matches 1 run title @s actionbar [{"score":{"name":"#crying_count","objective":"var"}, color:"dark_gray"},{"text":" / 4", color:"dark_gray"}]
$execute if score #crying_$(id) var matches 1 run return 0

$scoreboard players set #crying_$(id) var 1
scoreboard players add #crying_count var 1
execute if score #crying_count var matches 5.. run scoreboard players set #crying_count var 4

$execute in polarnight run summon minecraft:end_crystal $(x) 67 $(z) {Invulnerable:1b,ShowBottom:0b,Tags:["crying_obsidian_crystal","crying_$(id)_crystal"]}

# 수집한 세계에 대응하는 비밀 발전과제를 지급합니다.
function crying/advancement_sync

title @s actionbar [{"score":{"name":"#crying_count","objective":"var"}, color:"dark_purple"},{"text":" / 4", color:"dark_gray"}]
