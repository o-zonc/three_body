# 로드가 완료된 한 설치 좌표의 엔드 수정을 정확히 하나로 보정합니다.
# Macro args: id, x, z

# 설치 여부는 엔티티나 과거 설치 기록이 아니라 crystal_state만으로 결정합니다.
$execute unless score #$(id) crystal_state matches 1 run scoreboard players set #crystal_$(id)_pending var 0
$execute unless score #$(id) crystal_state matches 1 run return 0

# 이전 작업에서 남았을 수 있는 임시 선택 태그를 먼저 비웁니다.
execute in minecraft:polarnight run tag @e[type=minecraft:end_crystal,tag=crying_crystal_keeper] remove crying_crystal_keeper

# 해당 좌표에 이미 수정이 있으면 가장 가까운 하나를 재사용합니다.
$execute in minecraft:polarnight positioned $(x) 67 $(z) run tag @e[type=minecraft:end_crystal,distance=..2,sort=nearest,limit=1] add crying_crystal_keeper

# 없을 때만 새로 생성합니다. 판정도 반드시 이 설치 좌표 안에서 수행해 다른 좌표의 임시 태그와 충돌하지 않게 합니다.
$execute in minecraft:polarnight positioned $(x) 67 $(z) unless entity @e[type=minecraft:end_crystal,distance=..2,tag=crying_crystal_keeper] run summon minecraft:end_crystal $(x) 67 $(z) {Invulnerable:1b,ShowBottom:0b,Tags:["crying_crystal_keeper","crying_obsidian_crystal","crying_$(id)_crystal"]}

# 선택한 수정의 위치와 속성을 보정합니다. Tags NBT를 덮어쓰지 않고 tag 명령으로 필요한 태그만 더합니다.
$execute in minecraft:polarnight positioned $(x) 67 $(z) as @e[type=minecraft:end_crystal,distance=..2,tag=crying_crystal_keeper,sort=nearest,limit=1] run tp @s $(x) 67 $(z)
$execute in minecraft:polarnight positioned $(x) 67 $(z) as @e[type=minecraft:end_crystal,distance=..2,tag=crying_crystal_keeper,sort=nearest,limit=1] run data merge entity @s {Invulnerable:1b,ShowBottom:0b}
$execute in minecraft:polarnight positioned $(x) 67 $(z) run tag @e[type=minecraft:end_crystal,distance=..2,tag=crying_crystal_keeper,sort=nearest,limit=1] add crying_obsidian_crystal
$execute in minecraft:polarnight positioned $(x) 67 $(z) run tag @e[type=minecraft:end_crystal,distance=..2,tag=crying_crystal_keeper,sort=nearest,limit=1] add crying_$(id)_crystal

# 같은 좌표의 중복 수정은 선택한 하나를 제외하고 제거합니다.
$execute in minecraft:polarnight positioned $(x) 67 $(z) as @e[type=minecraft:end_crystal,distance=..2,tag=!crying_crystal_keeper] run data merge entity @s {Invulnerable:0b}
$execute in minecraft:polarnight positioned $(x) 67 $(z) run kill @e[type=minecraft:end_crystal,distance=..2,tag=!crying_crystal_keeper]

# 실제 엔티티가 확인되면 현재 설치 요청을 완료합니다.
$execute in minecraft:polarnight positioned $(x) 67 $(z) if entity @e[type=minecraft:end_crystal,distance=..2,tag=crying_crystal_keeper,limit=1] run scoreboard players set #crystal_$(id)_pending var 0
