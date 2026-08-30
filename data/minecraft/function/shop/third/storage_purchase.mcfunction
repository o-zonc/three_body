# Macro args are forwarded to the UI.
$function shop/third/storage_prepare {id:"$(id)"}
execute unless score #third_lvl tmp matches ..2 run title @s actionbar {text:"이미 최대 단계입니다.",color:"red",italic:true}
execute unless score #third_lvl tmp matches ..2 run return 0
execute store result score #third_cost_check tmp run function resource/check_cost
execute unless score #third_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #third_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #third_cost_check tmp matches 1 run return 0
function resource/cost/take
$scoreboard players add #$(id)_storage_lvl upgrade 1
function shop/third/update_capacities
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$execute if score #GLOBAL current_dim matches 3 run function shop/third/storage_ui {id:"$(id)",name:"$(name)",title:"보관소",color:"$(color)",unit:"$(unit)",bank_max:$(bank_max),trigger:$(trigger),withdraw_trigger:$(withdraw_trigger)}
$execute unless score #GLOBAL current_dim matches 3 run function shop/third/storage_ui {id:"$(id)",name:"$(name)",title:"보관소",color:"$(color)",unit:"$(unit)",bank_max:$(bank_max),trigger:$(trigger),withdraw_trigger:$(withdraw_trigger)}
