# 메타 자원 원장 동기화는 5틱마다 수행합니다.
# 인벤토리 clear ... 0 스캔을 매 tick 반복하지 않으면서 UI 반응성은 유지합니다.
# 자동 인출은 상시 보충이 아니라 결제 시에만 처리하며, 여기서는 해금 조건만 확인합니다.
scoreboard players add #meta_sync_timer var 1
execute unless score #meta_sync_timer var matches 5.. run return 0
scoreboard players set #meta_sync_timer var 0
execute as @a[tag=player,limit=1] run function meta/sync
execute as @a[tag=player,limit=1] run function meta/auto_withdraw
