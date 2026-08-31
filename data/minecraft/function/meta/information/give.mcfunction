# 입력: #material_add_value tmp
# 초록 발전 트리 완성 보상: 모든 정보 획득량을 2배로 적용합니다.
execute if entity @s[advancements={0_overworld/25_green_time_machine=true}] run scoreboard players operation #material_add_value tmp += #material_add_value tmp
execute if score #material_add_value tmp matches ..0 run return 0

# 지급 직전에 현재 업그레이드 단계로 소지 한도를 다시 계산한다.
function shop/third/update_capacities
function meta/sync

# 요청량 / 소지 지급량 / 보관량을 명시적으로 분리한다.
scoreboard players operation #meta_requested tmp = #material_add_value tmp
scoreboard players operation #meta_wallet_space tmp = #information_capacity meta
scoreboard players operation #meta_wallet_space tmp -= #information_wallet tmp
execute if score #meta_wallet_space tmp matches ..-1 run scoreboard players set #meta_wallet_space tmp 0

scoreboard players operation #meta_to_wallet tmp = #meta_requested tmp
execute if score #meta_to_wallet tmp > #meta_wallet_space tmp run scoreboard players operation #meta_to_wallet tmp = #meta_wallet_space tmp

scoreboard players operation #meta_to_bank tmp = #meta_requested tmp
scoreboard players operation #meta_to_bank tmp -= #meta_to_wallet tmp

# 최초로 2000조각에 도달하면 보관소 상한을 영구 해제한다.
scoreboard players operation #meta_bank_before tmp = #information_bank meta
execute if score #meta_to_bank tmp matches 1.. run scoreboard players operation #information_bank meta += #meta_to_bank tmp
execute if score #information_bank meta matches 2000.. run scoreboard players set #information_bank_unlocked meta 1
execute unless score #information_bank_unlocked meta matches 1.. if score #information_bank meta matches 2001.. run scoreboard players set #information_bank meta 2000
scoreboard players operation #meta_bank_added tmp = #information_bank meta
scoreboard players operation #meta_bank_added tmp -= #meta_bank_before tmp

# 소지 공간에 들어가는 만큼만 실제 아이템으로 지급한다.
execute if score #meta_to_wallet tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_to_wallet tmp
execute if score #meta_to_wallet tmp matches 1.. run function meta/information/give_item with storage data tmp.meta

function meta/sync

# 정보 수량은 이름/수치 모두 같은 자원 색으로 표시한다.
title @s actionbar [{text:"",italic:false},{text:"정보 +",color:"light_purple"},{score:{name:"#meta_requested",objective:"tmp"},color:"light_purple"},{text:"  (소지 +",color:"dark_gray"},{score:{name:"#meta_to_wallet",objective:"tmp"},color:"light_purple"},{text:" / 보관 +",color:"dark_gray"},{score:{name:"#meta_bank_added",objective:"tmp"},color:"light_purple"},{text:")",color:"dark_gray"}]
return 1
