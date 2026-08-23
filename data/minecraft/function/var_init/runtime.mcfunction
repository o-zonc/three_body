# 매 틱 필요한 최소 런타임 유지 로직만 처리합니다.
# 기존 var_init의 objective 생성/누락값 복구/범위 보정은 load에서만 실행합니다.

# trigger objective는 /trigger 사용 후 비활성화되므로 기존 동작과의 호환을 위해 재활성화합니다.
scoreboard players enable @a unlock_trigger
scoreboard players enable @a upgrade_trigger
scoreboard players enable @a shop_trigger
scoreboard players enable @a item_trigger
scoreboard players enable @a entrance_trigger
scoreboard players enable @a compress_trigger
scoreboard players enable @a obsidian_storage_trigger
scoreboard players enable @a scene_trigger
scoreboard players enable @a tool_trigger
scoreboard players enable @a factory_trigger
scoreboard players enable @a accelerator_trigger

# 보관소를 최대치까지 채웠을 때 영구 휴대 한도 보너스를 해금합니다.
# 실제 자원 지급 함수는 자체적으로 보관소 상한을 적용하므로, 여기서는 해금 이벤트만 감시합니다.
execute if score #information_bank meta matches 1000.. unless score #information_capacity_bonus meta matches 1.. run scoreboard players set #information_capacity_bonus meta 1
execute if score #time_bank meta matches 500.. unless score #time_capacity_bonus meta matches 1.. run scoreboard players set #time_capacity_bonus meta 1

# load에서 보너스가 복구되었거나 이번 틱에 새로 해금된 경우 휴대 한도를 한 번 동기화합니다.
execute if score #information_capacity_bonus meta matches 1.. if score #information_capacity meta matches ..20000 run function shop/third/update_capacities
execute if score #time_capacity_bonus meta matches 1.. if score #time_capacity meta matches ..10000 run function shop/third/update_capacities
