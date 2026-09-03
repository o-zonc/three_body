function meta/sync
function shop/third/update_capacities
scoreboard players operation #third_information_lvl tmp = #information_storage_lvl upgrade
scoreboard players operation #third_time_lvl tmp = #time_storage_lvl upgrade
scoreboard players operation #third_information_bank_visible tmp = #information_bank meta
execute if score #third_information_bank_visible tmp matches 2001.. run scoreboard players set #third_information_bank_visible tmp 2000
scoreboard players operation #third_time_bank_visible tmp = #time_bank meta
execute if score #third_time_bank_visible tmp matches 1001.. run scoreboard players set #third_time_bank_visible tmp 1000
data modify storage data tmp.third_information_bank_limit set value {text:" / 2000조각",color:"gray"}
data modify storage data tmp.third_time_bank_limit set value {text:" / 1000조각",color:"gray"}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 자원 상점 3층 - 특수 자원 ]",color:"dark_purple",bold:true},{text:"\n\n  • 정보 소지 한도: ",color:"light_purple"},{score:{name:"#information_capacity",objective:"meta"},color:"white"},{text:"조각  (Lv. ",color:"gray"},{score:{name:"#third_information_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n    보관소: ",color:"gray"},{score:{name:"#third_information_bank_visible",objective:"tmp"},color:"light_purple"},{storage:"data",nbt:"tmp.third_information_bank_limit",interpret:true},{text:"\n  • 시간 소지 한도: ",color:"dark_aqua"},{score:{name:"#time_capacity",objective:"meta"},color:"white"},{text:"조각  (Lv. ",color:"gray"},{score:{name:"#third_time_lvl",objective:"tmp"},color:"white"},{text:")",color:"gray"},{text:"\n    보관소: ",color:"gray"},{score:{name:"#third_time_bank_visible",objective:"tmp"},color:"dark_aqua"},{storage:"data",nbt:"tmp.third_time_bank_limit",interpret:true},{text:"\n\n  ※ 정보·시간 보관소와 영구 보존 대상은 문명 정산 후에도 유지됩니다.",color:"dark_gray"},{text:"\n"}]
