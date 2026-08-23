# 매 틱 필요한 최소 런타임 유지 로직만 처리합니다.
# 기존 var_init의 objective 생성/누락값 복구/범위 보정은 load에서만 실행합니다.

# 신규 플레이어 또는 전체 restart 후 재초기화 대상만 trigger objective를 한 번 활성화합니다.
# 각 trigger 핸들러는 사용 후 자기 objective를 @s 기준으로 다시 활성화합니다.
execute as @a unless score @s trigger_init matches 1 run function var_init/player

# 보관소를 최대치까지 채웠을 때 영구 휴대 한도 보너스를 해금합니다.
# 실제 자원 지급 함수는 자체적으로 보관소 상한을 적용하므로, 여기서는 해금 이벤트만 감시합니다.
execute if score #information_bank meta matches 1000.. unless score #information_capacity_bonus meta matches 1.. run scoreboard players set #information_capacity_bonus meta 1
execute if score #time_bank meta matches 500.. unless score #time_capacity_bonus meta matches 1.. run scoreboard players set #time_capacity_bonus meta 1

# load에서 보너스가 복구되었거나 이번 틱에 새로 해금된 경우 휴대 한도를 한 번 동기화합니다.
execute if score #information_capacity_bonus meta matches 1.. if score #information_capacity meta matches ..20000 run function shop/third/update_capacities
execute if score #time_capacity_bonus meta matches 1.. if score #time_capacity meta matches ..10000 run function shop/third/update_capacities
