# 입력: #material_add_value tmp
execute if score #material_add_value tmp matches ..0 run return 0
function meta/sync
scoreboard players operation #meta_wallet_space tmp = #information_capacity meta
scoreboard players operation #meta_wallet_space tmp -= #information_wallet tmp
execute if score #meta_wallet_space tmp matches ..0 run scoreboard players operation #information_bank meta += #material_add_value tmp
execute if score #meta_wallet_space tmp matches ..0 run return run function meta/sync
scoreboard players operation #meta_give tmp = #material_add_value tmp
execute if score #meta_give tmp > #meta_wallet_space tmp run scoreboard players operation #meta_give tmp = #meta_wallet_space tmp
scoreboard players operation #meta_overflow tmp = #material_add_value tmp
scoreboard players operation #meta_overflow tmp -= #meta_give tmp
scoreboard players operation #information_bank meta += #meta_overflow tmp
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_give tmp
function meta/information/give_item with storage data tmp.meta
function meta/sync
title @s actionbar [{text:"정보 +",color:"light_purple"},{score:{name:"#material_add_value",objective:"tmp"},color:"white"}]
return 1
