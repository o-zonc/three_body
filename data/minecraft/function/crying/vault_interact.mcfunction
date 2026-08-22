# 극야 우는 흑요석 금고 상호작용

# 이미 개방한 뒤에는 진행도만 표시합니다.
execute if score #crying_vault_opened var matches 1 run title @s actionbar {"text":"4 / 4"}
execute if score #crying_vault_opened var matches 1 run return 0

# 네 조각이 모두 모이지 않았다면 현재 진행도만 표시합니다.
execute unless score #crying_count var matches 4 run title @s actionbar [{"score":{"name":"#crying_count","objective":"var"}},{"text":" / 4"}]
execute unless score #crying_count var matches 4 run return 0

scoreboard players set #crying_vault_opened var 1
function polarnight/structure/vault/on
