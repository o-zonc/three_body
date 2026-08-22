# 입력: #material_add_value tmp
execute if score #material_add_value tmp matches ..0 run return 0

# 지급 직전에 현재 업그레이드 단계로 소지 한도를 다시 계산한다.
function shop/third/update_capacities
function meta/sync

# 진입 시점의 실제 소지량/한도를 기록한다.
scoreboard players operation #meta_wallet_before tmp = #information_wallet tmp
scoreboard players operation #meta_capacity_now tmp = #information_capacity meta

# 요청량 / 소지 지급량 / 보관량을 명시적으로 분리한다.
scoreboard players operation #meta_requested tmp = #material_add_value tmp
scoreboard players operation #meta_wallet_space tmp = #information_capacity meta
scoreboard players operation #meta_wallet_space tmp -= #information_wallet tmp
execute if score #meta_wallet_space tmp matches ..-1 run scoreboard players set #meta_wallet_space tmp 0

scoreboard players operation #meta_to_wallet tmp = #meta_requested tmp
execute if score #meta_to_wallet tmp > #meta_wallet_space tmp run scoreboard players operation #meta_to_wallet tmp = #meta_wallet_space tmp

scoreboard players operation #meta_to_bank tmp = #meta_requested tmp
scoreboard players operation #meta_to_bank tmp -= #meta_to_wallet tmp

# 보관소의 진입 전/후 값과 실제 증가량을 각각 기록한다.
scoreboard players operation #meta_bank_before tmp = #information_bank meta
execute if score #meta_to_bank tmp matches 1.. run scoreboard players operation #information_bank meta += #meta_to_bank tmp
execute if score #information_bank meta matches 1001.. run scoreboard players set #information_bank meta 1000
scoreboard players operation #meta_bank_after tmp = #information_bank meta
scoreboard players operation #meta_bank_added tmp = #meta_bank_after tmp
scoreboard players operation #meta_bank_added tmp -= #meta_bank_before tmp

# 소지 공간에 들어가는 만큼만 실제 아이템으로 지급한다.
execute if score #meta_to_wallet tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_to_wallet tmp
execute if score #meta_to_wallet tmp matches 1.. run function meta/information/give_item with storage data tmp.meta

function meta/sync

# 진입 시점의 소지량/한도와 보관소 전후 값을 함께 보여 주어 숨은 상태 변경을 바로 확인한다.
title @s actionbar [{text:"정보 +",color:"light_purple"},{score:{name:"#meta_requested",objective:"tmp"},color:"white"},{text:" | 소지 ",color:"dark_gray"},{score:{name:"#meta_wallet_before",objective:"tmp"},color:"white"},{text:"/",color:"dark_gray"},{score:{name:"#meta_capacity_now",objective:"tmp"},color:"white"},{text:" (+",color:"dark_gray"},{score:{name:"#meta_to_wallet",objective:"tmp"},color:"white"},{text:") | 보관 ",color:"dark_gray"},{score:{name:"#meta_bank_before",objective:"tmp"},color:"white"},{text:"→",color:"dark_gray"},{score:{name:"#meta_bank_after",objective:"tmp"},color:"white"},{text:" (+",color:"dark_gray"},{score:{name:"#meta_bank_added",objective:"tmp"},color:"white"},{text:")",color:"dark_gray"}]
return 1
