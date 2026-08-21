# 입력: #material_add_value tmp
execute if score #material_add_value tmp matches ..0 run return 0
function meta/sync
scoreboard players operation #meta_wallet_space tmp = #time_capacity meta
scoreboard players operation #meta_wallet_space tmp -= #time_wallet tmp
execute if score #meta_wallet_space tmp matches ..0 run scoreboard players operation #time_bank meta += #material_add_value tmp
execute if score #time_bank meta matches 501.. run scoreboard players set #time_bank meta 500
execute if score #meta_wallet_space tmp matches ..0 run return run function meta/sync
scoreboard players operation #meta_give tmp = #material_add_value tmp
execute if score #meta_give tmp > #meta_wallet_space tmp run scoreboard players operation #meta_give tmp = #meta_wallet_space tmp
scoreboard players operation #meta_overflow tmp = #material_add_value tmp
scoreboard players operation #meta_overflow tmp -= #meta_give tmp
scoreboard players operation #time_bank meta += #meta_overflow tmp
execute if score #time_bank meta matches 501.. run scoreboard players set #time_bank meta 500
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_give tmp
function meta/time/give_item with storage data tmp.meta
function meta/sync
title @s actionbar [{text:"시간 +",color:"dark_aqua"},{score:{name:"#material_add_value",objective:"tmp"},color:"white"}]
return 1
