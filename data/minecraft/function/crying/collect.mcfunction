# 우는 흑요석 수집
# Macro args: id, x, z

# 이미 설치를 예약한 조각은 다시 예약하지 않습니다.
# 빠르게 여러 번 상호작용해도 schedule과 forceload 소유 상태가 갱신되지 않습니다.
$execute if score #crying_$(id) var matches 1 if score #crystal_$(id)_pending var matches 1 run function crying/advancement_sync
$execute if score #crying_$(id) var matches 1 if score #crystal_$(id)_pending var matches 1 run title @s actionbar [{text:"",italic:false},{"score":{"name":"#crying_count","objective":"var"},"color":"dark_purple"},{"text":" / 4","color":"dark_gray"}]
$execute if score #crying_$(id) var matches 1 if score #crystal_$(id)_pending var matches 1 run return 0

# 설치가 끝난 조각도 상태 확인만 하고 종료합니다.
# 엔드 수정 엔티티와 청크에는 더 이상 손대지 않습니다.
$execute if score #crying_$(id) var matches 1 if score #$(id) crystal_state matches 1 run function crying/advancement_sync
$execute if score #crying_$(id) var matches 1 if score #$(id) crystal_state matches 1 run title @s actionbar [{text:"",italic:false},{"score":{"name":"#crying_count","objective":"var"},"color":"dark_purple"},{"text":" / 4","color":"dark_gray"}]
$execute if score #crying_$(id) var matches 1 if score #$(id) crystal_state matches 1 run return 0

# 수집 기록은 있지만 설치 완료 상태가 없는 과거 저장 데이터만 아래 경로로 한 번 복구됩니다.
# 수집 상태는 한 번만 증가시킵니다.
$execute unless score #crying_$(id) var matches 1 run scoreboard players add #crying_count var 1
$scoreboard players set #crying_$(id) var 1
execute if score #crying_count var matches 5.. run scoreboard players set #crying_count var 4

# 엔드 수정 설치 여부의 유일한 기준인 스코어를 먼저 기록합니다.
$scoreboard players set #$(id) crystal_state 1

# 첫 수집 또는 과거 저장 데이터 복구 시에만 엔드 수정 설치를 예약합니다.
$function crying/crystal_place {id:"$(id)",x:$(x),z:$(z)}

# 수집한 세계에 대응하는 발전과제 조건을 지급합니다.
function crying/advancement_sync

title @s actionbar [{text:"",italic:false},{"score":{"name":"#crying_count","objective":"var"},"color":"dark_purple"},{"text":" / 4","color":"dark_gray"}]
