# 극야 우는 흑요석 금고 개방

# 이미 열린 상태라면 중복 실행하지 않습니다.
execute if score #crying_vault_opened var matches 1 run title @s actionbar {"text":"이미 개방했습니다.","color":"gold","italic":true,"bold":false}
execute if score #crying_vault_opened var matches 1 run return 0

# 네 조각이 모두 모였을 때만 개방할 수 있습니다.
execute unless score #crying_count var matches 4 run title @s actionbar [{"score":{"name":"#crying_count","objective":"var"}},{"text":" / 4"}]
execute unless score #crying_count var matches 4 run return 0

scoreboard players set #crying_vault_opened var 1
function polarnight/structure/vault/on
