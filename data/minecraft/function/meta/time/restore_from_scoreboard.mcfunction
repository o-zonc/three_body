# #time material의 총량을 현재 플레이어의 시간 아이템과 보관소로 복원한다.
# 인벤토리에는 time_capacity만큼 넣고, 초과분은 time_bank에 보관한다.
clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}]
execute if score #time material matches ..0 run scoreboard players set #time material 0

scoreboard players operation #meta_restore_wallet tmp = #time material
execute if score #meta_restore_wallet tmp > #time_capacity meta run scoreboard players operation #meta_restore_wallet tmp = #time_capacity meta

scoreboard players operation #time_bank meta = #time material
scoreboard players operation #time_bank meta -= #meta_restore_wallet tmp
execute if score #time_bank meta matches 500.. run scoreboard players set #time_bank_unlocked meta 1
execute unless score #time_bank_unlocked meta matches 1.. if score #time_bank meta matches 501.. run scoreboard players set #time_bank meta 500

execute if score #meta_restore_wallet tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_restore_wallet tmp
execute if score #meta_restore_wallet tmp matches 1.. run function meta/time/give_item with storage data tmp.meta
return 1
