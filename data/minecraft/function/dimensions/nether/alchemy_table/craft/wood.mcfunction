data modify storage data tmp.cost set value [{type:"quartz",amount:30},{type:"gold",amount:3}]
execute store result score #alchemy_cost_check tmp run function resource/check_cost
execute unless score #alchemy_cost_check tmp matches 1 run return 0

scoreboard players remove #quartz material 30
scoreboard players remove #gold material 3
scoreboard players set #material_add_value tmp 600
function resource/add_material/wood
function resource/limit_materials

title @s actionbar "§a결정 발아대§7: 나무 §f64§7개 합성"
execute at @s run playsound minecraft:block.amethyst_block.chime weather @s ~ ~ ~ 0.5 1.4
return 1