# Macro args: id
$function item/value/$(id)_cost
execute store result score #item_purchase_cost_check tmp run function resource/check_cost

execute if score #item_purchase_cost_check tmp matches 1 run function resource/take_cost
$execute if score #item_purchase_cost_check tmp matches 1 run function item/give/$(id)_mover
$execute if score #item_purchase_cost_check tmp matches 1 run scoreboard players set #$(id)_mover unlock 1
execute if score #item_purchase_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #item_purchase_cost_check tmp matches 1 run title @s actionbar "§a아이템을 구매했습니다."
execute if score #item_purchase_cost_check tmp matches 1 run return 1

execute at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
title @s actionbar "§c재료가 부족합니다."
return 0
