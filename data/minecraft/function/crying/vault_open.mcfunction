# 극야 우는 흑요석 금고 개방

# 이미 열린 상태라면 누락된 비밀 발전과제를 보정하고 중복 실행하지 않는다.
execute if score #crying_vault_opened var matches 1 run function crying/advancement_sync
execute unless entity @a[tag=accelerator_experiment_running] if score #crying_vault_opened var matches 1 run title @s actionbar {"text":"이미 개방했습니다.","color":"gold","bold":false,italic:true}
execute if score #crying_vault_opened var matches 1 run return 0

# 네 조각이 모두 모였을 때만 개방할 수 있다.
function crying/update_count
execute unless entity @a[tag=accelerator_experiment_running] unless score #crying_count var matches 4 run title @s actionbar [{text:"",italic:true},{"score":{"name":"#crying_count","objective":"var"}, color:"dark_gray"},{"text":" / 4", color:"dark_gray"}]
execute unless score #crying_count var matches 4 run return 0

scoreboard players set #crying_vault_opened var 1
function polarnight/structure/vault/on

# 저장고 개방 challenge를 포함한 비밀 발전과제를 동기화한다.
function crying/advancement_sync
