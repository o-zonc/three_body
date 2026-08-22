# Macro args: id, name
function meta/sync
$scoreboard players operation #withdraw_space tmp = #$(id)_capacity meta
$scoreboard players operation #withdraw_space tmp -= #$(id)_wallet tmp
execute unless score #withdraw_space tmp matches 1.. run title @s actionbar {text:"이미 소지 한도만큼 가지고 있습니다.",color:"red"}
execute unless score #withdraw_space tmp matches 1.. run return 0
$execute unless score #$(id)_bank meta matches 1.. run title @s actionbar {text:"보관소가 비어 있습니다.",color:"red"}
$execute unless score #$(id)_bank meta matches 1.. run return 0
$scoreboard players operation #withdraw_amount tmp = #$(id)_bank meta
execute if score #withdraw_amount tmp > #withdraw_space tmp run scoreboard players operation #withdraw_amount tmp = #withdraw_space tmp
$scoreboard players operation #$(id)_bank meta -= #withdraw_amount tmp
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #withdraw_amount tmp
$function meta/$(id)/give_item with storage data tmp.meta
function meta/sync
playsound entity.item.pickup weather @s ~ ~ ~ 0.8 1.2
$title @s actionbar [{text:"$(name) 보관소에서 ",color:"gray"},{text:"$(name) ", color:"$(color)"},{score:{name:"#withdraw_amount",objective:"tmp"},color:"$(color)"},{text:"조각",color:"$(color)"},{text:"을 인출했습니다.",color:"gray"}]
$execute if score #GLOBAL current_dim matches 3 run function shop/third/storage_ui {id:"$(id)",name:"$(name)",title:"보관소",color:"$(color)",unit:"$(unit)",bank_max:$(bank_max),trigger:$(trigger),withdraw_trigger:$(withdraw_trigger)}
$execute unless score #GLOBAL current_dim matches 3 run function shop/third/storage_ui {id:"$(id)",name:"$(name)",title:"상점 및 지갑",color:"$(color)",unit:"$(unit)",bank_max:$(bank_max),trigger:$(trigger),withdraw_trigger:$(withdraw_trigger)}
