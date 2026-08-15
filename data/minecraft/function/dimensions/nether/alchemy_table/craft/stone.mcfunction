execute if score #trial_id trial matches 5 run return 0

data modify storage data tmp.cost set value [{type:"wood",amount:30},{type:"quartz",amount:40},{type:"blaze_powder",amount:2}]
execute store result score #alchemy_cost_check tmp run function product/check_cost
execute unless score #alchemy_cost_check tmp matches 1 run return 0

scoreboard players remove #wood material 30
scoreboard players remove #quartz material 40
scoreboard players remove #blaze_powder material 2
scoreboard players set #material_add_value tmp 600
function product/add_material/stone
function product/limit_materials

title @s actionbar "§a화염 석화대§7: 돌 §f128§7개 합성"
execute at @s run playsound minecraft:block.basalt.break weather @s ~ ~ ~ 0.6 0.7
return 1