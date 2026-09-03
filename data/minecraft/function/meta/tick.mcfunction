# 메타 자원 원장 동기화는 5틱마다 수행한다.
# 인벤토리 clear ... 0 스캔을 매 tick 반복하지 않으면서 UI 반응성은 유지한다.
# 자동 인출은 상시 보충이 아니라 결제 시에만 처리하며, 여기서는 해금 조건만 확인한다.
scoreboard players add #meta_sync_timer var 1
execute unless score #meta_sync_timer var matches 5.. run return 0
scoreboard players set #meta_sync_timer var 0
# 소지 한도는 업그레이드 단계에 따라 달라질 수 있으므로 검사 직전에 갱신한다.
function shop/third/update_capacities
execute as @a[tag=player,limit=1] run function meta/sync
execute as @a[tag=player,limit=1] run function meta/limit_wallets
# 초과 아이템을 보관소로 옮긴 뒤 원장을 다시 동기화한다.
execute as @a[tag=player,limit=1] run function meta/sync
execute as @a[tag=player,limit=1] run function meta/auto_withdraw
