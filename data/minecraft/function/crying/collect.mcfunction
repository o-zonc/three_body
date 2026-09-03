# 우는 흑요석 수집
# 이미 수집한 조각은 네 수집 플래그에서 계산한 진행도만 회색으로 표시한다.
$execute if score #crying_$(id) var matches 1 run function crying/update_count
$execute if score #crying_$(id) var matches 1 run function crying/advancement_sync
$execute unless entity @a[tag=accelerator_experiment_running] if score #crying_$(id) var matches 1 run title @s actionbar [{text:"",italic:false},{"score":{"name":"#crying_count","objective":"var"},"color":"dark_gray"},{"text":" / 4","color":"dark_gray"}]
$execute if score #crying_$(id) var matches 1 run return 0

# 0은 미수집, 1은 수집이다. 해당 세계의 플래그만 한 번 변경한다.
$scoreboard players set #crying_$(id) var 1
function crying/update_count

$execute if score #crying_$(id) var matches 1 unless score #crying_$(id) summoned matches 1 run execute in polarnight run summon end_crystal $(x) 67 $(z)
$scoreboard players set #crying_$(id) summoned 1

# 수집한 세계에 대응하는 발전과제 조건을 지급한다.
function crying/advancement_sync

# 방금 처음 수집한 경우에만 진행 숫자를 보라색으로 표시한다.
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar [{text:"",italic:false},{"score":{"name":"#crying_count","objective":"var"},"color":"dark_purple"},{"text":" / 4","color":"dark_gray"}]
