# #information material의 총량을 현재 플레이어의 정보 아이템과 보관소로 복원한다.
# 인벤토리에는 information_capacity만큼 넣고, 초과분은 information_bank에 보관한다.
clear @s minecraft:amethyst_shard[minecraft:custom_data~{three_body:{meta:"information"}}]
execute if score #information material matches ..0 run scoreboard players set #information material 0

scoreboard players operation #meta_restore_wallet tmp = #information material
execute if score #meta_restore_wallet tmp > #information_capacity meta run scoreboard players operation #meta_restore_wallet tmp = #information_capacity meta

scoreboard players operation #information_bank meta = #information material
scoreboard players operation #information_bank meta -= #meta_restore_wallet tmp
execute if score #information_bank meta matches 2000.. run scoreboard players set #information_bank_unlocked meta 1
execute unless score #information_bank_unlocked meta matches 1.. if score #information_bank meta matches 2001.. run scoreboard players set #information_bank meta 2000

execute if score #meta_restore_wallet tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_restore_wallet tmp
execute if score #meta_restore_wallet tmp matches 1.. run function meta/information/give_item with storage data tmp.meta
return 1
