# Macro args: id, name, color, description, trigger
# 영구 이동기는 구매 기록이 없는 경우에만 한 번 결제하고 지급한다.
$execute if score #$(id)_mover unlock matches 1.. run title @s actionbar {text:"이미 영구 구매한 아이템입니다.",color:"yellow",italic:true}
$execute if score #$(id)_mover unlock matches 1.. run return 0

$function item/value/$(id)_cost
execute store result score #item_purchase_cost_check tmp run function resource/check_cost

execute if score #item_purchase_cost_check tmp matches 1 run function resource/take_cost
$execute if score #item_purchase_cost_check tmp matches 1 run function item/give/$(id)_mover
$execute if score #item_purchase_cost_check tmp matches 1 run scoreboard players set #$(id)_mover unlock 1
execute if score #item_purchase_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #item_purchase_cost_check tmp matches 1 run title @s actionbar {text:"아이템을 영구 구매했습니다.",color:"green",italic:false}
$execute if score #item_purchase_cost_check tmp matches 1 run function item/ui/interact_permanent {id:"$(id)",name:"$(name)",color:"$(color)",description:"$(description)",trigger:$(trigger)}
execute if score #item_purchase_cost_check tmp matches 1 run return 1

execute at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
return 0
