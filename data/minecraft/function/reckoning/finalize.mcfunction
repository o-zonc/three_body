# 정산 복원은 리액터 반응과 초과분 예치가 끝난 뒤 정확히 한 번 확정한다.
execute unless score #GLOBAL current_dim matches 4 run return 0
execute unless score #GLOBAL reckoning_pending matches 1.. run return 0

function reckoning/vault/refresh_flags
function reckoning/vault/restore
function factory/vault_restore
# 잠긴 차원에서도 노드 배치가 성공하도록 청크 확보 후 2틱 뒤 복원한다.
function reckoning/vault/restore_nodes_request
scoreboard players set #GLOBAL reckoning_pending 0
return 1
